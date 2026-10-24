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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_7CFA7727681389CDCC9DD411095161056823822D518F2C498143A60750525AB2
#define UWVM_ROS_BOUNDED_INTERFACES_7CFA7727681389CDCC9DD411095161056823822D518F2C498143A60750525AB2
#include <dobot/c/ros1/dobot-ros1-demo-v4-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_0 != 0x92246e98UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_1 != 0xd220ff3cUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_2 != 0xfcf0e839UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_3 != 0x1a068c76UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_4 != 0xc71102f2UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_5 != 0x45faf020UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_6 != 0xfbf34b25UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_7 != 0x30e62eb5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_0 0x92246e98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_1 0xd220ff3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_2 0xfcf0e839UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_3 0x1a068c76UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_4 0xc71102f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_5 0x45faf020UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_6 0xfbf34b25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI_7 0x30e62eb5UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AI_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v4_AIRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v4_AIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_AIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_AIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_AIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_AIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_AIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_AIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_0 != 0x18cbf08bUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_1 != 0x87049f60UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_2 != 0x89bf1300UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_3 != 0xb80eb22fUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_4 != 0x29265802UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_5 != 0xa15d1ae8UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_6 != 0x0140220aUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_7 != 0x1e1ffda3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_0 0x18cbf08bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_1 0x87049f60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_2 0x89bf1300UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_3 0xb80eb22fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_4 0x29265802UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_5 0xa15d1ae8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_6 0x0140220aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO_7 0x1e1ffda3UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AO_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v4_AORequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v4_AOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_AORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_AOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_AORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_AORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_AOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_AOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_0 != 0x49cd687fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_1 != 0x9e3b9332UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_2 != 0x47efa3f1UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_3 != 0x7b530191UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_4 != 0x05d1d86cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_5 != 0x42e5a5e4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_6 != 0x8a0cb37bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_7 != 0xc0829767UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_0 0x49cd687fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_1 0x9e3b9332UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_2 0x47efa3f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_3 0x7b530191UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_4 0x05d1d86cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_5 0x42e5a5e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_6 0x8a0cb37bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT_7 0xc0829767UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AOInstant_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_AOInstantRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_AOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_AOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_AOInstantResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AOInstant_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_AOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_AOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AOInstant_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_AOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_AOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_0 != 0x6c5f6f2aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_1 != 0x97f5937eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_2 != 0x34668f01UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_3 != 0x72c144d0UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_4 != 0x195e8713UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_5 != 0x63c6eaf6UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_6 != 0x623d36a4UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_7 != 0xd7111b1eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_0 0x6c5f6f2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_1 0x97f5937eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_2 0x34668f01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_3 0x72c144d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_4 0x195e8713UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_5 0x63c6eaf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_6 0x623d36a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ_7 0xd7111b1eUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AccJ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_AccJRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_AccJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AccJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AccJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_AccJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_AccJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AccJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_AccJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AccJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AccJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_AccJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AccJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_AccJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_AccJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_0 != 0x66b1b92cUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_1 != 0xcf0dbb1aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_2 != 0x00749e71UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_3 != 0x5a17ec58UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_4 != 0xb0f122a2UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_5 != 0xeb178d23UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_6 != 0x778ced7eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_7 != 0xdcdfa549UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_0 0x66b1b92cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_1 0xcf0dbb1aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_2 0x00749e71UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_3 0x5a17ec58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_4 0xb0f122a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_5 0xeb178d23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_6 0x778ced7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL_7 0xdcdfa549UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_AccL_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_AccLRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_AccLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AccLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AccLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_AccLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_AccLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AccL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_AccLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_AccLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_AccLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_AccLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_AccL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_AccLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_AccLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_0 != 0x40dd6d5dUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_1 != 0xeef54bb9UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_2 != 0x64b68dd9UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_3 != 0x5db1fe95UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_4 != 0x1d2042e4UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_5 != 0xd27bc956UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_6 != 0x7359dac1UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_7 != 0x38406da0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_0 0x40dd6d5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_1 0xeef54bb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_2 0x64b68dd9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_3 0x5db1fe95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_4 0x1d2042e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_5 0xd27bc956UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_6 0x7359dac1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC_7 0x38406da0UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Arc_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_rosdemo_v4_ArcRequest const* request,
                                                                     roswasmc_bounded_1_rosdemo_v4_ArcResponse* response)
{
    unsigned char input[4261], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ArcResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ArcResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_ArcRequest_encode(request, input, 4261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ArcResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Arc_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ArcRequest* request)
{
    unsigned char output[4269];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ArcRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ArcRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ArcRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Arc_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ArcResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ArcResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_0 != 0x5aff2872UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_1 != 0xc1a7dbafUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_2 != 0x0182257eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_3 != 0x00fac139UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_4 != 0x0e0399d7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_5 != 0xa95e6ddaUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_6 != 0x975595c1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_7 != 0x9ed2c544UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_0 0x5aff2872UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_1 0xc1a7dbafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_2 0x0182257eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_3 0x00fac139UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_4 0x0e0399d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_5 0xa95e6ddaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_6 0x975595c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL_7 0x9ed2c544UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_BrakeControl_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_BrakeControl_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_BrakeControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_BrakeControl_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_BrakeControlResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_0 != 0x3de77403UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_1 != 0x4e6c1b3bUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_2 != 0xca3a6790UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_3 != 0x2dcc3c29UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_4 != 0x05ddb55bUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_5 != 0x6b4bbb13UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_6 != 0x48d48e3dUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_7 != 0xcaa61e13UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_0 0x3de77403UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_1 0x4e6c1b3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_2 0xca3a6790UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_3 0x2dcc3c29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_4 0x05ddb55bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_5 0x6b4bbb13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_6 0x48d48e3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP_7 0xcaa61e13UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_CP_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v4_CPRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v4_CPResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_CPRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_CPResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_CP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_CPRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_CPRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_CP_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_CPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_CPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_0 != 0xed1f8de1UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_1 != 0xa8652621UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_2 != 0x1a69dc10UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_3 != 0xd9dc759dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_4 != 0x78abe655UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_5 != 0x111b13f7UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_6 != 0x6ad46d40UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_7 != 0x943558d4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_0 0xed1f8de1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_1 0xa8652621UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_2 0x1a69dc10UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_3 0xd9dc759dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_4 0x78abe655UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_5 0x111b13f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_6 0x6ad46d40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL_7 0x943558d4UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_CalcTool_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_CalcToolRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_CalcToolResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CalcToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CalcToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_CalcToolRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_CalcToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_CalcTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_CalcToolRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CalcToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CalcToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_CalcToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_CalcTool_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_CalcToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_CalcToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_0 != 0xdf458bc6UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_1 != 0x207258b0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_2 != 0xcca79507UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_3 != 0x575b19c2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_4 != 0xbd2a920cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_5 != 0xf597d4fcUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_6 != 0xcfd721e5UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_7 != 0x078a1635UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_0 0xdf458bc6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_1 0x207258b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_2 0xcca79507UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_3 0x575b19c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_4 0xbd2a920cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_5 0xf597d4fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_6 0xcfd721e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER_7 0x078a1635UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_CalcUser_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_CalcUserRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_CalcUserResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CalcUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CalcUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_CalcUserRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_CalcUserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_CalcUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_CalcUserRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CalcUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CalcUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_CalcUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_CalcUser_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_CalcUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_CalcUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_0 != 0x87611974UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_1 != 0x04f7061cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_2 != 0x5a7597cbUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_3 != 0xba693aa8UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_4 != 0x26516869UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_5 != 0xfb2c2342UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_6 != 0x11126162UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_7 != 0xa21d8ee9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_0 0x87611974UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_1 0x04f7061cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_2 0x5a7597cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_3 0xba693aa8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_4 0x26516869UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_5 0xfb2c2342UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_6 0x11126162UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE_7 0xa21d8ee9UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Circle_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_CircleRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_CircleResponse* response)
{
    unsigned char input[4265], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CircleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CircleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_CircleRequest_encode(request, input, 4265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_CircleResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Circle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_CircleRequest* request)
{
    unsigned char output[4273];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_CircleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_CircleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_CircleRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Circle_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_CircleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_CircleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_0 != 0x3cfe6fa2UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_1 != 0xd69dc57dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_2 != 0xb79ef756UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_3 != 0x872372a3UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_4 != 0x91f6627bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_5 != 0x115ed281UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_6 != 0xad38ba00UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_7 != 0x11a7bc4eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_0 0x3cfe6fa2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_1 0xd69dc57dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_2 0xb79ef756UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_3 0x872372a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_4 0x91f6627bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_5 0x115ed281UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_6 0xad38ba00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR_7 0x11a7bc4eUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ClearError_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ClearError_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ClearErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ClearError_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ClearErrorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_0 != 0x551876bcUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_1 != 0xb4f7dd15UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_2 != 0xb8858993UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_3 != 0x7bee2b6bUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_4 != 0x4479228eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_5 != 0xe82ebdb8UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_6 != 0xeca0bb29UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_7 != 0x56cdaa39UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_0 0x551876bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_1 0xb4f7dd15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_2 0xb8858993UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_3 0x7bee2b6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_4 0x4479228eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_5 0xe82ebdb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_6 0xeca0bb29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE_7 0x56cdaa39UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Continue_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_ContinueRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_ContinueResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ContinueResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ContinueResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ContinueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ContinueResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Continue_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ContinueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ContinueRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ContinueRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ContinueRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Continue_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_ContinueResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ContinueResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_0 != 0x855e3126UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_1 != 0xb552df62UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_2 != 0x3b164f46UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_3 != 0x51c92e33UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_4 != 0x94dbe5e8UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_5 != 0x3b44f27eUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_6 != 0x1cf23e43UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_7 != 0x1ba976f8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_0 0x855e3126UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_1 0xb552df62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_2 0x3b164f46UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_3 0x51c92e33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_4 0x94dbe5e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_5 0x3b44f27eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_6 0x1cf23e43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI_7 0x1ba976f8UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DI_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v4_DIRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v4_DIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_DIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_DIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_DIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_0 != 0xad032ba5UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_1 != 0x3d7c0b70UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_2 != 0x42fe03fbUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_3 != 0xed139564UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_4 != 0x8c0b57adUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_5 != 0x90f7d94bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_6 != 0xa16b7bc1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_7 != 0x77d12499UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_0 0xad032ba5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_1 0x3d7c0b70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_2 0x42fe03fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_3 0xed139564UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_4 0x8c0b57adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_5 0x90f7d94bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_6 0xa16b7bc1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP_7 0x77d12499UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DIGroup_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_DIGroupRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_DIGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DIGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DIGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_DIGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DIGroupResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DIGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_DIGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DIGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DIGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DIGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DIGroup_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_DIGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DIGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_0 != 0x71dc0300UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_1 != 0x6441ef98UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_2 != 0xbd6b35f5UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_3 != 0x3cafbdf6UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_4 != 0xcd456063UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_5 != 0x541697c6UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_6 != 0x3780aee2UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_7 != 0x11000d4cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_0 0x71dc0300UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_1 0x6441ef98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_2 0xbd6b35f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_3 0x3cafbdf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_4 0xcd456063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_5 0x541697c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_6 0x3780aee2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO_7 0x11000d4cUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DO_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v4_DORequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v4_DOResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_DORequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_DORequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_DOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_0 != 0x3c17054eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_1 != 0xa4bfccf4UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_2 != 0x8785783aUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_3 != 0x58f6c599UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_4 != 0x9cc7539bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_5 != 0xcb2290d9UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_6 != 0xf7523c56UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_7 != 0x50d81084UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_0 0x3c17054eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_1 0xa4bfccf4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_2 0x8785783aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_3 0x58f6c599UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_4 0x9cc7539bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_5 0xcb2290d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_6 0xf7523c56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP_7 0x50d81084UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DOGroup_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_DOGroupRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_DOGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_DOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DOGroupResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DOGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_DOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DOGroup_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_DOGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DOGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_0 != 0x0f34fbeeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_1 != 0xacb3f1a1UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_2 != 0x1d45bc28UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_3 != 0x3d4a51f6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_4 != 0x74a52880UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_5 != 0x2448fd47UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_6 != 0x915bbcecUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_7 != 0x0f83689dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_0 0x0f34fbeeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_1 0xacb3f1a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_2 0x1d45bc28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_3 0x3d4a51f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_4 0x74a52880UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_5 0x2448fd47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_6 0x915bbcecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT_7 0x0f83689dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DOInstant_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_DOInstantRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_DOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_DOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DOInstantResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_DOInstant_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_DOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DOInstant_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_DOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_0 != 0x1f5ce955UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_1 != 0x86a1ecb6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_2 != 0x611b45fbUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_3 != 0xe0995a97UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_4 != 0x42427611UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_5 != 0x0f6a6879UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_6 != 0x3b9f349aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_7 != 0xf49b3d32UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_0 0x1f5ce955UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_1 0x86a1ecb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_2 0x611b45fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_3 0xe0995a97UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_4 0x42427611UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_5 0x0f6a6879UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_6 0x3b9f349aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT_7 0xf49b3d32UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DisableRobot_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DisableRobot_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DisableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DisableRobot_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DisableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_0 != 0x59b67bc4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_1 != 0xdd01e40bUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_2 != 0xdaa13a1dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_3 != 0x85d8ea09UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_4 != 0x0ea4b541UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_5 != 0xd845cc79UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_6 != 0x3c6d2ec2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_7 != 0x6a9f16fbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_0 0x59b67bc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_1 0xdd01e40bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_2 0xdaa13a1dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_3 0x85d8ea09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_4 0x0ea4b541UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_5 0xd845cc79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_6 0x3c6d2ec2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY_7 0x6a9f16fbUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DragSensivity_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DragSensivity_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_DragSensivityRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_DragSensivity_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_DragSensivityResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_0 != 0x9ecaaa3eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_1 != 0x13d4e95fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_2 != 0x06e87d32UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_3 != 0x2456c0beUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_4 != 0x606e21e8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_5 != 0xc884da44UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_6 != 0xe06df621UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_7 != 0x1767e79fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_0 0x9ecaaa3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_1 0x13d4e95fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_2 0x06e87d32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_3 0x2456c0beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_4 0x606e21e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_5 0xc884da44UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_6 0xe06df621UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP_7 0x1767e79fUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EmergencyStop_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EmergencyStop_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_EmergencyStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EmergencyStop_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_EmergencyStopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_0 != 0xf800c8c0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_1 != 0xc6f11eb4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_2 != 0x8ea392b6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_3 != 0x16888f07UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_4 != 0x0204310eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_5 != 0x48ab32fcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_6 != 0xf75f674dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_7 != 0x2b849b64UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_0 0xf800c8c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_1 0xc6f11eb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_2 0x8ea392b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_3 0x16888f07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_4 0x0204310eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_5 0x48ab32fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_6 0xf75f674dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT_7 0x2b849b64UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EnableRobot_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_EnableRobot_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_EnableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EnableRobot_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_EnableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_0 != 0x987a4cddUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_1 != 0xf305babdUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_2 != 0x2fb05b77UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_3 != 0xbf2dd666UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_4 != 0xd90309ffUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_5 != 0x66b362b0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_6 != 0xe8aaab34UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_7 != 0x3bed02b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_0 0x987a4cddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_1 0xf305babdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_2 0x2fb05b77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_3 0xbf2dd666UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_4 0xd90309ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_5 0x66b362b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_6 0xe8aaab34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN_7 0x3bed02b2UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_EnableSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_0 != 0x4ade847eUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_1 != 0x314dd287UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_2 != 0x77cb4063UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_3 != 0xd8d58602UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_4 != 0x13e1de9dUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_5 != 0xfbeb9387UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_6 != 0x1f8bb22fUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_7 != 0xb5d61567UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_0 0x4ade847eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_1 0x314dd287UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_2 0x77cb4063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_3 0xd8d58602UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_4 0x13e1de9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_5 0xfbeb9387UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_6 0x1f8bb22fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO_7 0xb5d61567UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetAO_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_rosdemo_v4_GetAORequest const* request,
                                                                       roswasmc_bounded_1_rosdemo_v4_GetAOResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetAOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetAOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_GetAORequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetAOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetAO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetAORequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetAORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetAORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetAORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetAO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_GetAOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetAOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_0 != 0xabcabc24UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_1 != 0x128e1115UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_2 != 0xb8aace62UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_3 != 0x003ffec3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_4 != 0xb73e0755UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_5 != 0xe4d593b3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_6 != 0x84738dcdUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_7 != 0xe338a996UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_0 0xabcabc24UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_1 0x128e1115UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_2 0xb8aace62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_3 0x003ffec3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_4 0xb73e0755UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_5 0xe4d593b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_6 0x84738dcdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE_7 0xe338a996UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetAngle_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_GetAngleRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_GetAngleResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetAngleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetAngleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetAngleRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetAngleResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetAngle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetAngleRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetAngleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetAngleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetAngleRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetAngle_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetAngleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetAngleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_0 != 0x58988eb2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_1 != 0x91d31882UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_2 != 0xb71bccf9UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_3 != 0xfa54fbceUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_4 != 0x2c1fb16cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_5 != 0x36f4a665UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_6 != 0xeb9a00a1UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_7 != 0xd83e0232UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_0 0x58988eb2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_1 0x91d31882UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_2 0xb71bccf9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_3 0xfa54fbceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_4 0x2c1fb16cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_5 0x36f4a665UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_6 0xeb9a00a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS_7 0xd83e0232UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetCoils_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetCoils_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_0 != 0xed8140a2UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_1 != 0xb3037c16UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_2 != 0xcfff2bcdUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_3 != 0xdd4a0e29UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_4 != 0xd58b9459UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_5 != 0x99ae30ddUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_6 != 0xaaa2bc57UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_7 != 0x6a83f016UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_0 0xed8140a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_1 0xb3037c16UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_2 0xcfff2bcdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_3 0xdd4a0e29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_4 0xd58b9459UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_5 0x99ae30ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_6 0xaaa2bc57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID_7 0x6a83f016UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest const* request,
                                                                                     roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandIdResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_0 != 0x0881bcb1UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_1 != 0x2827fb25UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_2 != 0x9985a1efUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_3 != 0xfa2d52bdUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_4 != 0xa9f1b968UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_5 != 0x04667e4bUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_6 != 0xb330902aUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_7 != 0xc20a1fedUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_0 0x0881bcb1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_1 0x2827fb25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_2 0x9985a1efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_3 0xfa2d52bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_4 0xa9f1b968UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_5 0x04667e4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_6 0xb330902aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO_7 0xc20a1fedUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetDO_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_rosdemo_v4_GetDORequest const* request,
                                                                       roswasmc_bounded_1_rosdemo_v4_GetDOResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_GetDORequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetDOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetDO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetDORequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetDORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetDO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_GetDOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetDOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_0 != 0xe313592dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_1 != 0x4442b477UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_2 != 0x50d41d1dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_3 != 0x61ffca40UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_4 != 0x33dae6d1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_5 != 0x6be0a5dcUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_6 != 0xf6973b40UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_7 != 0x4906b267UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_0 0xe313592dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_1 0x4442b477UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_2 0x50d41d1dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_3 0x61ffca40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_4 0x33dae6d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_5 0x6be0a5dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_6 0xf6973b40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP_7 0x4906b267UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetDOGroup_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetDOGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetDOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetDOGroup_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetDOGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_0 != 0xb4db58b7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_1 != 0x7c163024UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_2 != 0x70ef6131UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_3 != 0x82125cb8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_4 != 0x93b6a1c6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_5 != 0x70b53f5bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_6 != 0x6a65b9c1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_7 != 0x2a891f16UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_0 0xb4db58b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_1 0x7c163024UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_2 0x70ef6131UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_3 0x82125cb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_4 0x93b6a1c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_5 0x70b53f5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_6 0x6a65b9c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID_7 0x2a891f16UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetErrorID_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse* response)
{
    unsigned char input[1], output[72];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 72);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 72 || roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetErrorID_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetErrorIDRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetErrorID_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse const* response)
{
    unsigned char input[80];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetErrorIDResponse_encode(response, input + 8, 72, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_0 != 0x673aa736UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_1 != 0x8d5ce1ddUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_2 != 0xabad50ceUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_3 != 0x6dc6c274UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_4 != 0x18b2c783UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_5 != 0x67e23c59UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_6 != 0xaa4fa83bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_7 != 0x2a28ea84UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_0 0x673aa736UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_1 0x8d5ce1ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_2 0xabad50ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_3 0x6dc6c274UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_4 0x18b2c783UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_5 0x67e23c59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_6 0xaa4fa83bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS_7 0x2a28ea84UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_0 != 0x18ad2597UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_1 != 0x44f570c5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_2 != 0x6d098118UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_3 != 0xf9810822UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_4 != 0x43dded3eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_5 != 0x0fd7f350UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_6 != 0x204c855eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_7 != 0xc758832eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_0 0x18ad2597UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_1 0x44f570c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_2 0x6d098118UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_3 0xf9810822UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_4 0x43dded3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_5 0x0fd7f350UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_6 0x204c855eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS_7 0xc758832eUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInBits_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetInBits_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetInBitsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInBits_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetInBitsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_0 != 0xa4d2f03dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_1 != 0x540d03fcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_2 != 0x164c9989UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_3 != 0x0a5da88bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_4 != 0x085bfd8fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_5 != 0xbccb1bb3UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_6 != 0x218de6a9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_7 != 0x2353dea8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_0 0xa4d2f03dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_1 0x540d03fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_2 0x164c9989UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_3 0x0a5da88bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_4 0x085bfd8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_5 0xbccb1bb3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_6 0x218de6a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS_7 0x2353dea8UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInRegs_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetInRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetInRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInRegs_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetInRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_0 != 0x98108278UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_1 != 0x2a300cedUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_2 != 0xf9e5e2dfUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_3 != 0x905634bdUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_4 != 0x38daf8e1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_5 != 0xbe2db925UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_6 != 0xf24da0d7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_7 != 0xc8ba2c03UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_0 0x98108278UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_1 0x2a300cedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_2 0xf9e5e2dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_3 0x905634bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_4 0x38daf8e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_5 0xbe2db925UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_6 0xf24da0d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL_7 0xc8ba2c03UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputBool_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputBool_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetInputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputBool_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetInputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_0 != 0xe11480d4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_1 != 0x65994cb9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_2 != 0x905287d2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_3 != 0xde0ab273UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_4 != 0x760817afUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_5 != 0x179b109cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_6 != 0xde30785dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_7 != 0xa21fc38bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_0 0xe11480d4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_1 0x65994cb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_2 0x905287d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_3 0xde0ab273UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_4 0x760817afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_5 0x179b109cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_6 0xde30785dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT_7 0xa21fc38bUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputFloat_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputFloat_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetInputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputFloat_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetInputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_0 != 0x19768835UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_1 != 0x01f0ef86UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_2 != 0x5bf6667bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_3 != 0xd34ea676UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_4 != 0x20699672UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_5 != 0x3ef3d755UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_6 != 0xce3a90cbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_7 != 0xf25f5d3bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_0 0x19768835UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_1 0x01f0ef86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_2 0x5bf6667bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_3 0xd34ea676UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_4 0x20699672UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_5 0x3ef3d755UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_6 0xce3a90cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT_7 0xf25f5d3bUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputInt_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetInputInt_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetInputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetInputInt_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetInputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_0 != 0xe0de196aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_1 != 0x541f2d06UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_2 != 0x97e22d7eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_3 != 0x9cd99391UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_4 != 0x96b62712UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_5 != 0x95dbdc3aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_6 != 0xdc8827bdUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_7 != 0x77e8d150UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_0 0xe0de196aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_1 0x541f2d06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_2 0x97e22d7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_3 0x9cd99391UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_4 0x96b62712UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_5 0x95dbdc3aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_6 0xdc8827bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL_7 0x77e8d150UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputBool_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputBool_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputBool_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetOutputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_0 != 0x4393b0deUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_1 != 0xbf5f2e51UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_2 != 0x60084cfaUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_3 != 0xdb1fe171UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_4 != 0xb734eba4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_5 != 0x05a7ed6cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_6 != 0xd523c553UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_7 != 0x61fcc898UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_0 0x4393b0deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_1 0xbf5f2e51UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_2 0x60084cfaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_3 0xdb1fe171UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_4 0xb734eba4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_5 0x05a7ed6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_6 0xd523c553UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT_7 0x61fcc898UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetOutputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_0 != 0xcd0a7a6aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_1 != 0x80acf8f5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_2 != 0xe90a6616UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_3 != 0xfe155404UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_4 != 0x7d14bdc0UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_5 != 0x3775f4c5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_6 != 0x4c31a6d3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_7 != 0x877509eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_0 0xcd0a7a6aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_1 0x80acf8f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_2 0xe90a6616UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_3 0xfe155404UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_4 0x7d14bdc0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_5 0x3775f4c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_6 0x4c31a6d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT_7 0x877509eaUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputInt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputInt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetOutputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetOutputInt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetOutputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_0 != 0x475cc053UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_1 != 0xf5d75129UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_2 != 0xa84a4c12UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_3 != 0x29232d78UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_4 != 0xa72b0093UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_5 != 0xcc88ac2cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_6 != 0x9aad9baeUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_7 != 0xa7b6e391UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_0 0x475cc053UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_1 0xf5d75129UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_2 0xa84a4c12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_3 0x29232d78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_4 0xa72b0093UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_5 0xcc88ac2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_6 0x9aad9baeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE_7 0xa7b6e391UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetPose_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_GetPoseRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_GetPoseResponse* response)
{
    unsigned char input[520], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetPoseRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_rosdemo_v4_GetPoseResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_GetPose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_GetPoseRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetPose_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_GetPoseResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetPoseResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_0 != 0xc885f98aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_1 != 0x15cc3b42UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_2 != 0xea6cdb97UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_3 != 0xf5bc122fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_4 != 0x14160e52UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_5 != 0x86ba6aa9UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_6 != 0x879495d9UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_7 != 0xa16b3fc0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_0 0xc885f98aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_1 0x15cc3b42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_2 0xea6cdb97UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_3 0xf5bc122fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_4 0x14160e52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_5 0x86ba6aa9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_6 0x879495d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE_7 0xa16b3fc0UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetStartPose_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetStartPose_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_GetStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_GetStartPose_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_GetStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_0 != 0x91d1d6e5UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_1 != 0x9b8612ecUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_2 != 0x9b48861aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_3 != 0x8dddf236UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_4 != 0xf9901c76UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_5 != 0x59986799UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_6 != 0x463be7d0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_7 != 0xc9401841UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_0 0x91d1d6e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_1 0x9b8612ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_2 0x9b48861aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_3 0x8dddf236UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_4 0xf9901c76UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_5 0x59986799UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_6 0x463be7d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN_7 0xc9401841UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_InverseKin_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_InverseKinRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_InverseKinResponse* response)
{
    unsigned char input[1088], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_InverseKinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_InverseKinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_InverseKinRequest_encode(request, input, 1088, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_InverseKinResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_InverseKin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_InverseKinRequest* request)
{
    unsigned char output[1096];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_InverseKinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_InverseKinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_InverseKinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_InverseKin_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_InverseKinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_InverseKinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_0 != 0x847ab937UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_1 != 0x61852953UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_2 != 0x3845d748UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_3 != 0x041e8e99UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_4 != 0x0b97c78aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_5 != 0x2d4d3856UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_6 != 0x84b52180UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_7 != 0xe5e28146UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_0 0x847ab937UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_1 0x61852953UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_2 0x3845d748UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_3 0x041e8e99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_4 0x0b97c78aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_5 0x2d4d3856UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_6 0x84b52180UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION_7 0xe5e28146UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_InverseSolution_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_InverseSolution_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_InverseSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_InverseSolution_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_InverseSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_0 != 0x1537df8dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_1 != 0xd04149d3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_2 != 0xe52ffd2aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_3 != 0xeeba2cafUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_4 != 0x7b458143UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_5 != 0x096d54e2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_6 != 0x28193295UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_7 != 0xbe03dd63UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_0 0x1537df8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_1 0xd04149d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_2 0xe52ffd2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_3 0xeeba2cafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_4 0x7b458143UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_5 0x096d54e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_6 0x28193295UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE_7 0xbe03dd63UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Retire explicit owners while preserving the independent primary failure.
 * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
 * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusClose_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Retire explicit owners while preserving the independent primary failure.
 * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
 * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result
    roswasmc_bounded_1_rosdemo_v4_ModbusClose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ModbusCloseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
 * @brief Retire explicit owners while preserving the independent primary failure.
 * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
 * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusClose_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ModbusCloseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_0 != 0xee06b389UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_1 != 0x3d6e726aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_2 != 0x066cdb47UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_3 != 0x1bb173d7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_4 != 0x552ba4bfUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_5 != 0xe8635b34UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_6 != 0x7cffd9c3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_7 != 0x4c86b943UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_0 0xee06b389UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_1 0x3d6e726aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_2 0x066cdb47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_3 0x1bb173d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_4 0x552ba4bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_5 0xe8635b34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_6 0x7cffd9c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE_7 0x4c86b943UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusCreate_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusCreate_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ModbusCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusCreate_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ModbusCreateResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_0 != 0xcf3c6b19UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_1 != 0x99bd8a97UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_2 != 0x21b23802UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_3 != 0xac53b198UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_4 != 0xf8926383UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_5 != 0x22d3e6feUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_6 != 0xe3733be5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_7 != 0x9ba80641UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_0 0xcf3c6b19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_1 0x99bd8a97UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_2 0x21b23802UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_3 0xac53b198UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_4 0xf8926383UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_5 0x22d3e6feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_6 0xe3733be5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE_7 0x9ba80641UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse* response)
{
    unsigned char input[276], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest_encode(request, input, 276, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest* request)
{
    unsigned char output[284];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreateResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_0 != 0x71e37818UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_1 != 0x97c918b0UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_2 != 0x73e5f174UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_3 != 0xc013379fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_4 != 0xa843049eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_5 != 0x51bbe04eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_6 != 0x6b088d81UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_7 != 0xfbe23fd8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_0 0x71e37818UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_1 0x97c918b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_2 0x73e5f174UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_3 0xc013379fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_4 0xa843049eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_5 0x51bbe04eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_6 0x6b088d81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ_7 0xfbe23fd8UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MovJ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_MovJRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_MovJResponse* response)
{
    unsigned char input[4213], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_MovJRequest_encode(request, input, 4213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_MovJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_MovJRequest* request)
{
    unsigned char output[4221];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_MovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_MovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_MovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_0 != 0xcc14c20aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_1 != 0xf9c33577UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_2 != 0x1c39da5fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_3 != 0xc76dcac7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_4 != 0xc28be3e1UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_5 != 0xee3c3f0fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_6 != 0xe6268b17UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_7 != 0xa15d8f30UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_0 0xcc14c20aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_1 0xf9c33577UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_2 0x1c39da5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_3 0xc76dcac7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_4 0xc28be3e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_5 0xee3c3f0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_6 0xe6268b17UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO_7 0xa15d8f30UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MovJIO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_MovJIORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_MovJIOResponse* response)
{
    unsigned char input[8377], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovJIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovJIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_MovJIORequest_encode(request, input, 8377, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_MovJIOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovJIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_MovJIORequest* request)
{
    unsigned char output[8385];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovJIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovJIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_MovJIORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovJIO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_MovJIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_MovJIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_0 != 0xbc8ffcc3UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_1 != 0x1314cfa8UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_2 != 0x780ecb93UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_3 != 0xf05ef0bbUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_4 != 0xb16260bbUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_5 != 0xc3623918UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_6 != 0x88b71208UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_7 != 0x3d544515UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_0 0xbc8ffcc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_1 0x1314cfa8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_2 0x780ecb93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_3 0xf05ef0bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_4 0xb16260bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_5 0xc3623918UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_6 0x88b71208UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL_7 0x3d544515UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MovL_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_MovLRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_MovLResponse* response)
{
    unsigned char input[4213], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_MovLRequest_encode(request, input, 4213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_MovLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_MovLRequest* request)
{
    unsigned char output[4221];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_MovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_MovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_MovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_0 != 0x949f0c35UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_1 != 0xd399eedfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_2 != 0x4d7bd982UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_3 != 0xbd402f62UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_4 != 0x426aa34eUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_5 != 0x01d97836UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_6 != 0x5ea1cb34UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_7 != 0xea2aa8a5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_0 0x949f0c35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_1 0xd399eedfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_2 0x4d7bd982UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_3 0xbd402f62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_4 0x426aa34eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_5 0x01d97836UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_6 0x5ea1cb34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO_7 0xea2aa8a5UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MovLIO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_MovLIORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_MovLIOResponse* response)
{
    unsigned char input[8377], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovLIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovLIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_MovLIORequest_encode(request, input, 8377, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_MovLIOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovLIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_MovLIORequest* request)
{
    unsigned char output[8385];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MovLIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MovLIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_MovLIORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MovLIO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_MovLIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_MovLIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_0 != 0xfb4f81cfUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_1 != 0x0cbae3f0UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_2 != 0x10438872UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_3 != 0x47fc2cffUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_4 != 0x61474a78UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_5 != 0x9da58937UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_6 != 0x5a031295UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_7 != 0x4251e3d4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_0 0xfb4f81cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_1 0x0cbae3f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_2 0x10438872UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_3 0x47fc2cffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_4 0x61474a78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_5 0x9da58937UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_6 0x5a031295UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG_7 0x4251e3d4UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MoveJog_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_MoveJogRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_MoveJogResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_MoveJogRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_MoveJogResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_MoveJog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_MoveJogRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_MoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_MoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_MoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_MoveJog_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_MoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_MoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_0 != 0x86b45873UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_1 != 0x1e0a08e1UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_2 != 0x2bea463eUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_3 != 0xfc22ecd8UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_4 != 0x0905e879UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_5 != 0x2e7957faUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_6 != 0xf5e46a71UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_7 != 0x818175aeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_0 0x86b45873UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_1 0x1e0a08e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_2 0x2bea463eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_3 0xfc22ecd8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_4 0x0905e879UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_5 0x2e7957faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_6 0xf5e46a71UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE_7 0x818175aeUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Pause_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_rosdemo_v4_PauseRequest const* request,
                                                                       roswasmc_bounded_1_rosdemo_v4_PauseResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PauseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PauseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_PauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_PauseResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Pause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_PauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PauseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PauseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_PauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Pause_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_PauseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_PauseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_0 != 0xa39d01c5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_1 != 0xbf366259UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_2 != 0xdced364aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_3 != 0x7ea8d757UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_4 != 0x6ccefd3cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_5 != 0x4fd8f239UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_6 != 0x7be6ec52UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_7 != 0x0cb70219UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_0 0xa39d01c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_1 0xbf366259UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_2 0xdced364aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_3 0x7ea8d757UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_4 0x6ccefd3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_5 0x4fd8f239UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_6 0x7be6ec52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN_7 0x0cb70219UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_PositiveKin_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse* response)
{
    unsigned char input[568], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest_encode(request, input, 568, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_PositiveKin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest* request)
{
    unsigned char output[576];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_PositiveKinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_PositiveKin_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_PositiveKinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_0 != 0x7764c4e5UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_1 != 0x13b1d6e3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_2 != 0x12c08b1eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_3 != 0x57f9e463UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_4 != 0xb3731d08UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_5 != 0x6b332c5bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_6 != 0x9e218834UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_7 != 0xb13d38b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_0 0x7764c4e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_1 0x13b1d6e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_2 0x12c08b1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_3 0x57f9e463UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_4 0xb3731d08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_5 0x6b332c5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_6 0x9e218834UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON_7 0xb13d38b8UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_PowerOn_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_PowerOnRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_PowerOnResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PowerOnResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PowerOnResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_PowerOnRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_PowerOnResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_PowerOn_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_PowerOnRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_PowerOnRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_PowerOnRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_PowerOnRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_PowerOn_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_PowerOnResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_PowerOnResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_0 != 0x9212b0c1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_1 != 0x6686a278UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_2 != 0xe8ed1049UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_3 != 0x559adfa1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_4 != 0x930b6234UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_5 != 0xc2e9d4efUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_6 != 0x0f60c52cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_7 != 0x7d28b19cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_0 0x9212b0c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_1 0x6686a278UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_2 0xe8ed1049UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_3 0x559adfa1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_4 0x930b6234UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_5 0xc2e9d4efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_6 0x0f60c52cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ_7 0x7d28b19cUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RelJointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RelJointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_0 != 0xbcc3c3cfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_1 != 0x76ac5a1bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_2 != 0x7c82a221UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_3 != 0x8daf4b98UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_4 != 0x8e4c78e2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_5 != 0xe9ef6b04UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_6 != 0xc125d53fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_7 != 0x037d74deUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_0 0xbcc3c3cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_1 0x76ac5a1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_2 0x7c82a221UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_3 0x8daf4b98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_4 0x8e4c78e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_5 0xe9ef6b04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_6 0xc125d53fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL_7 0x037d74deUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovJTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RelMovJTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RelMovJToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovJTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RelMovJToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_0 != 0xe95c1e78UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_1 != 0xacd1420dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_2 != 0x95050519UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_3 != 0x6b8d855eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_4 != 0x8782a891UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_5 != 0x492df35cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_6 != 0x53c3ce43UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_7 != 0x30add4f1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_0 0xe95c1e78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_1 0xacd1420dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_2 0x95050519UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_3 0x6b8d855eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_4 0x8782a891UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_5 0x492df35cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_6 0x53c3ce43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER_7 0x30add4f1UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovJUser_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RelMovJUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RelMovJUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovJUser_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RelMovJUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_0 != 0x663d26b1UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_1 != 0x238a6b3dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_2 != 0x0b7a6f93UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_3 != 0xfc6de394UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_4 != 0xa9c8250dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_5 != 0xc17bf00bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_6 != 0x212357b5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_7 != 0x25341456UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_0 0x663d26b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_1 0x238a6b3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_2 0x0b7a6f93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_3 0xfc6de394UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_4 0xa9c8250dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_5 0xc17bf00bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_6 0x212357b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL_7 0x25341456UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovLTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RelMovLTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RelMovLToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovLTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RelMovLToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_0 != 0x65f4b0dbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_1 != 0x55aafaa6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_2 != 0x4d954180UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_3 != 0x051dde8fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_4 != 0x7c99fb94UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_5 != 0x6daccec9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_6 != 0x0532e11eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_7 != 0xc323d34aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_0 0x65f4b0dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_1 0x55aafaa6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_2 0x4d954180UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_3 0x051dde8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_4 0x7c99fb94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_5 0x6daccec9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_6 0x0532e11eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER_7 0xc323d34aUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovLUser_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RelMovLUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RelMovLUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RelMovLUser_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RelMovLUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_0 != 0x23a08f25UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_1 != 0xb206acdfUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_2 != 0x7d2e3ed3UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_3 != 0x090ebb6dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_4 != 0x072bfccbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_5 != 0x95b2eee6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_6 != 0xffac3b80UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_7 != 0xb823ae98UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_0 0x23a08f25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_1 0xb206acdfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_2 0x7d2e3ed3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_3 0x090ebb6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_4 0x072bfccbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_5 0x95b2eee6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_6 0xffac3b80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE_7 0xb823ae98UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RobotMode_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_RobotModeRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_RobotModeResponse* response)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RobotModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RobotModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_rosdemo_v4_RobotModeResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RobotMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RobotModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RobotModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RobotModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RobotMode_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_RobotModeResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RobotModeResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_0 != 0x934b3f38UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_1 != 0xb4c321e4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_2 != 0x78620aaeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_3 != 0x45842034UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_4 != 0xf0d3ee7fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_5 != 0x559b5785UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_6 != 0xed46e9c2UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_7 != 0x3866c9b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_0 0x934b3f38UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_1 0xb4c321e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_2 0x78620aaeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_3 0x45842034UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_4 0xf0d3ee7fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_5 0x559b5785UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_6 0xed46e9c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT_7 0x3866c9b5UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RunScript_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_RunScriptRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_RunScriptResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RunScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RunScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_RunScriptRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_RunScriptResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_RunScript_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_RunScriptRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_RunScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_RunScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_RunScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_RunScript_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_RunScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_RunScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_0 != 0x54bfeb46UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_1 != 0x71f35543UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_2 != 0xe0b8c298UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_3 != 0xe826b339UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_4 != 0xe21bed2fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_5 != 0xc579d4f3UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_6 != 0x4f24151cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_7 != 0x773cfcacUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_0 0x54bfeb46UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_1 0x71f35543UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_2 0xe0b8c298UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_3 0xe826b339UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_4 0xe21bed2fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_5 0xc579d4f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_6 0x4f24151cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ_7 0x773cfcacUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ServoJ_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_ServoJRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_ServoJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ServoJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ServoJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ServoJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ServoJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ServoJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ServoJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ServoJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ServoJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ServoJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ServoJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ServoJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ServoJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_0 != 0x53ac7bf3UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_1 != 0x5eefe2e6UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_2 != 0x25e96413UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_3 != 0x3d6a9dc8UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_4 != 0x196a4c40UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_5 != 0x555633ecUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_6 != 0x0cd48446UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_7 != 0x24ff5022UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_0 0x53ac7bf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_1 0x5eefe2e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_2 0x25e96413UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_3 0x3d6a9dc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_4 0x196a4c40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_5 0x555633ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_6 0x0cd48446UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP_7 0x24ff5022UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ServoP_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_ServoPRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_ServoPResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ServoPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ServoPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ServoPRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ServoPResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ServoP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ServoPRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ServoPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ServoPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ServoPRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ServoP_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ServoPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ServoPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_0 != 0x9f088492UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_1 != 0x407a160eUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_2 != 0x952440e6UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_3 != 0xfeb89972UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_4 != 0xde8bb157UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_5 != 0xa558530dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_6 != 0xa2d96b67UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_7 != 0x401e3ad5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_0 0x9f088492UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_1 0x407a160eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_2 0x952440e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_3 0xfeb89972UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_4 0xde8bb157UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_5 0xa558530dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_6 0xa2d96b67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE_7 0x401e3ad5UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetBackDistance_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetBackDistance_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetBackDistanceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetBackDistance_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetBackDistanceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_0 != 0x1627d27aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_1 != 0x1a3ad13aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_2 != 0xa843a01cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_3 != 0x9c0c1939UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_4 != 0xb9582cafUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_5 != 0x1006ccccUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_6 != 0x2e2bed79UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_7 != 0x3b5ed514UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_0 0x1627d27aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_1 0x1a3ad13aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_2 0xa843a01cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_3 0x9c0c1939UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_4 0xb9582cafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_5 0x1006ccccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_6 0x2e2bed79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS_7 0x3b5ed514UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetCoils_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetCoils_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_0 != 0xa68156a6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_1 != 0xe23749ceUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_2 != 0x00193ea4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_3 != 0x5174f758UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_4 != 0x5150ef7aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_5 != 0x213a4fd4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_6 != 0xdbe782d0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_7 != 0xa7c9cf12UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_0 0xa68156a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_1 0xe23749ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_2 0x00193ea4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_3 0x5174f758UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_4 0x5150ef7aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_5 0x213a4fd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_6 0xdbe782d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL_7 0xa7c9cf12UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest const* request,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetCollisionLevelResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_0 != 0x9c3dc2d2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_1 != 0x0a8b2ec8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_2 != 0x6e163c87UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_3 != 0xf54e0f87UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_4 != 0x720ca212UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_5 != 0xc19785e7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_6 != 0xc823578dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_7 != 0x1dfa1fb7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_0 0x9c3dc2d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_1 0x0a8b2ec8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_2 0x6e163c87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_3 0xf54e0f87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_4 0x720ca212UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_5 0xc19785e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_6 0xc823578dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS_7 0x1dfa1fb7UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse* response)
{
    unsigned char input[532], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest_encode(request, input, 532, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest* request)
{
    unsigned char output[540];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_0 != 0x4f28b3a3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_1 != 0x5eda2a14UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_2 != 0x376f1864UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_3 != 0xf5653caeUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_4 != 0x04fc97d2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_5 != 0x26e6000cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_6 != 0x40b5fecdUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_7 != 0x072343d3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_0 0x4f28b3a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_1 0x5eda2a14UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_2 0x376f1864UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_3 0xf5653caeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_4 0x04fc97d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_5 0x26e6000cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_6 0x40b5fecdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL_7 0x072343d3UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputBool_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputBool_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputBool_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetOutputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_0 != 0xb5e118d3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_1 != 0xc894dcc9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_2 != 0xb92cce9aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_3 != 0x12c135f6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_4 != 0xc608cb6bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_5 != 0x3d5f7035UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_6 != 0x95580a5fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_7 != 0x9d4d017dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_0 0xb5e118d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_1 0xc894dcc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_2 0xb92cce9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_3 0x12c135f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_4 0xc608cb6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_5 0x3d5f7035UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_6 0x95580a5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT_7 0x9d4d017dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetOutputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_0 != 0x0e595662UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_1 != 0x9d115d80UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_2 != 0xcaef4979UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_3 != 0x94421888UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_4 != 0x9759b564UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_5 != 0x63d65be8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_6 != 0x3d4c25b5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_7 != 0x64544d4dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_0 0x0e595662UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_1 0x9d115d80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_2 0xcaef4979UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_3 0x94421888UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_4 0x9759b564UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_5 0x63d65be8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_6 0x3d4c25b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT_7 0x64544d4dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputInt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputInt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetOutputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetOutputInt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetOutputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_0 != 0x261bdd6eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_1 != 0xd0ed5751UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_2 != 0x61e15c76UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_3 != 0x930c2b8aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_4 != 0xf4ba1d7fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_5 != 0xe51ec764UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_6 != 0x68295451UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_7 != 0xf030130bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_0 0x261bdd6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_1 0xd0ed5751UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_2 0x61e15c76UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_3 0x930c2b8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_4 0xf4ba1d7fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_5 0xe51ec764UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_6 0x68295451UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD_7 0xf030130bUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetPayload_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse* response)
{
    unsigned char input[32], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetPayload_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetPayloadRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetPayload_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetPayloadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_0 != 0x161780ddUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_1 != 0x8f76195cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_2 != 0x1cee9656UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_3 != 0xd4aa062bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_4 != 0x47e21109UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_5 != 0xa8cbd598UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_6 != 0xc74f0bf3UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_7 != 0xbbd57a8eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_0 0x161780ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_1 0x8f76195cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_2 0x1cee9656UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_3 0xd4aa062bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_4 0x47e21109UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_5 0xa8cbd598UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_6 0xc74f0bf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE_7 0xbbd57a8eUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest const* request,
                                                                                      roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetPostCollisionModeResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_0 != 0x71e7aaa8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_1 != 0x5510ca42UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_2 != 0xf15054e1UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_3 != 0x78f78cc5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_4 != 0xa2712abaUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_5 != 0x7659bb2bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_6 != 0x9ff0ace2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_7 != 0xe669a9e0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_0 0x71e7aaa8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_1 0x5510ca42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_2 0xf15054e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_3 0x78f78cc5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_4 0xa2712abaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_5 0x7659bb2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_6 0x9ff0ace2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN_7 0xe669a9e0UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_0 != 0xe9541e6dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_1 != 0x07a4a656UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_2 != 0x0a96e05fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_3 != 0x43fbe93dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_4 != 0xfef4b8b3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_5 != 0x229f2bf4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_6 != 0x3d00cf53UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_7 != 0x855c7f28UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_0 0xe9541e6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_1 0x07a4a656UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_2 0x0a96e05fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_3 0x43fbe93dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_4 0xfef4b8b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_5 0x229f2bf4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_6 0x3d00cf53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE_7 0x855c7f28UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest const* request,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnableResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_0 != 0x671155c2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_1 != 0x32470752UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_2 != 0x139b9d06UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_3 != 0xc6f55ebcUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_4 != 0xef9fbf06UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_5 != 0xea23f653UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_6 != 0xa325b53eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_7 != 0x28a865f6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_0 0x671155c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_1 0x32470752UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_2 0x139b9d06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_3 0xc6f55ebcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_4 0xef9fbf06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_5 0xea23f653UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_6 0xa325b53eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL_7 0x28a865f6UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetTool_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_SetToolRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_SetToolResponse* response)
{
    unsigned char input[264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetToolRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetToolRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetTool_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_0 != 0x73591301UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_1 != 0xec7fb3d1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_2 != 0x7ab90c71UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_3 != 0x9afccb66UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_4 != 0x60119ee7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_5 != 0x717da138UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_6 != 0x227fcf3fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_7 != 0xe7deca80UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_0 0x73591301UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_1 0xec7fb3d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_2 0x7ab90c71UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_3 0x9afccb66UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_4 0x60119ee7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_5 0x717da138UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_6 0x227fcf3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485_7 0xe7deca80UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetTool485_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetTool485Request const* request,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetTool485Response* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetTool485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetTool485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetTool485Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetTool485Response_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetTool485_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetTool485Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetTool485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetTool485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetTool485Request_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetTool485_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_SetTool485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetTool485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_0 != 0xbbf14e8fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_1 != 0x850ea572UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_2 != 0x74f630b8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_3 != 0x6a4f162fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_4 != 0xbb5a913bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_5 != 0xc74560adUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_6 != 0x3e6c8061UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_7 != 0xca5e5a3aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_0 0xbbf14e8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_1 0x850ea572UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_2 0x74f630b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_3 0x6a4f162fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_4 0xbb5a913bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_5 0xc74560adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_6 0x3e6c8061UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE_7 0xca5e5a3aUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetToolMode_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetToolMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetToolModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetToolMode_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetToolModeResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_0 != 0xeea5c0adUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_1 != 0x9505eca7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_2 != 0x71d3f4cdUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_3 != 0x62e5c6e5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_4 != 0x03fb534eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_5 != 0x887e18a1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_6 != 0x58ba9747UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_7 != 0xb0322937UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_0 0xeea5c0adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_1 0x9505eca7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_2 0x71d3f4cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_3 0x62e5c6e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_4 0x03fb534eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_5 0x887e18a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_6 0x58ba9747UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER_7 0xb0322937UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetToolPower_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetToolPower_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetToolPowerRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetToolPower_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetToolPowerResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_0 != 0x8d59501eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_1 != 0xa16d8752UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_2 != 0x690fc502UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_3 != 0x6a93b715UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_4 != 0x2ca62672UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_5 != 0xaa229ce3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_6 != 0x0c38c6b4UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_7 != 0xa519a230UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_0 0x8d59501eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_1 0xa16d8752UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_2 0x690fc502UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_3 0x6a93b715UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_4 0x2ca62672UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_5 0xaa229ce3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_6 0x0c38c6b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER_7 0xa519a230UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetUser_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v4_SetUserRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v4_SetUserResponse* response)
{
    unsigned char input[264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SetUserRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SetUserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SetUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SetUserRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SetUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SetUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SetUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SetUser_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v4_SetUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SetUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_0 != 0x4c4942d6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_1 != 0x2c5f3228UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_2 != 0xb0e7e1a0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_3 != 0x13cede73UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_4 != 0xb87f0e01UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_5 != 0xb65c257fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_6 != 0x8476b606UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_7 != 0xa633ed2dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_0 0x4c4942d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_1 0x2c5f3228UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_2 0xb0e7e1a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_3 0x13cede73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_4 0xb87f0e01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_5 0xb65c257fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_6 0x8476b606UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR_7 0xa633ed2dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SpeedFactor_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_SpeedFactor_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_SpeedFactorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_SpeedFactor_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_SpeedFactorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_0 != 0xf92f7224UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_1 != 0x75cf4b11UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_2 != 0x3b0c4e49UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_3 != 0xdab00361UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_4 != 0x12b202a0UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_5 != 0x23083099UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_6 != 0xf6ff70edUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_7 != 0x57c59b5eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_0 0xf92f7224UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_1 0x75cf4b11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_2 0x3b0c4e49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_3 0xdab00361UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_4 0x12b202a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_5 0x23083099UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_6 0xf6ff70edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG_7 0x57c59b5eUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StartDrag_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_StartDragRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_StartDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StartDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StartDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_StartDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_StartDragResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_StartDrag_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_StartDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StartDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StartDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_StartDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StartDrag_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_StartDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_StartDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_0 != 0xcd56580aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_1 != 0x02bf16fcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_2 != 0xf74eaa3dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_3 != 0x64f2b664UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_4 != 0xb98efc4eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_5 != 0x01fdd73bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_6 != 0x380170beUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_7 != 0x22fc450bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_0 0xcd56580aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_1 0x02bf16fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_2 0xf74eaa3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_3 0x64f2b664UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_4 0xb98efc4eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_5 0x01fdd73bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_6 0x380170beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH_7 0x22fc450bUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StartPath_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v4_StartPathRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v4_StartPathResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StartPathResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StartPathResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_StartPathRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_StartPathResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_StartPath_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_StartPathRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StartPathRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StartPathRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_StartPathRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StartPath_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_StartPathResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_StartPathResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_0 != 0x949eea53UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_1 != 0x4037427aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_2 != 0xf760e804UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_3 != 0x8b7f998fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_4 != 0x8381064eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_5 != 0x7acc4225UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_6 != 0xf4ce42a4UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_7 != 0xbe1474d7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_0 0x949eea53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_1 0x4037427aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_2 0xf760e804UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_3 0x8b7f998fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_4 0x8381064eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_5 0x7acc4225UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_6 0xf4ce42a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP_7 0xbe1474d7UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Stop_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_StopRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_StopResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_StopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_StopResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Stop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_StopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_StopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Stop_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_StopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_StopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_0 != 0x1738fa4cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_1 != 0x6842e36fUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_2 != 0x65a6a4b1UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_3 != 0x776218bfUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_4 != 0x5d783ab2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_5 != 0xd439fcc5UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_6 != 0x5a23dc0eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_7 != 0x082380b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_0 0x1738fa4cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_1 0x6842e36fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_2 0x65a6a4b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_3 0x776218bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_4 0x5d783ab2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_5 0xd439fcc5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_6 0x5a23dc0eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG_7 0x082380b8UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StopDrag_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v4_StopDragRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v4_StopDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_StopDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_StopDragResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_StopDrag_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_StopDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_StopDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StopDrag_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v4_StopDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_StopDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_0 != 0x127dba8eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_1 != 0x243cc60fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_2 != 0x5935a104UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_3 != 0xd46de23aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_4 != 0xc013152cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_5 != 0x7934919eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_6 != 0xc5cd2fc8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_7 != 0x5f06200dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_0 0x127dba8eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_1 0x243cc60fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_2 0x5935a104UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_3 0xd46de23aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_4 0xc013152cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_5 0x7934919eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_6 0xc5cd2fc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG_7 0x5f06200dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StopMoveJog_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_StopMoveJog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_StopMoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_StopMoveJog_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_StopMoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_0 != 0xefe9037fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_1 != 0xc240ed63UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_2 != 0x182254afUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_3 != 0x4bb2f628UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_4 != 0x3098b1d9UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_5 != 0x0f0af794UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_6 != 0x8611f2f1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_7 != 0x4b2cc042UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_0 0xefe9037fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_1 0xc240ed63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_2 0x182254afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_3 0x4bb2f628UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_4 0x3098b1d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_5 0x0f0af794UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_6 0x8611f2f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD_7 0x4b2cc042UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_TcpDashboard_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse* response)
{
    unsigned char input[260], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_TcpDashboard_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_TcpDashboardRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_TcpDashboard_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse const* response)
{
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_TcpDashboardResponse_encode(response, input + 8, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_0 != 0x7168d0bdUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_1 != 0x0273789fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_2 != 0x81a6d654UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_3 != 0xd57bae9dUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_4 != 0x8c2ece63UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_5 != 0xedf1b746UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_6 != 0x3bd3967dUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_7 != 0x0baa1b78UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_0 0x7168d0bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_1 0x0273789fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_2 0x81a6d654UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_3 0xd57bae9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_4 0x8c2ece63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_5 0xedf1b746UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_6 0x3bd3967dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL_7 0x0baa1b78UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_Tool_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_ToolRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_ToolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_ToolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Tool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ToolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_Tool_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_0 != 0xf5d93c57UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_1 != 0x429a42c9UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_2 != 0x98fb0eeaUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_3 != 0x3b8db5e4UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_4 != 0xcf605ae7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_5 != 0x31fd0d63UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_6 != 0x3f6f48b2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_7 != 0x6d52dc79UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_0 0xf5d93c57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_1 0x429a42c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_2 0x98fb0eeaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_3 0x3b8db5e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_4 0xcf605ae7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_5 0x31fd0d63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_6 0x3f6f48b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI_7 0x6d52dc79UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolAI_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolAIRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolAIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolAIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolAIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_ToolAIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ToolAIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolAI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ToolAIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolAIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolAIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ToolAIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolAI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ToolAIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ToolAIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_0 != 0x15fd879dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_1 != 0x6b5b14aaUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_2 != 0x57625e7fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_3 != 0x648e25b6UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_4 != 0x69e5498bUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_5 != 0xef5a8fb4UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_6 != 0xe20606b3UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_7 != 0xe70a7702UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_0 0x15fd879dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_1 0x6b5b14aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_2 0x57625e7fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_3 0x648e25b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_4 0x69e5498bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_5 0xef5a8fb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_6 0xe20606b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI_7 0xe70a7702UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolDI_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolDIRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolDIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_ToolDIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ToolDIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolDI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ToolDIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ToolDIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolDI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ToolDIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ToolDIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_0 != 0x5fd4872eUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_1 != 0x1b190fe0UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_2 != 0x755f805eUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_3 != 0x060b9c67UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_4 != 0x21bd9a95UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_5 != 0x3aac9a0aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_6 != 0xbf5b2373UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_7 != 0x20543f3dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_0 0x5fd4872eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_1 0x1b190fe0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_2 0x755f805eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_3 0x060b9c67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_4 0x21bd9a95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_5 0x3aac9a0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_6 0xbf5b2373UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO_7 0x20543f3dUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolDO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolDORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v4_ToolDOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_ToolDORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ToolDOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolDO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_ToolDORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ToolDORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_ToolDO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_ToolDOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ToolDOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_0 != 0x9950659eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_1 != 0xc35f4fb2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_2 != 0x0a9203c5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_3 != 0x310376c0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_4 != 0x5fe6b060UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_5 != 0xe9c61120UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_6 != 0xcea076d2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_7 != 0x90d50d91UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_0 0x9950659eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_1 0xc35f4fb2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_2 0x0a9203c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_3 0x310376c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_4 0x5fe6b060UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_5 0xe9c61120UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_6 0xcea076d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT_7 0x90d50d91UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_ToolDOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_ToolDOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_0 != 0x947af5a2UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_1 != 0x8603302aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_2 != 0xdd15da1fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_3 != 0x3b9a6a36UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_4 != 0xc7aff1e5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_5 != 0xc699296eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_6 != 0x079ff62eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_7 != 0x78597935UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_0 0x947af5a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_1 0x8603302aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_2 0xdd15da1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_3 0x3b9a6a36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_4 0xc7aff1e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_5 0xc699296eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_6 0x079ff62eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER_7 0x78597935UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_User_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_UserRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_UserResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_UserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_UserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_UserRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_UserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_User_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_UserRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_UserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_UserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_UserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_User_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_UserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_UserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_0 != 0x0dbb37dfUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_1 != 0xb364c7dfUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_2 != 0x985e1680UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_3 != 0x8859575fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_4 != 0x39ac3693UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_5 != 0x106afecdUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_6 != 0xbdf353a8UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_7 != 0x99a3fe66UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_0 0x0dbb37dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_1 0xb364c7dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_2 0x985e1680UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_3 0x8859575fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_4 0x39ac3693UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_5 0x106afecdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_6 0xbdf353a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ_7 0x99a3fe66UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_VelJ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_VelJRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_VelJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_VelJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_VelJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_VelJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_VelJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_VelJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_VelJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_VelJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_VelJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_VelJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_VelJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_VelJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_VelJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_0 != 0x2a0747e4UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_1 != 0x9da62a1eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_2 != 0x5619d80cUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_3 != 0x81754346UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_4 != 0x55644642UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_5 != 0x743c76c8UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_6 != 0x6f9155b5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_7 != 0x14684035UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_0 0x2a0747e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_1 0x9da62a1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_2 0x5619d80cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_3 0x81754346UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_4 0x55644642UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_5 0x743c76c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_6 0x6f9155b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL_7 0x14684035UL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v4_VelL_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v4_VelLRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v4_VelLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_VelLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_VelLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v4_VelLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v4_VelLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v4_VelL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v4_VelLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v4_VelLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v4_VelLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v4_VelLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_rosdemo_v4_VelL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v4_VelLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v4_VelLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
