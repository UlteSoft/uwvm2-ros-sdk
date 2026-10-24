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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_B116EB72CC445E468406F3D84BDC518F268924A6F9D59D4C730E23DAC2AE495B
#define UWVM_ROS_BOUNDED_INTERFACES_B116EB72CC445E468406F3D84BDC518F268924A6F9D59D4C730E23DAC2AE495B
#include <elephant/c/ros2/elephant-mycobot-foxy-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_0 != 0xffbced1eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_1 != 0x7695948fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_2 != 0x887b2e59UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_3 != 0xb39dddfbUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_4 != 0x85904e00UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_5 != 0x93ec93e2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_6 != 0x9966a246UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_7 != 0xb9451f00UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_0 0xffbced1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_1 0x7695948fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_2 0x887b2e59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_3 0xb39dddfbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_4 0x85904e00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_5 0x93ec93e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_6 0x9966a246UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_7 0xb9451f00UL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request const* request,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_0 != 0x9ad4b2f2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_1 != 0x19243826UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_2 != 0x36c6e5f1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_3 != 0x0b989831UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_4 != 0x88db5858UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_5 != 0x4068f758UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_6 != 0x9760e953UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_7 != 0x6cc7fea9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_0 0x9ad4b2f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_1 0x19243826UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_2 0x36c6e5f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_3 0x0b989831UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_4 0x88db5858UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_5 0x4068f758UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_6 0x9760e953UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_7 0x6cc7fea9UL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request const* request,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_0 != 0xc0bf72b1UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_1 != 0x803771aaUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_2 != 0x11276101UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_3 != 0x9cdcbbe2UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_4 != 0x5f86b76cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_5 != 0xbe4ada06UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_6 != 0x9be52589UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_7 != 0x418d82ceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_0 0xc0bf72b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_1 0x803771aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_2 0x11276101UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_3 0x9cdcbbe2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_4 0x5f86b76cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_5 0xbe4ada06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_6 0x9be52589UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_7 0x418d82ceUL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request const* request,
                                                                 roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_0 != 0xcc2a40dfUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_1 != 0x748b47afUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_2 != 0x7f1f603dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_3 != 0xe8c14825UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_4 != 0x8880d808UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_5 != 0x15730cddUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_6 != 0xae82c2bcUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_7 != 0xaec92903UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_0 0xcc2a40dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_1 0x748b47afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_2 0x7f1f603dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_3 0xe8c14825UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_4 0x8880d808UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_5 0x15730cddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_6 0xae82c2bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_7 0xaec92903UL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request const* request,
                                                              roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_0 != 0x049c1cc9UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_1 != 0x00ff2adeUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_2 != 0x510142b1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_3 != 0x84977046UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_4 != 0xb02707f5UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_5 != 0x52b0e262UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_6 != 0xa7c9d88fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_7 != 0xad2af793UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_0 0x049c1cc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_1 0x00ff2adeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_2 0x510142b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_3 0x84977046UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_4 0xb02707f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_5 0x52b0e262UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_6 0xa7c9d88fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_7 0xad2af793UL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request const* request,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_0 != 0xd4e994c5UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_1 != 0x8d30c6b8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_2 != 0x962d70d4UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_3 != 0x2f3b9be3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_4 != 0xa6f4df47UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_5 != 0xa70be9b2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_6 != 0xbc3a259dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_7 != 0x4da19afeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_0 0xd4e994c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_1 0x8d30c6b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_2 0x962d70d4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_3 0x2f3b9be3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_4 0xa6f4df47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_5 0xa70be9b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_6 0xbc3a259dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_7 0x4da19afeUL

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
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request const* request,
                                                             roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_0 != 0x670ba3d1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_1 != 0x2a8847cdUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_2 != 0x0c2c6fdfUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_3 != 0xf74bc21aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_4 != 0x771ff03eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_5 != 0xf384a60bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_6 != 0x7b1f5438UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_7 != 0x9c6ea6bdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_0 0x670ba3d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_1 0x2a8847cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_2 0x0c2c6fdfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_3 0xf74bc21aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_4 0x771ff03eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_5 0xf384a60bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_6 0x7b1f5438UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_7 0x9c6ea6bdUL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request const* request,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_0 != 0xea54ab91UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_1 != 0x3f8b6125UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_2 != 0xa8fe8b98UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_3 != 0xd40a2661UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_4 != 0xd8c36f8dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_5 != 0x56d64a3dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_6 != 0xe85fc3dbUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_7 != 0xc42dbdd2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_0 0xea54ab91UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_1 0x3f8b6125UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_2 0xa8fe8b98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_3 0xd40a2661UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_4 0xd8c36f8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_5 0x56d64a3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_6 0xe85fc3dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_7 0xc42dbdd2UL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request const* request,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_0 != 0x03825420UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_1 != 0x7feaf999UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_2 != 0xc723f471UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_3 != 0x27bced8fUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_4 != 0xe619282bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_5 != 0x156fdad4UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_6 != 0x6db5d304UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_7 != 0x1b26cd0aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_0 0x03825420UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_1 0x7feaf999UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_2 0xc723f471UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_3 0x27bced8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_4 0xe619282bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_5 0x156fdad4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_6 0x6db5d304UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_7 0x1b26cd0aUL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request const* request,
                                                                 roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_0 != 0x548352bdUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_1 != 0x05cce16aUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_2 != 0x90642cf6UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_3 != 0x61b9b131UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_4 != 0xda88923dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_5 != 0x04867376UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_6 != 0x36ac81edUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_7 != 0x5635e84bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_0 0x548352bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_1 0x05cce16aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_2 0x90642cf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_3 0x61b9b131UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_4 0xda88923dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_5 0x04867376UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_6 0x36ac81edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_7 0x5635e84bUL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request const* request,
                                                              roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_0 != 0x2641a82dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_1 != 0xdc0bc350UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_2 != 0x8fede661UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_3 != 0x3805dbe4UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_4 != 0xaa21c74eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_5 != 0x5735c244UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_6 != 0x6b3d8b62UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_7 != 0x2dc938e4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_0 0x2641a82dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_1 0xdc0bc350UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_2 0x8fede661UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_3 0x3805dbe4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_4 0xaa21c74eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_5 0x5735c244UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_6 0x6b3d8b62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_7 0x2dc938e4UL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request const* request,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_0 != 0x9bc61b9fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_1 != 0x18028056UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_2 != 0xc918666fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_3 != 0xd1899ef7UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_4 != 0xa1c35432UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_5 != 0x61ecc97dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_6 != 0x3bc16c3cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_7 != 0x5a7ed6e6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_0 0x9bc61b9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_1 0x18028056UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_2 0xc918666fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_3 0xd1899ef7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_4 0xa1c35432UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_5 0x61ecc97dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_6 0x3bc16c3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_7 0x5a7ed6e6UL

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
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request const* request,
                                                             roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_0 != 0x9602d237UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_1 != 0x671b600bUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_2 != 0x3b2971e3UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_3 != 0x4fea8fc4UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_4 != 0xe6254215UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_5 != 0xd941ae88UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_6 != 0x74df53dbUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_7 != 0xf0ce1ea3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_0 0x9602d237UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_1 0x671b600bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_2 0x3b2971e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_3 0x4fea8fc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_4 0xe6254215UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_5 0xd941ae88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_6 0x74df53dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_7 0xf0ce1ea3UL

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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request const* request,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_0 != 0x21586291UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_1 != 0x0fb00de0UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_2 != 0xe565d1bbUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_3 != 0xf3b72e1cUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_4 != 0x7189e149UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_5 != 0x95c6e6e6UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_6 != 0xc93cfc50UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_7 != 0xe7fd9ed1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_0 0x21586291UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_1 0x0fb00de0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_2 0xe565d1bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_3 0xf3b72e1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_4 0x7189e149UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_5 0x95c6e6e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_6 0xc93cfc50UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_7 0xe7fd9ed1UL

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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request const* request,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_0 != 0x6d470507UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_1 != 0x4b11bbf3UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_2 != 0x28fc088dUL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_3 != 0xdeb47057UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_4 != 0xa1b944aeUL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_5 != 0x9341f078UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_6 != 0x86235530UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_7 != 0x4a3f9a7aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_0 0x6d470507UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_1 0x4b11bbf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_2 0x28fc088dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_3 0xdeb47057UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_4 0xa1b944aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_5 0x9341f078UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_6 0x86235530UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_7 0x4a3f9a7aUL

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
static inline roswasmc_result roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request const* request,
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_0 != 0xfd76ab77UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_1 != 0xb92f2528UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_2 != 0x4df188b1UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_3 != 0x38cd228bUL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_4 != 0xe94f9442UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_5 != 0xf2a68978UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_6 != 0xb8390583UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_7 != 0x28f837a4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_0 0xfd76ab77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_1 0xb92f2528UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_2 0x4df188b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_3 0x38cd228bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_4 0xe94f9442UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_5 0xf2a68978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_6 0xb8390583UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_7 0x28f837a4UL

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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request const* request,
                                                                        roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_0 != 0x4ee17cc8UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_1 != 0x98b98594UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_2 != 0x37cd724dUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_3 != 0x90a664d3UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_4 != 0x14ef9c93UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_5 != 0xe3ef0826UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_6 != 0x7e3631ffUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_7 != 0xc858c436UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_0 0x4ee17cc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_1 0x98b98594UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_2 0x37cd724dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_3 0x90a664d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_4 0x14ef9c93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_5 0xe3ef0826UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_6 0x7e3631ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_7 0xc858c436UL

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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request const* request,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_0 != 0x38cd9614UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_1 != 0xf9d9264cUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_2 != 0xe0720546UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_3 != 0xde2fcfdbUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_4 != 0xc6fe6c95UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_5 != 0x240a1422UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_6 != 0xe15fb8cbUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_7 != 0xdd145626UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_0 0x38cd9614UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_1 0xf9d9264cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_2 0xe0720546UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_3 0xde2fcfdbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_4 0xc6fe6c95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_5 0x240a1422UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_6 0xe15fb8cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_7 0xdd145626UL

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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request const* request,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_0 != 0xfa157a81UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_1 != 0x1203f417UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_2 != 0x8c095c3dUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_3 != 0xf920692dUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_4 != 0x7801c913UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_5 != 0x07a2423aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_6 != 0x48a8149bUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_7 != 0x81e852d8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_0 0xfa157a81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_1 0x1203f417UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_2 0x8c095c3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_3 0xf920692dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_4 0x7801c913UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_5 0x07a2423aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_6 0x48a8149bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_7 0x81e852d8UL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request const* request,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_0 != 0xb472f825UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_1 != 0xe87530dfUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_2 != 0xb02c4969UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_3 != 0x951af1caUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_4 != 0x58878baeUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_5 != 0xcaaf6160UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_6 != 0x724fd94fUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_7 != 0x77948a83UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_0 0xb472f825UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_1 0xe87530dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_2 0xb02c4969UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_3 0x951af1caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_4 0x58878baeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_5 0xcaaf6160UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_6 0x724fd94fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_7 0x77948a83UL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request const* request,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_0 != 0x8dd6f68fUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_1 != 0x9d918c62UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_2 != 0xf6d3531fUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_3 != 0x8eb9bb91UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_4 != 0x74007387UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_5 != 0x3ea9f5e0UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_6 != 0xfdadc3d6UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_7 != 0x9c1e3ab7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_0 0x8dd6f68fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_1 0x9d918c62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_2 0xf6d3531fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_3 0x8eb9bb91UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_4 0x74007387UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_5 0x3ea9f5e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_6 0xfdadc3d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_7 0x9c1e3ab7UL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request const* request,
                                                                      roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_0 != 0x99dff040UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_1 != 0xb245fb5cUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_2 != 0x7b191ffaUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_3 != 0xff8568d5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_4 != 0xe8430db7UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_5 != 0x21c2bb12UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_6 != 0x47093e1aUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_7 != 0xc9ddf6f4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_0 0x99dff040UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_1 0xb245fb5cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_2 0x7b191ffaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_3 0xff8568d5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_4 0xe8430db7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_5 0x21c2bb12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_6 0x47093e1aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_7 0xc9ddf6f4UL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request const* request,
                                                                   roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_0 != 0xc10ab2a5UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_1 != 0x0bd4d241UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_2 != 0xc3a7a7f1UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_3 != 0x085a6682UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_4 != 0x1c88d2abUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_5 != 0xfda54e2eUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_6 != 0x19946213UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_7 != 0xf4a4471cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_0 0xc10ab2a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_1 0x0bd4d241UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_2 0xc3a7a7f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_3 0x085a6682UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_4 0x1c88d2abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_5 0xfda54e2eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_6 0x19946213UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_7 0xf4a4471cUL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request const* request,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response* response)
{
    unsigned char input[17], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_0 != 0xb36db502UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_1 != 0x5c4e6b47UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_2 != 0x64ea0066UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_3 != 0x26cc55e5UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_4 != 0xb66a58c2UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_5 != 0x165dd0f3UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_6 != 0x4c10070eUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_7 != 0x3d8042f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_0 0xb36db502UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_1 0x5c4e6b47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_2 0x64ea0066UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_3 0x26cc55e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_4 0xb66a58c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_5 0x165dd0f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_6 0x4c10070eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_7 0x3d8042f0UL

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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request const* request,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response* response)
{
    unsigned char input[17], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
