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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_A65C5ED6A1A056815547837E441F939C4EE99116BF268454315AC20D9F2D878E
#define UWVM_ROS_BOUNDED_INTERFACES_A65C5ED6A1A056815547837E441F939C4EE99116BF268454315AC20D9F2D878E
#include <elephant/c/ros1/elephant-mycobot-noetic-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_0 != 0x63e0b7ceUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_1 != 0xfb930cf3UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_2 != 0xa9aebec0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_3 != 0x220917ddUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_4 != 0x2855af55UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_5 != 0x77630d64UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_6 != 0xd95f591eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_7 != 0x9348dad1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_0 0x63e0b7ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_1 0xfb930cf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_2 0xa9aebec0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_3 0x220917ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_4 0x2855af55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_5 0x77630d64UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_6 0xd95f591eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES_7 0x9348dad1UL

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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[52];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 52);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 52 || roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse const* response)
{
    unsigned char input[60];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_encode(response, input + 8, 52, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_0 != 0xbd0296abUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_1 != 0xa7e23614UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_2 != 0x627154adUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_3 != 0xbdd7a9e9UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_4 != 0x7976ecaaUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_5 != 0x0eff27f7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_6 != 0x6c652449UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_7 != 0x3e2ad238UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_0 0xbd0296abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_1 0xa7e23614UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_2 0x627154adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_3 0xbdd7a9e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_4 0x7976ecaaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_5 0x0eff27f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_6 0x6c652449UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS_7 0x3e2ad238UL

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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_0 != 0xf535f23eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_1 != 0x2192f426UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_2 != 0x43f064c9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_3 != 0xd111a271UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_4 != 0x4475bf1eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_5 != 0xadac4494UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_6 != 0xd6aec665UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_7 != 0x5e8189e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_0 0xf535f23eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_1 0x2192f426UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_2 0x43f064c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_3 0xd111a271UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_4 0x4475bf1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_5 0xadac4494UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_6 0xd6aec665UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS_7 0x5e8189e7UL

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
    roswasmc_bounded_1_mybuddy_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest const* request,
                                                                roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mybuddy_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_0 != 0xb1dec26cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_1 != 0x91636210UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_2 != 0x419b32b8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_3 != 0x5f7bea84UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_4 != 0x9b723df9UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_5 != 0x80ee05e1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_6 != 0xd8ffa118UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_7 != 0xefb8aeccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_0 0xb1dec26cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_1 0x91636210UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_2 0x419b32b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_3 0x5f7bea84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_4 0x9b723df9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_5 0x80ee05e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_6 0xd8ffa118UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS_7 0xefb8aeccUL

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
    roswasmc_bounded_1_mybuddy_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest const* request,
                                                             roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_0 != 0xcd8cd98aUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_1 != 0x6cd284ddUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_2 != 0xc47e2a58UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_3 != 0xa4ed069dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_4 != 0x0f086042UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_5 != 0xf788e822UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_6 != 0xcf6c04f8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_7 != 0x9097ff9fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_0 0xcd8cd98aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_1 0x6cd284ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_2 0xc47e2a58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_3 0xa4ed069dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_4 0x0f086042UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_5 0xf788e822UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_6 0xcf6c04f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES_7 0x9097ff9fUL

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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse* response)
{
    unsigned char input[53], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_encode(request, input, 53, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest* request)
{
    unsigned char output[61];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_0 != 0x19584a6bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_1 != 0x21815b5dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_2 != 0x529de371UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_3 != 0xf5bf11f8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_4 != 0xfd305bd9UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_5 != 0x35a7ba05UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_6 != 0xd80fa521UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_7 != 0xfe949170UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_0 0x19584a6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_1 0x21815b5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_2 0x529de371UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_3 0xf5bf11f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_4 0xfd305bd9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_5 0x35a7ba05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_6 0xd80fa521UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS_7 0xfe949170UL

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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mybuddy_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mybuddy_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_0 != 0xadc62009UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_1 != 0x88422bbdUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_2 != 0xf0c4766dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_3 != 0xd446a690UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_4 != 0x8f23ade1UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_5 != 0x8018bfd3UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_6 != 0x2100635cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_7 != 0x63af17fdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_0 0xadc62009UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_1 0x88422bbdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_2 0xf0c4766dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_3 0xd446a690UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_4 0x8f23ade1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_5 0x8018bfd3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_6 0x2100635cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES_7 0x63af17fdUL

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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mecharm_communication_GetAnglesResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_0 != 0x602cb4f0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_1 != 0x52eeaab2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_2 != 0x0cf56cdaUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_3 != 0xeea1d92dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_4 != 0x4a8bd040UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_5 != 0xb500b938UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_6 != 0xf57429a5UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_7 != 0x5336cf54UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_0 0x602cb4f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_1 0x52eeaab2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_2 0x0cf56cdaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_3 0xeea1d92dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_4 0x4a8bd040UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_5 0xb500b938UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_6 0xf57429a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS_7 0x5336cf54UL

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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mecharm_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mecharm_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_0 != 0xe01114deUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_1 != 0x8f5917bfUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_2 != 0x3181be3dUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_3 != 0x90b77725UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_4 != 0x930e267eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_5 != 0xcaef1377UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_6 != 0x4e803a60UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_7 != 0x8657f267UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_0 0xe01114deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_1 0x8f5917bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_2 0x3181be3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_3 0x90b77725UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_4 0x930e267eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_5 0xcaef1377UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_6 0x4e803a60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS_7 0x8657f267UL

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
    roswasmc_bounded_1_mecharm_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mecharm_communication_GripperStatusRequest const* request,
                                                                roswasmc_bounded_1_mecharm_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mecharm_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mecharm_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_GripperStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mecharm_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_0 != 0x8247400fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_1 != 0x27c4e1e2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_2 != 0x53a420c8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_3 != 0xa9d55eb3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_4 != 0xfa9594a3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_5 != 0x5eaaf648UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_6 != 0x94c7af6fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_7 != 0xfcf0d0bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_0 0x8247400fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_1 0x27c4e1e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_2 0x53a420c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_3 0xa9d55eb3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_4 0xfa9594a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_5 0x5eaaf648UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_6 0x94c7af6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS_7 0xfcf0d0bfUL

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
    roswasmc_bounded_1_mecharm_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_mecharm_communication_PumpStatusRequest const* request,
                                                             roswasmc_bounded_1_mecharm_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_PumpStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_mecharm_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_PumpStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_mecharm_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_0 != 0x642c9f3dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_1 != 0x13c43f06UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_2 != 0x17e36aaeUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_3 != 0xb9fa58adUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_4 != 0xe2611e1bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_5 != 0x62dfe966UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_6 != 0x91664063UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_7 != 0x4f2e3f47UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_0 0x642c9f3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_1 0x13c43f06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_2 0x17e36aaeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_3 0xb9fa58adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_4 0xe2611e1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_5 0x62dfe966UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_6 0x91664063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES_7 0x4f2e3f47UL

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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetAnglesResponse* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetAnglesRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mecharm_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_0 != 0xdd8c189bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_1 != 0x55a6969eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_2 != 0x776451d5UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_3 != 0xeb0b3d08UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_4 != 0xfdf8bf59UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_5 != 0x11ea2960UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_6 != 0x984e2dc8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_7 != 0x888f05a4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_0 0xdd8c189bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_1 0x55a6969eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_2 0x776451d5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_3 0xeb0b3d08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_4 0xfdf8bf59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_5 0x11ea2960UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_6 0x984e2dc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS_7 0x888f05a4UL

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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetCoordsResponse* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mecharm_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mecharm_communication_SetCoordsRequest* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_mecharm_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mecharm_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mecharm_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mecharm_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_0 != 0x8fd3a9abUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_1 != 0x75931b02UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_2 != 0x7e9091c0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_3 != 0xc02963caUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_4 != 0x2675db9fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_5 != 0x9bda0f26UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_6 != 0x2794a106UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_7 != 0x67dd15ffUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_0 0x8fd3a9abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_1 0x75931b02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_2 0x7e9091c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_3 0xc02963caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_4 0x2675db9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_5 0x9bda0f26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_6 0x2794a106UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES_7 0x67dd15ffUL

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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_myarm_communication_GetAnglesRequest const* request,
                                                                                    roswasmc_bounded_1_myarm_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[28];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 28);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 28 || roswasmc_bounded_1_myarm_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_myarm_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_myarm_communication_GetAnglesResponse const* response)
{
    unsigned char input[36];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_GetAnglesResponse_encode(response, input + 8, 28, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_0 != 0x8648c0ccUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_1 != 0xaaf4fa1bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_2 != 0x215eb2d7UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_3 != 0x78601ec1UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_4 != 0x6ab5aeeeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_5 != 0x7fa19d67UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_6 != 0x77fa7344UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_7 != 0x7d7de51aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_0 0x8648c0ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_1 0xaaf4fa1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_2 0x215eb2d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_3 0x78601ec1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_4 0x6ab5aeeeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_5 0x7fa19d67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_6 0x77fa7344UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS_7 0x7d7de51aUL

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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_myarm_communication_GetCoordsRequest const* request,
                                                                                    roswasmc_bounded_1_myarm_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_myarm_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_myarm_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_myarm_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_0 != 0x8216d2b6UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_1 != 0xcf6aeb94UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_2 != 0x4dd1b888UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_3 != 0x46f748f9UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_4 != 0x78bdc4eaUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_5 != 0x9cc54093UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_6 != 0x24ed509dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_7 != 0xc3357023UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_0 0x8216d2b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_1 0xcf6aeb94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_2 0x4dd1b888UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_3 0x46f748f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_4 0x78bdc4eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_5 0x9cc54093UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_6 0x24ed509dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS_7 0xc3357023UL

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
    roswasmc_bounded_1_myarm_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_myarm_communication_GripperStatusRequest const* request,
                                                              roswasmc_bounded_1_myarm_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GripperStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_myarm_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_myarm_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_GripperStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_myarm_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_myarm_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_0 != 0x4768c218UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_1 != 0x8df4e07fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_2 != 0x07ad7a0bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_3 != 0x6db3d629UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_4 != 0xfab9cf5aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_5 != 0xf2c42e42UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_6 != 0x8210b8e9UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_7 != 0xbe9f8b10UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_0 0x4768c218UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_1 0x8df4e07fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_2 0x07ad7a0bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_3 0x6db3d629UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_4 0xfab9cf5aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_5 0xf2c42e42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_6 0x8210b8e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS_7 0xbe9f8b10UL

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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_myarm_communication_PumpStatusRequest const* request,
                                                                                     roswasmc_bounded_1_myarm_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_PumpStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_myarm_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_myarm_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_PumpStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_myarm_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_myarm_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_0 != 0xb0b29a7eUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_1 != 0xa6a2bd88UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_2 != 0xd2263d0fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_3 != 0xcf06785bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_4 != 0x99af7c8cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_5 != 0x2db94090UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_6 != 0x1102733fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_7 != 0x6cdfb8bdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_0 0xb0b29a7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_1 0xa6a2bd88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_2 0xd2263d0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_3 0xcf06785bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_4 0x99af7c8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_5 0x2db94090UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_6 0x1102733fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES_7 0x6cdfb8bdUL

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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_myarm_communication_SetAnglesRequest const* request,
                                                                                    roswasmc_bounded_1_myarm_communication_SetAnglesResponse* response)
{
    unsigned char input[29], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_SetAnglesRequest_encode(request, input, 29, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_myarm_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_myarm_communication_SetAnglesRequest* request)
{
    unsigned char output[37];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_myarm_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_0 != 0xc389ec86UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_1 != 0xc7fbb970UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_2 != 0x1a8735cfUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_3 != 0x4f8a570bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_4 != 0xf1f0e4eeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_5 != 0x5e5493adUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_6 != 0xa6aea6fcUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_7 != 0xbfb2d3e4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_0 0xc389ec86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_1 0xc7fbb970UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_2 0x1a8735cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_3 0x4f8a570bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_4 0xf1f0e4eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_5 0x5e5493adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_6 0xa6aea6fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS_7 0xbfb2d3e4UL

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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_myarm_communication_SetCoordsRequest const* request,
                                                                                    roswasmc_bounded_1_myarm_communication_SetCoordsResponse* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_myarm_communication_SetCoordsRequest_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_myarm_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_myarm_communication_SetCoordsRequest* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_myarm_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_myarm_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_myarm_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_myarm_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_myarm_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_myarm_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_0 != 0x04d56695UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_1 != 0x1eaac099UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_2 != 0x16e9be3fUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_3 != 0xbbc3ab42UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_4 != 0xc9f065d2UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_5 != 0x3dc269d3UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_6 != 0x2916364aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_7 != 0xf8b2596cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_0 0x04d56695UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_1 0x1eaac099UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_2 0x16e9be3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_3 0xbbc3ab42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_4 0xc9f065d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_5 0x3dc269d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_6 0x2916364aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES_7 0xf8b2596cUL

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
    roswasmc_bounded_1_mycobot_320_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest const* request,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_0 != 0xe50464e9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_1 != 0xe1bdd374UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_2 != 0x49646432UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_3 != 0x67b708e4UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_4 != 0xe4c8f3e7UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_5 != 0x8afc19f1UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_6 != 0x74e49807UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_7 != 0xc159681aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_0 0xe50464e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_1 0xe1bdd374UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_2 0x49646432UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_3 0x67b708e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_4 0xe4c8f3e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_5 0x8afc19f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_6 0x74e49807UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS_7 0xc159681aUL

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
    roswasmc_bounded_1_mycobot_320_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest const* request,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_0 != 0x77ab15b5UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_1 != 0x66afdf49UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_2 != 0x8c2d072fUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_3 != 0x3eca6ef3UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_4 != 0x556f56e7UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_5 != 0x3838499eUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_6 != 0x6c2e03f7UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_7 != 0x904ff472UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_0 0x77ab15b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_1 0x66afdf49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_2 0x8c2d072fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_3 0x3eca6ef3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_4 0x556f56e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_5 0x3838499eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_6 0x6c2e03f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS_7 0x904ff472UL

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
    roswasmc_bounded_1_mycobot_320_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest const* request,
                                                                    roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_0 != 0xe15f07c4UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_1 != 0x7e60fb5bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_2 != 0xc688bda5UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_3 != 0xc88869aaUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_4 != 0x208378d6UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_5 != 0xa96822e1UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_6 != 0x14303f35UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_7 != 0xc7688db3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_0 0xe15f07c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_1 0x7e60fb5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_2 0xc688bda5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_3 0xc88869aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_4 0x208378d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_5 0xa96822e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_6 0x14303f35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS_7 0xc7688db3UL

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
    roswasmc_bounded_1_mycobot_320_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest const* request,
                                                                 roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_0 != 0x344fb5a9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_1 != 0x276ab585UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_2 != 0x7dee8cdcUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_3 != 0xeeb22d9cUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_4 != 0xa914d776UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_5 != 0xb7fa4ee6UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_6 != 0xe5047599UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_7 != 0xbfff1609UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_0 0x344fb5a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_1 0x276ab585UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_2 0x7dee8cdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_3 0xeeb22d9cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_4 0xa914d776UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_5 0xb7fa4ee6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_6 0xe5047599UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES_7 0xbfff1609UL

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
    roswasmc_bounded_1_mycobot_320_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest const* request,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_0 != 0x7c4e8df2UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_1 != 0x8905099bUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_2 != 0x1b2236ceUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_3 != 0x0b41f4ceUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_4 != 0xaab09771UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_5 != 0x34bd48dbUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_6 != 0xac7e3699UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_7 != 0x8a9a9519UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_0 0x7c4e8df2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_1 0x8905099bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_2 0x1b2236ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_3 0x0b41f4ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_4 0xaab09771UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_5 0x34bd48dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_6 0xac7e3699UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS_7 0x8a9a9519UL

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
    roswasmc_bounded_1_mycobot_320_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest const* request,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_320_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_0 != 0xe2776b2cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_1 != 0x3101c55dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_2 != 0x7dbb57f8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_3 != 0xe68213edUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_4 != 0x54707e7cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_5 != 0x9b19200dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_6 != 0x8079ef62UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_7 != 0x883de45cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_0 0xe2776b2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_1 0x3101c55dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_2 0x7dbb57f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_3 0xe68213edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_4 0x54707e7cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_5 0x9b19200dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_6 0x8079ef62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES_7 0x883de45cUL

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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mycobot_communication_GetAnglesResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_0 != 0x96be981fUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_1 != 0xd77553a7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_2 != 0x4fc7853fUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_3 != 0x25f09086UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_4 != 0xe77bb6caUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_5 != 0xd7ca0f8dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_6 != 0x316e2b75UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_7 != 0xec234310UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_0 0x96be981fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_1 0xd77553a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_2 0x4fc7853fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_3 0x25f09086UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_4 0xe77bb6caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_5 0xd7ca0f8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_6 0x316e2b75UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS_7 0xec234310UL

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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mycobot_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mycobot_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_0 != 0x169fd7b1UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_1 != 0xb1c38684UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_2 != 0x85db0a49UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_3 != 0x3100c3dfUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_4 != 0x4b9f152aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_5 != 0xf6ad4f2aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_6 != 0x85f82399UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_7 != 0x5e10debbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_0 0x169fd7b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_1 0xb1c38684UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_2 0x85db0a49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_3 0x3100c3dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_4 0x4b9f152aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_5 0xf6ad4f2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_6 0x85f82399UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS_7 0x5e10debbUL

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
    roswasmc_bounded_1_mycobot_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* request,
                                                                roswasmc_bounded_1_mycobot_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_0 != 0x740f8cf5UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_1 != 0x4e6ffadcUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_2 != 0x9273af6bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_3 != 0x3fb2f00bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_4 != 0xcbad41f7UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_5 != 0xc2ec5aedUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_6 != 0xa0e2493eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_7 != 0xb89abc9cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_0 0x740f8cf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_1 0x4e6ffadcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_2 0x9273af6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_3 0x3fb2f00bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_4 0xcbad41f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_5 0xc2ec5aedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_6 0xa0e2493eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS_7 0xb89abc9cUL

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
    roswasmc_bounded_1_mycobot_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* request,
                                                             roswasmc_bounded_1_mycobot_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_mycobot_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_mycobot_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_0 != 0x76329860UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_1 != 0xda0f2babUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_2 != 0x287d965dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_3 != 0x6a1b861dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_4 != 0x3c96c0f2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_5 != 0x29daf655UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_6 != 0x67c50e26UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_7 != 0x2301d435UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_0 0x76329860UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_1 0xda0f2babUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_2 0x287d965dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_3 0x6a1b861dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_4 0x3c96c0f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_5 0x29daf655UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_6 0x67c50e26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES_7 0x2301d435UL

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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* request,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetAnglesResponse* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetAnglesRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mycobot_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_0 != 0x516fc063UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_1 != 0x210a3976UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_2 != 0x4872de1cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_3 != 0xff68e382UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_4 != 0x965575a3UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_5 != 0xd0616ed4UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_6 != 0x365b7fafUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_7 != 0xb7b5da63UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_0 0x516fc063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_1 0x210a3976UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_2 0x4872de1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_3 0xff68e382UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_4 0x965575a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_5 0xd0616ed4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_6 0x365b7fafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS_7 0xb7b5da63UL

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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* request,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetCoordsResponse* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_mycobot_communication_SetCoordsRequest* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_mycobot_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_0 != 0xed067d12UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_1 != 0xe8bfc206UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_2 != 0x852b945eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_3 != 0x8f39fab2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_4 != 0xde190e26UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_5 != 0x2a9480b3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_6 != 0x5ff00cd2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_7 != 0xfc77c668UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_0 0xed067d12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_1 0xe8bfc206UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_2 0x852b945eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_3 0x8f39fab2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_4 0xde190e26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_5 0x2a9480b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_6 0x5ff00cd2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE_7 0xfc77c668UL

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
    roswasmc_bounded_1_mycobot_communication_SetEndType_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest const* request,
                                                             roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetEndType_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetEndType_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_0 != 0xa0186e09UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_1 != 0x50b6010dUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_2 != 0x85c65810UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_3 != 0x90609bf4UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_4 != 0x56c54583UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_5 != 0x33039f20UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_6 != 0x6fcbcef7UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_7 != 0xfd9a8a50UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_0 0xa0186e09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_1 0x50b6010dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_2 0x85c65810UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_3 0x90609bf4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_4 0x56c54583UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_5 0x33039f20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_6 0x6fcbcef7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE_7 0xfd9a8a50UL

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
    roswasmc_bounded_1_mycobot_communication_SetFreshMode_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest const* request,
                                                               roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_communication_SetFreshMode_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetFreshMode_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_0 != 0x19a24e0bUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_1 != 0x91d1c8deUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_2 != 0xf327b086UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_3 != 0x176e79a5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_4 != 0x30e2fcccUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_5 != 0x062a2e32UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_6 != 0xe922c50dUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_7 != 0x1e29f889UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_0 0x19a24e0bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_1 0x91d1c8deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_2 0xf327b086UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_3 0x176e79a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_4 0x30e2fcccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_5 0x062a2e32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_6 0xe922c50dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE_7 0x1e29f889UL

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
    roswasmc_bounded_1_mycobot_communication_SetToolReference_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest const* request,
                                                                   roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse* response)
{
    unsigned char input[24], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetToolReference_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetToolReference_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_0 != 0x18994373UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_1 != 0x1525126eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_2 != 0x5aeaeeb7UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_3 != 0xf700a3a7UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_4 != 0x71d04799UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_5 != 0xff1496a9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_6 != 0x51429279UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_7 != 0x8accf43eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_0 0x18994373UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_1 0x1525126eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_2 0x5aeaeeb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_3 0xf700a3a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_4 0x71d04799UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_5 0xff1496a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_6 0x51429279UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE_7 0x8accf43eUL

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
    roswasmc_bounded_1_mycobot_communication_SetVisionMode_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest const* request,
                                                                roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetVisionMode_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_communication_SetVisionMode_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_0 != 0xf1737e34UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_1 != 0xf9e0d589UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_2 != 0x04c49bc9UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_3 != 0x7a9feea6UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_4 != 0xa9a0ff01UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_5 != 0x9c1d7303UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_6 != 0x1cf8d7b2UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_7 != 0x06e46571UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_0 0xf1737e34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_1 0xf9e0d589UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_2 0x04c49bc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_3 0x7a9feea6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_4 0xa9a0ff01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_5 0x9c1d7303UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_6 0x1cf8d7b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES_7 0x06e46571UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest const* request,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_0 != 0x545bbe7eUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_1 != 0x60c01578UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_2 != 0x8b4c9be6UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_3 != 0x372771f7UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_4 != 0x20a40afcUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_5 != 0x73f9e678UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_6 != 0x78459ea3UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_7 != 0x4d109161UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_0 0x545bbe7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_1 0x60c01578UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_2 0x8b4c9be6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_3 0x372771f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_4 0x20a40afcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_5 0x73f9e678UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_6 0x78459ea3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS_7 0x4d109161UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest const* request,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_0 != 0x3137ee32UL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_1 != 0x7a0304c4UL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_2 != 0x01527179UL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_3 != 0xd6a7611bUL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_4 != 0x355bf216UL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_5 != 0x4af0837fUL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_6 != 0x6547ac6dUL ||                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_7 != 0xa33a4ad3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_0 0x3137ee32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_1 0x7a0304c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_2 0x01527179UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_3 0xd6a7611bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_4 0x355bf216UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_5 0x4af0837fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_6 0x6547ac6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE_7 0xa33a4ad3UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest const* request,
                                                                         roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_0 != 0x18193403UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_1 != 0x814c142fUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_2 != 0xd1d5a916UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_3 != 0x1d7c8b35UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_4 != 0x1934f707UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_5 != 0x48de0eedUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_6 != 0xc63206a3UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_7 != 0xf1d018d1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_0 0x18193403UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_1 0x814c142fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_2 0xd1d5a916UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_3 0x1d7c8b35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_4 0x1934f707UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_5 0x48de0eedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_6 0xc63206a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS_7 0xf1d018d1UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest const* request,
                                                                       roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_0 != 0xfb42b4b5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_1 != 0x6b6853a1UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_2 != 0xc741a0cbUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_3 != 0x8ca1f2b4UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_4 != 0x1a0e5d5bUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_5 != 0xba6d157dUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_6 != 0xf3374a73UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_7 != 0xe5c86c33UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_0 0xfb42b4b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_1 0x6b6853a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_2 0xc741a0cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_3 0x8ca1f2b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_4 0x1a0e5d5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_5 0xba6d157dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_6 0xf3374a73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES_7 0xe5c86c33UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest const* request,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_0 != 0x5006417cUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_1 != 0xf6b7bef8UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_2 != 0x9377f2e6UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_3 != 0x6a5a40faUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_4 != 0xef51dcccUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_5 != 0x028505f3UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_6 != 0x4498cdd5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_7 != 0xa1d31db6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_0 0x5006417cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_1 0xf6b7bef8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_2 0x9377f2e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_3 0x6a5a40faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_4 0xef51dcccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_5 0x028505f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_6 0x4498cdd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS_7 0xa1d31db6UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest const* request,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse* response)
{
    unsigned char input[25], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_0 != 0xbb1d09aeUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_1 != 0xbfbd5674UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_2 != 0x57c7fe74UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_3 != 0xea2fbecdUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_4 != 0xc85fbfffUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_5 != 0xc84796edUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_6 != 0x66b21ad6UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_7 != 0xec90c852UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_0 0xbb1d09aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_1 0xbfbd5674UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_2 0x57c7fe74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_3 0xea2fbecdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_4 0xc85fbfffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_5 0xc84796edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_6 0x66b21ad6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE_7 0xec90c852UL

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
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest const* request,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_0 != 0xdb41e866UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_1 != 0x201ebdb6UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_2 != 0xb43d8a40UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_3 != 0xe60f6964UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_4 != 0xbf7921dfUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_5 != 0xa6a1a649UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_6 != 0x97cec4b8UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_7 != 0x04985662UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_0 0xdb41e866UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_1 0x201ebdb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_2 0xb43d8a40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_3 0xe60f6964UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_4 0xbf7921dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_5 0xa6a1a649UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_6 0x97cec4b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES_7 0x04985662UL

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
    roswasmc_bounded_1_mypalletizer_communication_GetAngles_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* request,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_0 != 0x5acb2233UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_1 != 0xf8c6b3aeUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_2 != 0x79d0ccc8UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_3 != 0x8ca8aa4fUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_4 != 0x1e19026eUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_5 != 0xaaf7549bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_6 != 0x06228d26UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_7 != 0x956a6aa8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_0 0x5acb2233UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_1 0xf8c6b3aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_2 0x79d0ccc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_3 0x8ca8aa4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_4 0x1e19026eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_5 0xaaf7549bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_6 0x06228d26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS_7 0x956a6aa8UL

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
    roswasmc_bounded_1_mypalletizer_communication_GetCoords_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* request,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_0 != 0xad0d9bc4UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_1 != 0x727f8ee4UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_2 != 0x80d32d5bUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_3 != 0x4e3ba5b9UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_4 != 0x6aa3345aUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_5 != 0x65ff84b2UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_6 != 0x6e77f317UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_7 != 0x87a7ffb0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_0 0xad0d9bc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_1 0x727f8ee4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_2 0x80d32d5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_3 0x4e3ba5b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_4 0x6aa3345aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_5 0x65ff84b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_6 0x6e77f317UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS_7 0x87a7ffb0UL

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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* request,
                                                                     roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_0 != 0x8f2f634aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_1 != 0x7b2bc97aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_2 != 0x5a677b11UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_3 != 0xa0054c8dUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_4 != 0xc6bb6263UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_5 != 0xfaaec4d3UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_6 != 0x8c3c2156UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_7 != 0x64c54d11UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_0 0x8f2f634aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_1 0x7b2bc97aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_2 0x5a677b11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_3 0xa0054c8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_4 0xc6bb6263UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_5 0xfaaec4d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_6 0x8c3c2156UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS_7 0x64c54d11UL

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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatus_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* request,
                                                                  roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse* response)
{
    unsigned char input[3], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatus_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatus_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_0 != 0xc6913f3fUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_1 != 0x85bcad0fUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_2 != 0x8e38f799UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_3 != 0x72675530UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_4 != 0x260b983eUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_5 != 0x43d7420bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_6 != 0xc390de94UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_7 != 0x029a7264UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_0 0xc6913f3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_1 0x85bcad0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_2 0x8e38f799UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_3 0x72675530UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_4 0x260b983eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_5 0x43d7420bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_6 0xc390de94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES_7 0x029a7264UL

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
    roswasmc_bounded_1_mypalletizer_communication_SetAngles_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* request,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse* response)
{
    unsigned char input[17], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_0 != 0xf193e240UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_1 != 0x2075045cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_2 != 0x643aba86UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_3 != 0x51215854UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_4 != 0x86801f6bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_5 != 0xdc78b0e3UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_6 != 0xca2abc70UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_7 != 0xdc3cc0f1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_0 0xf193e240UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_1 0x2075045cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_2 0x643aba86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_3 0x51215854UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_4 0x86801f6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_5 0xdc78b0e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_6 0xca2abc70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS_7 0xdc3cc0f1UL

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
    roswasmc_bounded_1_mypalletizer_communication_SetCoords_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* request,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse* response)
{
    unsigned char input[18], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode(request, input, 18, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest* request)
{
    unsigned char output[26];
    roswasmc_result r;
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_0 != 0x9b16b5f8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_1 != 0x7513702eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_2 != 0x4ae6c479UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_3 != 0x8b49f2dbUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_4 != 0xed1a79ddUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_5 != 0x6189be02UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_6 != 0xfa4d41f8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_7 != 0xed91ae65UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_0 0x9b16b5f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_1 0x7513702eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_2 0x4ae6c479UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_3 0x8b49f2dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_4 0xed1a79ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_5 0x6189be02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_6 0xfa4d41f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES_7 0xed91ae65UL

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
    roswasmc_bounded_1_ultraarm_communication_GetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest const* request,
                                                             roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_ultraarm_communication_GetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_0 != 0x92085c2aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_1 != 0xb6ccdd72UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_2 != 0x661ba045UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_3 != 0x4b1361d2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_4 != 0x3fd06139UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_5 != 0xf7dcfc3cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_6 != 0x15fd6e8bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_7 != 0x285f03eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_0 0x92085c2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_1 0xb6ccdd72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_2 0x661ba045UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_3 0x4b1361d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_4 0x3fd06139UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_5 0xf7dcfc3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_6 0x15fd6e8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS_7 0x285f03eaUL

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
    roswasmc_bounded_1_ultraarm_communication_GetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest const* request,
                                                             roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse* response)
{
    unsigned char input[1], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_ultraarm_communication_GetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_0 != 0xf79dac35UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_1 != 0x43369d60UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_2 != 0x3bb83cafUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_3 != 0x58a5cefeUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_4 != 0x56afa730UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_5 != 0x4dad6ba5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_6 != 0xadcc5e6eUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_7 != 0x708ea44cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_0 0xf79dac35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_1 0x43369d60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_2 0x3bb83cafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_3 0x58a5cefeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_4 0x56afa730UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_5 0x4dad6ba5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_6 0xadcc5e6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE_7 0x708ea44cUL

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
    roswasmc_bounded_1_ultraarm_communication_GetGripperValue_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest const* request,
                                                                   roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GetGripperValue_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GetGripperValue_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_0 != 0x8d5af359UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_1 != 0xb2bc397bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_2 != 0x0472ccf5UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_3 != 0x931d741cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_4 != 0x6f1671f2UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_5 != 0x6001c8a2UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_6 != 0xeb9b7153UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_7 != 0x7cd5aa93UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_0 0x8d5af359UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_1 0xb2bc397bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_2 0x0472ccf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_3 0x931d741cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_4 0x6f1671f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_5 0x6001c8a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_6 0xeb9b7153UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS_7 0x7cd5aa93UL

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
    roswasmc_bounded_1_ultraarm_communication_GripperStatus_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest const* request,
                                                                 roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GripperStatus_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_GripperStatus_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_0 != 0x68b17b49UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_1 != 0x21ab41aaUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_2 != 0x05f7bbc3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_3 != 0x8065d05dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_4 != 0xea1eb125UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_5 != 0x68d2ad18UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_6 != 0x409d9babUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_7 != 0x3ebc54a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_0 0x68b17b49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_1 0x21ab41aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_2 0x05f7bbc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_3 0x8065d05dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_4 0xea1eb125UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_5 0x68d2ad18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_6 0x409d9babUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES_7 0x3ebc54a3UL

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
    roswasmc_bounded_1_ultraarm_communication_SetAngles_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest const* request,
                                                             roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse* response)
{
    unsigned char input[20], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_encode(request, input, 20, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_ultraarm_communication_SetAngles_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest* request)
{
    unsigned char output[28];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_SetAngles_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_0 != 0x46589df2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_1 != 0xcdaff70fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_2 != 0xec277217UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_3 != 0x1ee09f2fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_4 != 0x895792beUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_5 != 0xd9778359UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_6 != 0x13bb67f8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_7 != 0xa51127a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_0 0x46589df2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_1 0xcdaff70fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_2 0xec277217UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_3 0x1ee09f2fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_4 0x895792beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_5 0xd9778359UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_6 0x13bb67f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS_7 0xa51127a3UL

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
    roswasmc_bounded_1_ultraarm_communication_SetCoords_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest const* request,
                                                             roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse* response)
{
    unsigned char input[20], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_encode(request, input, 20, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_ultraarm_communication_SetCoords_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest* request)
{
    unsigned char output[28];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_SetCoords_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_0 != 0xc03f7bbcUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_1 != 0x185bc3f2UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_2 != 0xdbb7b84cUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_3 != 0x7ca0912fUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_4 != 0x7ad159faUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_5 != 0x0afbf5a5UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_6 != 0x9f6b5873UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_7 != 0xe90df833UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_0 0xc03f7bbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_1 0x185bc3f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_2 0xdbb7b84cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_3 0x7ca0912fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_4 0x7ad159faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_5 0x0afbf5a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_6 0x9f6b5873UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE_7 0xe90df833UL

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
    roswasmc_bounded_1_ultraarm_communication_SetFreshMode_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest const* request,
                                                                roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_ultraarm_communication_SetFreshMode_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ultraarm_communication_SetFreshMode_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
