/**
 * @file bounded_interfaces.h
 * @brief Frame complete original service/action components through existing exact C capabilities.
 * @details Canonical request/response/goal/feedback/result records remain distinct from Runtime
 * ticket/outcome envelopes. The caller opens and grants every alias independently. Keep context, backend,
 * owner, goal table and borrowed component storage live and disjoint until synchronous return; serialize
 * mutation. Validate exact framing, full-width identifiers and whole components before committing output.
 * Idle11 retains pending ownership, denied13 supplies no result and capacity90 does not grow storage. An
 * admitted operation is never replayed. Checked close/revoke reports cleanup separately; local retirement
 * does not establish physical controller completion.
 * @par Action ownership
 * Initialize one existing action bundle with distinct send/cancel-own/feedback/result aliases; cancel-any
 * requires its own explicit grant. No helper creates a host permission, timer or executor.
 */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_CE4F915BCFD9103A67EF0DFF2CC22445ABC40CB6C905DA5322C449A5BD5386B9
#define UWVM_ROS_BOUNDED_INTERFACES_CE4F915BCFD9103A67EF0DFF2CC22445ABC40CB6C905DA5322C449A5BD5386B9
#include <ufactory/c/ros2/ufactory-xarm-ros2-foxy-complete/bounded_records.h>
#include <roswasm/action_bundle.h>
#ifndef UWVM_ROS_BOUNDED_CAP_DESTINATION
# define UWVM_ROS_BOUNDED_CAP_DESTINATION

/** Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller
 * responsibility. */
/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param out Complete original component or local protocol value, with its documented owner and bounds.
 * @param size Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_0 != 0xe0cde48bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_1 != 0x191c3c95UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_2 != 0xff6b3585UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_3 != 0xe2de1398UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_4 != 0x6a341b20UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_5 != 0x72bd4f8dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_6 != 0x83c231ceUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_7 != 0x41428a48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_0 0xe0cde48bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_1 0x191c3c95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_2 0xff6b3585UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_3 0xe2de1398UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_4 0x6a341b20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_5 0x72bd4f8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_6 0x83c231ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_7 0x41428a48UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request const* request,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response* response)
{
    unsigned char input[7], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_encode(request, input, 7, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request* request)
{
    unsigned char output[15];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_0 != 0x9e95a68eUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_1 != 0x0ed16b5cUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_2 != 0xb9e16726UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_3 != 0xd0368913UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_4 != 0x43bceb15UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_5 != 0xceb72a7dUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_6 != 0x233993cdUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_7 != 0xd7d5e535UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_0 0x9e95a68eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_1 0x0ed16b5cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_2 0xb9e16726UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_3 0xd0368913UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_4 0x43bceb15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_5 0xceb72a7dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_6 0x233993cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_7 0xd7d5e535UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request const* request,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response* response)
{
    unsigned char input[6], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_0 != 0x12f96fe1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_1 != 0x72b50070UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_2 != 0x85071b53UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_3 != 0x4f5ec7d6UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_4 != 0x11e02762UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_5 != 0xc6392bc4UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_6 != 0x2d27c374UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_7 != 0x19ed215dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_0 0x12f96fe1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_1 0x72b50070UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_2 0x85071b53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_3 0x4f5ec7d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_4 0x11e02762UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_5 0xc6392bc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_6 0x2d27c374UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_7 0x19ed215dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_Call_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_xarm_msgs_srv_Call_Request const* request,
                                                                         roswasmc_bounded_2_xarm_msgs_srv_Call_Response* response)
{
    unsigned char input[1], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_Call_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_Call_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_Call_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_2_xarm_msgs_srv_Call_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_Call_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_Call_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_Call_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_Call_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_Call_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_Call_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_2_xarm_msgs_srv_Call_Response const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_Call_Response_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_0 != 0x02266ee8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_1 != 0x43282694UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_2 != 0xb01d9c4eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_3 != 0xa0b9d97bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_4 != 0x48b6d813UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_5 != 0x990eeb0aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_6 != 0xda6e3244UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_7 != 0xfbb4beb6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_0 0x02266ee8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_1 0x43282694UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_2 0xb01d9c4eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_3 0xa0b9d97bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_4 0x48b6d813UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_5 0x990eeb0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_6 0xda6e3244UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS_7 0xfbb4beb6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request const* request,
                                                             roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response* response)
{
    unsigned char input[466], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request_encode(request, input, 466, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request* request)
{
    unsigned char output[474];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_0 != 0xc39f00faUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_1 != 0x8d6af112UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_2 != 0xa0e770e3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_3 != 0x3ac68226UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_4 != 0x0a710961UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_5 != 0xf0a30b7eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_6 != 0x77927e07UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_7 != 0x9ec59803UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_0 0xc39f00faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_1 0x8d6af112UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_2 0xa0e770e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_3 0x3ac68226UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_4 0x0a710961UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_5 0xf0a30b7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_6 0x77927e07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_7 0x9ec59803UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response* response)
{
    unsigned char input[149], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_encode(request, input, 149, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request* request)
{
    unsigned char output[157];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_0 != 0x9fda3fb5UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_1 != 0x1132c487UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_2 != 0xf965aeffUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_3 != 0x21d50199UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_4 != 0xb098a6e7UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_5 != 0x4c263bc6UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_6 != 0x2abb58f8UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_7 != 0x606f7fc1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_0 0x9fda3fb5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_1 0x1132c487UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_2 0xf965aeffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_3 0x21d50199UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_4 0xb098a6e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_5 0x4c263bc6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_6 0x2abb58f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_7 0x606f7fc1UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request const* request,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response* response)
{
    unsigned char input[334], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_encode(request, input, 334, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request* request)
{
    unsigned char output[342];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_0 != 0xcc3bc8c3UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_1 != 0x8be79be5UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_2 != 0xbdac6b11UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_3 != 0xd152acadUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_4 != 0x4e25061dUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_5 != 0xd858f802UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_6 != 0x16741655UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_7 != 0x532fc54dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_0 0xcc3bc8c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_1 0x8be79be5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_2 0xbdac6b11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_3 0xd152acadUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_4 0x4e25061dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_5 0xd858f802UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_6 0x16741655UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS_7 0x532fc54dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request const* request,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response* response)
{
    unsigned char input[862], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request_encode(request, input, 862, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request* request)
{
    unsigned char output[870];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_0 != 0x02674347UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_1 != 0xc0c24101UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_2 != 0xf63498edUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_3 != 0x42c1b446UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_4 != 0x559d27acUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_5 != 0xfe331b10UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_6 != 0x1b201745UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_7 != 0xc6e1e096UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_0 0x02674347UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_1 0xc0c24101UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_2 0xf63498edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_3 0x42c1b446UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_4 0x559d27acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_5 0xfe331b10UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_6 0x1b201745UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_7 0xc6e1e096UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response* response)
{
    unsigned char input[528], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_encode(request, input, 528, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request* request)
{
    unsigned char output[536];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_0 != 0xdfeadaa4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_1 != 0x3105e614UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_2 != 0xe1980ab4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_3 != 0x4376c8d6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_4 != 0x3d0f737dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_5 != 0x05dfeb77UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_6 != 0xcee3b38dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_7 != 0xd2da0eb8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_0 0xdfeadaa4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_1 0x3105e614UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_2 0xe1980ab4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_3 0x4376c8d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_4 0x3d0f737dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_5 0x05dfeb77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_6 0xcee3b38dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_7 0xd2da0eb8UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response* response)
{
    unsigned char input[466], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_encode(request, input, 466, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request* request)
{
    unsigned char output[474];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_0 != 0x1aaaa1afUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_1 != 0x51b1600eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_2 != 0x9fc66acaUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_3 != 0xeb47a2e0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_4 != 0x69447b60UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_5 != 0xa096d273UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_6 != 0x0f63880eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_7 != 0x11a45d1bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_0 0x1aaaa1afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_1 0x51b1600eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_2 0x9fc66acaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_3 0xeb47a2e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_4 0x69447b60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_5 0xa096d273UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_6 0x0f63880eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_7 0x11a45d1bUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response* response)
{
    unsigned char input[2], output[266];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 266);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 266 || roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response const* response)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_encode(response, input + 8, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_0 != 0x8d1c9ca0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_1 != 0x9586c63aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_2 != 0xfae8919fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_3 != 0x7961fb0dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_4 != 0x257121b9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_5 != 0x81671d6eUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_6 != 0x7e37c38bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_7 != 0x51c08be0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_0 0x8d1c9ca0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_1 0x9586c63aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_2 0xfae8919fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_3 0x7961fb0dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_4 0x257121b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_5 0x81671d6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_6 0x7e37c38bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_7 0x51c08be0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response* response)
{
    unsigned char input[1], output[330];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 330);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 330 || roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response const* response)
{
    unsigned char input[338];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_encode(response, input + 8, 330, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_0 != 0x87b41969UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_1 != 0x89aa5e1fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_2 != 0x535d9774UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_3 != 0x4041085eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_4 != 0x06cf946fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_5 != 0xee774bf7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_6 != 0x20565b65UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_7 != 0x1ad99029UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_0 0x87b41969UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_1 0x89aa5e1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_2 0x535d9774UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_3 0x4041085eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_4 0x06cf946fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_5 0xee774bf7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_6 0x20565b65UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_7 0x1ad99029UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response* response)
{
    unsigned char input[1], output[266];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 266);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 266 || roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response const* response)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_encode(response, input + 8, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_0 != 0xfa6d4bb9UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_1 != 0x50c4c955UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_2 != 0x89a0b538UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_3 != 0xd66319b4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_4 != 0xde706ebfUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_5 != 0x04c645d0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_6 != 0x15a0adb8UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_7 != 0x72a1578fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_0 0xfa6d4bb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_1 0x50c4c955UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_2 0x89a0b538UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_3 0xd66319b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_4 0xde706ebfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_5 0x04c645d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_6 0x15a0adb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_7 0x72a1578fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request const* request,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response* response)
{
    unsigned char input[1], output[394];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 394);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 394 || roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response const* response)
{
    unsigned char input[402];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_encode(response, input + 8, 394, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_0 != 0x5efb5908UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_1 != 0x763f3a7aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_2 != 0xb595df43UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_3 != 0xb4f58520UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_4 != 0xa29ed89aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_5 != 0xe7992c4fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_6 != 0x94a59e3dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_7 != 0xd13db1beUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_0 0x5efb5908UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_1 0x763f3a7aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_2 0xb595df43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_3 0xb4f58520UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_4 0xa29ed89aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_5 0xe7992c4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_6 0x94a59e3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_7 0xd13db1beUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt16_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response* response)
{
    unsigned char input[1], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_GetInt16_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt16_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_0 != 0x2356c342UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_1 != 0xd3bce063UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_2 != 0x0aaac866UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_3 != 0xb684383fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_4 != 0x750f827bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_5 != 0xf55f90b2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_6 != 0x2dcc3a28UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_7 != 0xb6a4fd0eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_0 0x2356c342UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_1 0xd3bce063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_2 0x0aaac866UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_3 0xb684383fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_4 0x750f827bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_5 0xf55f90b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_6 0x2dcc3a28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_7 0xb6a4fd0eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response* response)
{
    unsigned char input[1], output[330];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 330);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 330 || roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response const* response)
{
    unsigned char input[338];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_encode(response, input + 8, 330, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_0 != 0x40c5cb44UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_1 != 0x2d2d7d8cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_2 != 0x43e4332bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_3 != 0xd25c6a46UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_4 != 0x8f160dbbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_5 != 0xa443a36dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_6 != 0xb0283395UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_7 != 0x41f90a7aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_0 0x40c5cb44UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_1 0x2d2d7d8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_2 0x43e4332bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_3 0xd25c6a46UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_4 0x8f160dbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_5 0xa443a36dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_6 0xb0283395UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_7 0x41f90a7aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt32_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response* response)
{
    unsigned char input[1], output[266];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 266);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 266 || roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_GetInt32_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt32_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response const* response)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_encode(response, input + 8, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_0 != 0x620fac77UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_1 != 0x401482c2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_2 != 0xaeee4d96UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_3 != 0xad609a5bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_4 != 0x899a68e2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_5 != 0xbf1089adUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_6 != 0x5f5a9e19UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_7 != 0xad47ca5aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_0 0x620fac77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_1 0x401482c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_2 0xaeee4d96UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_3 0xad609a5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_4 0x899a68e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_5 0xbf1089adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_6 0x5f5a9e19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_7 0xad47ca5aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request const* request,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response* response)
{
    unsigned char input[2], output[266];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 266);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 266 || roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response const* response)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_encode(response, input + 8, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_0 != 0x235e751bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_1 != 0xac754716UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_2 != 0x03d1fdefUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_3 != 0xeb18c824UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_4 != 0x7c6f83b6UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_5 != 0xd7736222UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_6 != 0xcb0e7b15UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_7 != 0x874ec98eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_0 0x235e751bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_1 0xac754716UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_2 0x03d1fdefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_3 0xeb18c824UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_4 0x7c6f83b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_5 0xd7736222UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_6 0xcb0e7b15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_7 0x874ec98eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request const* request,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response* response)
{
    unsigned char input[4107], output[4362];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_encode(request, input, 4107, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4362);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4362 || roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request* request)
{
    unsigned char output[4115];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response const* response)
{
    unsigned char input[4370];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_encode(response, input + 8, 4362, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_0 != 0xbb4a27cfUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_1 != 0xdc914254UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_2 != 0xb899e6caUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_3 != 0xe86d77d1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_4 != 0x9d991ce6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_5 != 0xce371789UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_6 != 0x0a962f99UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_7 != 0xe5865fd5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_0 0xbb4a27cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_1 0xdc914254UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_2 0xb899e6caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_3 0xe86d77d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_4 0x9d991ce6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_5 0xce371789UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_6 0x0a962f99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_7 0xe5865fd5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GripperMove_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response* response)
{
    unsigned char input[9], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GripperMove_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_GripperMove_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_0 != 0xb47eb284UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_1 != 0x7ba9fae5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_2 != 0xec3f8054UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_3 != 0xd3421333UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_4 != 0xf3545b1cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_5 != 0x3f9ed4dcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_6 != 0x43bee2c4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_7 != 0x9d4c5809UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_0 0xb47eb284UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_1 0x7ba9fae5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_2 0xec3f8054UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_3 0xd3421333UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_4 0xf3545b1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_5 0x3f9ed4dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_6 0x43bee2c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_7 0x9d4c5809UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response* response)
{
    unsigned char input[4], output[394];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 394);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 394 || roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response const* response)
{
    unsigned char input[402];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_encode(response, input + 8, 394, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_0 != 0x24035095UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_1 != 0x0e808e9eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_2 != 0xe56ec07fUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_3 != 0x21a2e97bUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_4 != 0x89318161UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_5 != 0xf29c0fa8UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_6 != 0x41c6470dUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_7 != 0x16b9416dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_0 0x24035095UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_1 0x0e808e9eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_2 0xe56ec07fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_3 0x21a2e97bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_4 0x89318161UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_5 0xf29c0fa8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_6 0x41c6470dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN_7 0x16b9416dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request const* request,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response* response)
{
    unsigned char input[2], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_0 != 0x541ea261UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_1 != 0xda50acfbUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_2 != 0x345ff30eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_3 != 0x35059eb0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_4 != 0x5120969cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_5 != 0x05264566UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_6 != 0x54c33db2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_7 != 0x3715302dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_0 0x541ea261UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_1 0xda50acfbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_2 0x345ff30eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_3 0x35059eb0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_4 0x5120969cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_5 0x05264566UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_6 0x54c33db2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS_7 0x3715302dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request const* request,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response* response)
{
    unsigned char input[10], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request_encode(request, input, 10, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request* request)
{
    unsigned char output[18];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_0 != 0xd4c252b5UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_1 != 0xd2968575UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_2 != 0xea00828dUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_3 != 0x0dfdafe8UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_4 != 0x400c72eaUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_5 != 0x2524e5a6UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_6 != 0xcfeb5000UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_7 != 0x95281d3aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_0 0xd4c252b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_1 0xd2968575UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_2 0xea00828dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_3 0x0dfdafe8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_4 0x400c72eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_5 0x2524e5a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_6 0xcfeb5000UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_7 0x95281d3aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request const* request,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response* response)
{
    unsigned char input[2], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_0 != 0x8fe6c096UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_1 != 0x7892ad73UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_2 != 0xda1caffbUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_3 != 0x5446461dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_4 != 0x66769c96UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_5 != 0xfe27c9a7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_6 != 0xd6bcbb9aUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_7 != 0x2913eef2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_0 0x8fe6c096UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_1 0x7892ad73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_2 0xda1caffbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_3 0x5446461dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_4 0x66769c96UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_5 0xfe27c9a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_6 0xd6bcbb9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_7 0x2913eef2UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request const* request,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response* response)
{
    unsigned char input[10], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_encode(request, input, 10, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request* request)
{
    unsigned char output[18];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_0 != 0xa5f2033fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_1 != 0xf7716804UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_2 != 0xb66123deUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_3 != 0xe22d298fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_4 != 0x5a715595UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_5 != 0x9312268bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_6 != 0x5798560bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_7 != 0x71220929UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_0 0xa5f2033fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_1 0xf7716804UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_2 0xb66123deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_3 0xe22d298fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_4 0x5a715595UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_5 0x9312268bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_6 0x5798560bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_7 0x71220929UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request const* request,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response* response)
{
    unsigned char input[156], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_encode(request, input, 156, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request* request)
{
    unsigned char output[164];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_0 != 0xeb2b3fa0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_1 != 0x07c3d902UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_2 != 0x190553bcUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_3 != 0x4cf7717cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_4 != 0x2ef6d7bcUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_5 != 0x8fa0c873UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_6 != 0x5fc8b9cfUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_7 != 0x22e0d0d7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_0 0xeb2b3fa0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_1 0x07c3d902UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_2 0x190553bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_3 0x4cf7717cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_4 0x2ef6d7bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_5 0x8fa0c873UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_6 0x5fc8b9cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_7 0x22e0d0d7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response* response)
{
    unsigned char input[287], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_encode(request, input, 287, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request* request)
{
    unsigned char output[295];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_0 != 0x885bf253UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_1 != 0x67946637UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_2 != 0xc7b27390UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_3 != 0x3ad0ec2cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_4 != 0xadf72033UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_5 != 0x27bca6edUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_6 != 0xa3a485cfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_7 != 0x395c6741UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_0 0x885bf253UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_1 0x67946637UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_2 0xc7b27390UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_3 0x3ad0ec2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_4 0xadf72033UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_5 0x27bca6edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_6 0xa3a485cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_7 0x395c6741UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveHome_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response* response)
{
    unsigned char input[17], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_MoveHome_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveHome_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_0 != 0x4b4edfadUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_1 != 0x979463c2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_2 != 0x3c6a474fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_3 != 0x5198d811UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_4 != 0x38208319UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_5 != 0x7520017cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_6 != 0xe917dac4UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_7 != 0xdeb5e7daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_0 0x4b4edfadUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_1 0x979463c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_2 0x3c6a474fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_3 0x5198d811UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_4 0x38208319UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_5 0x7520017cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_6 0xe917dac4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_7 0xdeb5e7daUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request const* request,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response* response)
{
    unsigned char input[154], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_encode(request, input, 154, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request* request)
{
    unsigned char output[162];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_0 != 0x5a65dc74UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_1 != 0x60d4cbf9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_2 != 0xdd3f10dcUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_3 != 0x97928763UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_4 != 0x6ef3ba8fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_5 != 0x1436645aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_6 != 0xeb634cf9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_7 != 0x31fc39a9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_0 0x5a65dc74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_1 0x60d4cbf9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_2 0xdd3f10dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_3 0x97928763UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_4 0x6ef3ba8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_5 0x1436645aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_6 0xeb634cf9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_7 0x31fc39a9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response* response)
{
    unsigned char input[138], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_encode(request, input, 138, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request* request)
{
    unsigned char output[146];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_0 != 0xe9775cc8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_1 != 0x556c0cddUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_2 != 0x05cb1d08UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_3 != 0xd6ccb007UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_4 != 0x3cbcaff4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_5 != 0xc4826eefUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_6 != 0xf869c9b0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_7 != 0xe607e02bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_0 0xe9775cc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_1 0x556c0cddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_2 0x05cb1d08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_3 0xd6ccb007UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_4 0x3cbcaff4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_5 0xc4826eefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_6 0xf869c9b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_7 0xe607e02bUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanExec_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_PlanExec_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanExec_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_0 != 0x53e4ee18UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_1 != 0x0daf757cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_2 != 0xd358ed3fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_3 != 0xbc58a77eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_4 != 0x7df33a64UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_5 != 0xdfd52be8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_6 != 0xa0e80ebaUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_7 != 0x9e46cbe5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_0 0x53e4ee18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_1 0x0daf757cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_2 0xd358ed3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_3 0xbc58a77eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_4 0x7df33a64UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_5 0xdfd52be8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_6 0xa0e80ebaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_7 0x9e46cbe5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request const* request,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_0 != 0x0737d4faUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_1 != 0x2927b552UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_2 != 0x5263bed0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_3 != 0xc188865dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_4 != 0xba7cc46eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_5 != 0xc8a1823bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_6 != 0xf5648e12UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_7 != 0x54ba2e15UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_0 0x0737d4faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_1 0x2927b552UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_2 0x5263bed0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_3 0xc188865dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_4 0xba7cc46eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_5 0xc8a1823bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_6 0xf5648e12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_7 0x54ba2e15UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanPose_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response* response)
{
    unsigned char input[56], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_PlanPose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanPose_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_0 != 0x8ba755baUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_1 != 0x5307015fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_2 != 0x05ea8866UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_3 != 0xaad8a736UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_4 != 0xf90aed87UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_5 != 0x83aaaadcUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_6 != 0xbfecd0f7UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_7 != 0xb8762559UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_0 0x8ba755baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_1 0x5307015fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_2 0x05ea8866UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_3 0xaad8a736UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_4 0xf90aed87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_5 0x83aaaadcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_6 0xbfecd0f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_7 0xb8762559UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request const* request,
                                                             roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response* response)
{
    unsigned char input[56], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_0 != 0xa553dc2bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_1 != 0x39a9dc79UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_2 != 0x81a37770UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_3 != 0x117b1183UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_4 != 0x21485caaUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_5 != 0x7621f3c6UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_6 != 0x14deaee6UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_7 != 0xae831e87UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_0 0xa553dc2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_1 0x39a9dc79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_2 0x81a37770UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_3 0x117b1183UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_4 0x21485caaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_5 0x7621f3c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_6 0x14deaee6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_7 0xae831e87UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request const* request,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response* response)
{
    unsigned char input[5], output[4362];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_encode(request, input, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4362);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4362 || roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request* request)
{
    unsigned char output[13];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response const* response)
{
    unsigned char input[4370];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_encode(response, input + 8, 4362, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_0 != 0x03738cbaUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_1 != 0x4d76a732UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_2 != 0xc371e6a4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_3 != 0xd6cfedd0UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_4 != 0x4d1d34fcUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_5 != 0xe7f827e8UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_6 != 0x77b1346aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_7 != 0x5bce42bcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_0 0x03738cbaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_1 0x4d76a732UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_2 0xc371e6a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_3 0xd6cfedd0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_4 0x4d1d34fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_5 0xe7f827e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_6 0x77b1346aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_7 0x5bce42bcUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request const* request,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response* response)
{
    unsigned char input[1], output[4362];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4362);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4362 || roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response const* response)
{
    unsigned char input[4370];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_encode(response, input + 8, 4362, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_0 != 0xf62edb92UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_1 != 0x2af38902UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_2 != 0xcbf3969dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_3 != 0x7f135b98UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_4 != 0x0763604bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_5 != 0x49f3b580UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_6 != 0x24da536aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_7 != 0xdd7f193cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_0 0xf62edb92UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_1 0x2af38902UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_2 0xcbf3969dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_3 0x7f135b98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_4 0x0763604bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_5 0x49f3b580UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_6 0x24da536aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_7 0xdd7f193cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response* response)
{
    unsigned char input[8], output[4362];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4362);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4362 || roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response const* response)
{
    unsigned char input[4370];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_encode(response, input + 8, 4362, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_0 != 0xa0c2ebb0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_1 != 0x80b8c6d0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_2 != 0x50a660d3UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_3 != 0x0ffb5069UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_4 != 0xd7487017UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_5 != 0xd56a0488UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_6 != 0x7a0b4362UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_7 != 0x6500b693UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_0 0xa0c2ebb0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_1 0x80b8c6d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_2 0x50a660d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_3 0x0ffb5069UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_4 0xd7487017UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_5 0xd56a0488UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_6 0x7a0b4362UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_7 0x6500b693UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response* response)
{
    unsigned char input[1], output[4362];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4362);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4362 || roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response const* response)
{
    unsigned char input[4370];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_encode(response, input + 8, 4362, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_0 != 0x007879d7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_1 != 0xe74d1a57UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_2 != 0xc47b5ab3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_3 != 0xebfb52baUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_4 != 0xc99796b4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_5 != 0x7a6ad93eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_6 != 0x44aef7bcUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_7 != 0xf11f0d90UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_0 0x007879d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_1 0xe74d1a57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_2 0xc47b5ab3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_3 0xebfb52baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_4 0xc99796b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_5 0x7a6ad93eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_6 0x44aef7bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_7 0xf11f0d90UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request const* request,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response* response)
{
    unsigned char input[142], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_encode(request, input, 142, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request* request)
{
    unsigned char output[150];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_0 != 0x11882a2bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_1 != 0xe6ef6e0aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_2 != 0x6d47aa16UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_3 != 0x7cdf228eUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_4 != 0x2027fa9dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_5 != 0x6b7484a2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_6 != 0x81fdaacfUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_7 != 0xe3d40386UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_0 0x11882a2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_1 0xe6ef6e0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_2 0x6d47aa16UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_3 0x7cdf228eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_4 0x2027fa9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_5 0x6b7484a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_6 0x81fdaacfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_7 0xe3d40386UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response* response)
{
    unsigned char input[144], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_encode(request, input, 144, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request* request)
{
    unsigned char output[152];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_0 != 0x01d5e3a3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_1 != 0x3e249c29UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_2 != 0x6eaed4c8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_3 != 0xd1de75f9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_4 != 0x9c176b3dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_5 != 0xd68019a1UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_6 != 0x9eb1b439UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_7 != 0x5c1dcef3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_0 0x01d5e3a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_1 0x3e249c29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_2 0x6eaed4c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_3 0xd1de75f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_4 0x9c176b3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_5 0xd68019a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_6 0x9eb1b439UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_7 0x5c1dcef3UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response* response)
{
    unsigned char input[4], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_0 != 0x9afe4366UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_1 != 0xa20a038cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_2 != 0x17c72777UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_3 != 0xd9744085UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_4 != 0x79df5918UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_5 != 0x29410f72UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_6 != 0xd2483945UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_7 != 0x88c66ce6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_0 0x9afe4366UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_1 0xa20a038cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_2 0x17c72777UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_3 0xd9744085UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_4 0x79df5918UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_5 0x29410f72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_6 0xd2483945UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_7 0x88c66ce6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request const* request,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response* response)
{
    unsigned char input[132], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_0 != 0xe6586fbcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_1 != 0x954e5c5bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_2 != 0x941f41e8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_3 != 0x4cd9cf9aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_4 != 0x6fac1b93UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_5 != 0x1d41d559UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_6 != 0x6d12effcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_7 != 0x8ff56214UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_0 0xe6586fbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_1 0x954e5c5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_2 0x941f41e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_3 0x4cd9cf9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_4 0x6fac1b93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_5 0x1d41d559UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_6 0x6d12effcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_7 0x8ff56214UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response* response)
{
    unsigned char input[2], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_0 != 0x0222a039UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_1 != 0xc77f8c88UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_2 != 0x978aa458UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_3 != 0x5fd1dcbfUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_4 != 0xcc142706UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_5 != 0x042f8e61UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_6 != 0xa94cce7aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_7 != 0xcceb566dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_0 0x0222a039UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_1 0xc77f8c88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_2 0x978aa458UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_3 0x5fd1dcbfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_4 0xcc142706UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_5 0x042f8e61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_6 0xa94cce7aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_7 0xcceb566dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response* response)
{
    unsigned char input[4], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_0 != 0xa2368ae2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_1 != 0x20cffbecUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_2 != 0x530bf91aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_3 != 0xeb33f182UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_4 != 0x12ffbaf3UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_5 != 0x497349ebUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_6 != 0x09fdc643UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_7 != 0xc8ef6ae7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_0 0xa2368ae2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_1 0x20cffbecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_2 0x530bf91aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_3 0xeb33f182UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_4 0x12ffbaf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_5 0x497349ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_6 0x09fdc643UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_7 0xc8ef6ae7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request const* request,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response* response)
{
    unsigned char input[68], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_0 != 0x4807ab29UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_1 != 0xa9837a8dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_2 != 0xbe5ebaa5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_3 != 0x1a1bcb62UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_4 != 0xd3baff6cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_5 != 0xfc98dd8aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_6 != 0xf8ffeb18UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_7 != 0x29f32323UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_0 0x4807ab29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_1 0xa9837a8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_2 0xbe5ebaa5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_3 0x1a1bcb62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_4 0xd3baff6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_5 0xfc98dd8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_6 0xf8ffeb18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_7 0x29f32323UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt32_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response* response)
{
    unsigned char input[4], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_SetInt32_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt32_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_0 != 0x4bbd42d6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_1 != 0xbb7aa53aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_2 != 0xb9a07276UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_3 != 0x240a133cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_4 != 0xc40ec5beUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_5 != 0xe9f0ce50UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_6 != 0x35f7e195UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_7 != 0x03d6abefUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_0 0x4bbd42d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_1 0xbb7aa53aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_2 0xb9a07276UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_3 0x240a133cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_4 0xc40ec5beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_5 0xe9f0ce50UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_6 0x35f7e195UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_7 0x03d6abefUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request const* request,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response* response)
{
    unsigned char input[6], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_0 != 0x5068df02UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_1 != 0xa0af9f37UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_2 != 0x04d986e5UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_3 != 0x8365c43bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_4 != 0xe3f56bc4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_5 != 0x4dcc1846UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_6 != 0x5c6f930bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_7 != 0xbf648dacUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_0 0x5068df02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_1 0xa0af9f37UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_2 0x04d986e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_3 0x8365c43bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_4 0xe3f56bc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_5 0x4dcc1846UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_6 0x5c6f930bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_7 0xbf648dacUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request const* request,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response* response)
{
    unsigned char input[5], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_encode(request, input, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request* request)
{
    unsigned char output[13];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_0 != 0xffdb73c3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_1 != 0x1398df49UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_2 != 0x733fe59bUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_3 != 0x321adf5eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_4 != 0x6fb9e642UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_5 != 0x781caea9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_6 != 0xdcd306a5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_7 != 0x2c669969UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_0 0xffdb73c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_1 0x1398df49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_2 0x733fe59bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_3 0x321adf5eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_4 0x6fb9e642UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_5 0x781caea9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_6 0xdcd306a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_7 0x2c669969UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request const* request,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response* response)
{
    unsigned char input[136], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_encode(request, input, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request* request)
{
    unsigned char output[144];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_0 != 0x8aba0c79UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_1 != 0x2f0bed3dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_2 != 0x9c070a47UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_3 != 0xcb815b1dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_4 != 0xad8cf85dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_5 != 0x387882feUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_6 != 0xc8e0b539UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_7 != 0xeb8a359cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_0 0x8aba0c79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_1 0x2f0bed3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_2 0x9c070a47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_3 0xcb815b1dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_4 0xad8cf85dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_5 0x387882feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_6 0xc8e0b539UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_7 0xeb8a359cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response* response)
{
    unsigned char input[264], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_0 != 0xda496d1eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_1 != 0x40543f38UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_2 != 0xd7a79d5dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_3 != 0xca10e461UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_4 != 0xbcb4842eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_5 != 0x55650cdbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_6 != 0xf4da51a9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_7 != 0xbb58bf5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_0 0xda496d1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_1 0x40543f38UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_2 0xd7a79d5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_3 0xca10e461UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_4 0xbcb4842eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_5 0x55650cdbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_6 0xf4da51a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_7 0xbb58bf5dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request const* request,
                                                                             roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response* response)
{
    unsigned char input[265], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_encode(request, input, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request* request)
{
    unsigned char output[273];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_0 != 0xfd0d9e4cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_1 != 0xcb8fd8a1UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_2 != 0x9a2b92ceUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_3 != 0x90117d35UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_4 != 0xd9e883ffUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_5 != 0xe35cd6c6UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_6 != 0xcc4f566dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_7 != 0xa13d6c46UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_0 0xfd0d9e4cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_1 0xcb8fd8a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_2 0x9a2b92ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_3 0x90117d35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_4 0xd9e883ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_5 0xe35cd6c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_6 0xcc4f566dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_7 0xa13d6c46UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request const* request,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response* response)
{
    unsigned char input[13], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_encode(request, input, 13, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request* request)
{
    unsigned char output[21];
    roswasmc_result r;
    roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
