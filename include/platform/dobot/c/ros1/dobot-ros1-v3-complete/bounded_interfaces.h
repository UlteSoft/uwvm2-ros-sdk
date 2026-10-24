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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_30F6EE0706D5F2255AF3D50A98DEFCAE66A1581025E26C765252B00C348C6AF5
#define UWVM_ROS_BOUNDED_INTERFACES_30F6EE0706D5F2255AF3D50A98DEFCAE66A1581025E26C765252B00C348C6AF5
#include <dobot/c/ros1/dobot-ros1-v3-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_0 != 0x4879c967UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_1 != 0xa4ea5dfeUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_2 != 0x8bbc352dUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_3 != 0x65cd1aa3UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_4 != 0x26cfdedaUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_5 != 0x9a2062e2UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_6 != 0x38491fe7UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_7 != 0xb165de5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_0 0x4879c967UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_1 0xa4ea5dfeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_2 0x8bbc352dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_3 0x65cd1aa3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_4 0x26cfdedaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_5 0x9a2062e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_6 0x38491fe7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI_7 0xb165de5dUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AI_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dobot_bringup_AIRequest const* request,
                                                                       roswasmc_bounded_1_dobot_bringup_AIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dobot_bringup_AIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_AIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_AI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_AIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_AIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_AI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_AIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_AIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_0 != 0x6d69ed34UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_1 != 0xca00ac44UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_2 != 0xc13b9a7aUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_3 != 0x78bc093fUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_4 != 0x47817f31UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_5 != 0xdf754bc7UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_6 != 0xa25a3fd9UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_7 != 0xb4c166bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_0 0x6d69ed34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_1 0xca00ac44UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_2 0xc13b9a7aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_3 0x78bc093fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_4 0x47817f31UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_5 0xdf754bc7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_6 0xa25a3fd9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO_7 0xb4c166bfUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AO_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dobot_bringup_AORequest const* request,
                                                                       roswasmc_bounded_1_dobot_bringup_AOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dobot_bringup_AORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_AOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_AO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_AORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_AORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_AO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_AOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_AOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_0 != 0xea530be3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_1 != 0x189b861dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_2 != 0x62a9542bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_3 != 0xa386c670UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_4 != 0xea8e345cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_5 != 0xd1ac088bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_6 != 0xd8fbeee5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_7 != 0x74f6f872UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_0 0xea530be3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_1 0x189b861dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_2 0x62a9542bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_3 0xa386c670UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_4 0xea8e345cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_5 0xd1ac088bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_6 0xd8fbeee5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE_7 0x74f6f872UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AOExecute_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_AOExecuteRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_AOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_AOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_AOExecuteResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AOExecute_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_AOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_AOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AOExecute_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_AOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_AOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_0 != 0xf28cbcfbUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_1 != 0x906835c9UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_2 != 0xefa13294UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_3 != 0xfd43a29cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_4 != 0x5c3e1254UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_5 != 0xa131dcd5UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_6 != 0xc8ca3e3cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_7 != 0x896a68e6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_0 0xf28cbcfbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_1 0x906835c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_2 0xefa13294UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_3 0xfd43a29cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_4 0x5c3e1254UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_5 0xa131dcd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_6 0xc8ca3e3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ_7 0x896a68e6UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AccJ_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_AccJRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_AccJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AccJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AccJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_AccJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_AccJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_AccJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_AccJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AccJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AccJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_AccJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AccJ_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_AccJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_AccJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_0 != 0x701d7a26UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_1 != 0xa59d37d3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_2 != 0x413441ccUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_3 != 0xeda94300UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_4 != 0x23a7e8eaUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_5 != 0x4de2a5fdUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_6 != 0xdb84d9cdUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_7 != 0x6b62ca46UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_0 0x701d7a26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_1 0xa59d37d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_2 0x413441ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_3 0xeda94300UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_4 0x23a7e8eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_5 0x4de2a5fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_6 0xdb84d9cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL_7 0x6b62ca46UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AccL_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_AccLRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_AccLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AccLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AccLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_AccLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_AccLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_AccL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_AccLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_AccLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_AccLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_AccLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_AccL_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_AccLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_AccLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_0 != 0xea1338a4UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_1 != 0x69667e0aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_2 != 0xbc2dafb7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_3 != 0x7d467150UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_4 != 0x5faed17cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_5 != 0xa22a9645UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_6 != 0xc6d644e8UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_7 != 0xb8facd5aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_0 0xea1338a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_1 0x69667e0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_2 0xbc2dafb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_3 0x7d467150UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_4 0x5faed17cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_5 0xa22a9645UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_6 0xc6d644e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC_7 0xb8facd5aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Arc_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dobot_bringup_ArcRequest const* request,
                                                                        roswasmc_bounded_1_dobot_bringup_ArcResponse* response)
{
    unsigned char input[4260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ArcResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ArcResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ArcRequest_encode(request, input, 4260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ArcResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Arc_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ArcRequest* request)
{
    unsigned char output[4268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ArcRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ArcRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ArcRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_Arc_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_ArcResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ArcResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_0 != 0x5bef6e4fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_1 != 0xa497d217UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_2 != 0x132dad90UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_3 != 0x79eb4657UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_4 != 0xcd4369e0UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_5 != 0x6154a3e7UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_6 != 0x864b4d6eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_7 != 0x547edc79UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_0 0x5bef6e4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_1 0xa497d217UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_2 0x132dad90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_3 0x79eb4657UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_4 0xcd4369e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_5 0x6154a3e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_6 0x864b4d6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH_7 0x547edc79UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Arch_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_ArchRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_ArchResponse* response)
{
    unsigned char input[4168], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ArchResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ArchResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ArchRequest_encode(request, input, 4168, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ArchResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Arch_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ArchRequest* request)
{
    unsigned char output[4176];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ArchRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ArchRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ArchRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Arch_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_ArchResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ArchResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_0 != 0xa9860c41UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_1 != 0x134542b7UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_2 != 0x0c2b8529UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_3 != 0xfa7c374aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_4 != 0x94de2946UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_5 != 0x19da794bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_6 != 0xb2d15766UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_7 != 0x8009ee41UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_0 0xa9860c41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_1 0x134542b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_2 0x0c2b8529UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_3 0xfa7c374aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_4 0x94de2946UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_5 0x19da794bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_6 0xb2d15766UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL_7 0x8009ee41UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_BrakeControl_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_BrakeControlRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_BrakeControlResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_BrakeControlResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_BrakeControlResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_BrakeControlRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_BrakeControlResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_BrakeControl_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_BrakeControlRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_BrakeControlRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_BrakeControlRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_BrakeControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_BrakeControl_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_BrakeControlResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_BrakeControlResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_0 != 0x7c3edb9aUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_1 != 0x53284e77UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_2 != 0xf469b6feUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_3 != 0x261fde70UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_4 != 0xe0b89c72UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_5 != 0xd1211660UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_6 != 0xb77afe09UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_7 != 0x4d6e8fdcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_0 0x7c3edb9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_1 0x53284e77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_2 0xf469b6feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_3 0x261fde70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_4 0xe0b89c72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_5 0xd1211660UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_6 0xb77afe09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP_7 0x4d6e8fdcUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_CP_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dobot_bringup_CPRequest const* request,
                                                                       roswasmc_bounded_1_dobot_bringup_CPResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_CPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_CPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dobot_bringup_CPRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_CPResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_CP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_CPRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_CPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_CPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_CPRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_CP_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_CPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_CPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_0 != 0x6dff300bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_1 != 0x4a178489UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_2 != 0xc6e2e9daUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_3 != 0xef8337efUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_4 != 0xf4475210UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_5 != 0x99ca3dbeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_6 != 0xa1e24221UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_7 != 0x9920d0e8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_0 0x6dff300bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_1 0x4a178489UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_2 0xc6e2e9daUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_3 0xef8337efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_4 0xf4475210UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_5 0x99ca3dbeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_6 0xa1e24221UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE_7 0x9920d0e8UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Circle_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_CircleRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_CircleResponse* response)
{
    unsigned char input[4264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_CircleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_CircleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_CircleRequest_encode(request, input, 4264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_CircleResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Circle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_CircleRequest* request)
{
    unsigned char output[4272];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_CircleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_CircleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_CircleRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Circle_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_CircleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_CircleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_0 != 0xb94b0434UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_1 != 0x11c5561cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_2 != 0x6f14c002UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_3 != 0x4df579e8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_4 != 0x28c8bb01UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_5 != 0xa8791b5dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_6 != 0x3354305eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_7 != 0x2c3f4297UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_0 0xb94b0434UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_1 0x11c5561cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_2 0x6f14c002UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_3 0x4df579e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_4 0x28c8bb01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_5 0xa8791b5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_6 0x3354305eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR_7 0x2c3f4297UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ClearError_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_ClearErrorRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_ClearErrorResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ClearErrorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ClearErrorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ClearErrorRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ClearErrorResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ClearError_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_ClearErrorRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ClearErrorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ClearErrorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ClearErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ClearError_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_ClearErrorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ClearErrorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_0 != 0x0e5bb485UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_1 != 0xfb42fb48UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_2 != 0x581f117eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_3 != 0x2ce232f2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_4 != 0xf358dd8aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_5 != 0x227ab072UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_6 != 0x2f9e9b49UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_7 != 0xa47f3cb6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_0 0x0e5bb485UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_1 0xfb42fb48UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_2 0x581f117eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_3 0x2ce232f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_4 0xf358dd8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_5 0x227ab072UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_6 0x2f9e9b49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT_7 0xa47f3cb6UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ContinueScript_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ContinueScript_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ContinueScript_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_0 != 0x2a3b5bafUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_1 != 0xd9febc32UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_2 != 0xb8a0d057UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_3 != 0x0fcba0cbUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_4 != 0x64632ddfUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_5 != 0x2f7ad9b7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_6 != 0xfbdd7d5bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_7 != 0x0b4ae4b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_0 0x2a3b5bafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_1 0xd9febc32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_2 0xb8a0d057UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_3 0x0fcba0cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_4 0x64632ddfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_5 0x2f7ad9b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_6 0xfbdd7d5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES_7 0x0b4ae4b8UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Continues_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_ContinuesRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_ContinuesResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ContinuesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ContinuesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ContinuesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ContinuesResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Continues_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ContinuesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ContinuesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ContinuesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ContinuesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Continues_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_ContinuesResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ContinuesResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_0 != 0xa2c287abUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_1 != 0x8e4a93beUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_2 != 0xc9636a1cUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_3 != 0xebd08702UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_4 != 0xf5445586UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_5 != 0x2e21ac20UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_6 != 0x677c1cfdUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_7 != 0xeff4082fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_0 0xa2c287abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_1 0x8e4a93beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_2 0xc9636a1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_3 0xebd08702UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_4 0xf5445586UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_5 0x2e21ac20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_6 0x677c1cfdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI_7 0xeff4082fUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DI_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dobot_bringup_DIRequest const* request,
                                                                       roswasmc_bounded_1_dobot_bringup_DIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dobot_bringup_DIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_DI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_DIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_DI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_DIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_0 != 0x76e20574UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_1 != 0x09b8910eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_2 != 0xa275cf86UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_3 != 0xabdeea16UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_4 != 0xc7557fa6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_5 != 0x72fc3f59UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_6 != 0x9a320d81UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_7 != 0x953c266eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_0 0x76e20574UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_1 0x09b8910eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_2 0xa275cf86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_3 0xabdeea16UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_4 0xc7557fa6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_5 0x72fc3f59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_6 0x9a320d81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP_7 0x953c266eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DIGroup_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_DIGroupRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_DIGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DIGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DIGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_DIGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DIGroupResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_DIGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_DIGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DIGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DIGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DIGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DIGroup_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_DIGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DIGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_0 != 0x4022106aUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_1 != 0xa2e61842UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_2 != 0xea13eb70UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_3 != 0xaab77c6fUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_4 != 0x16b7decaUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_5 != 0x20f94f4aUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_6 != 0x37e1caf9UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_7 != 0x994d0df2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_0 0x4022106aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_1 0xa2e61842UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_2 0xea13eb70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_3 0xaab77c6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_4 0x16b7decaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_5 0x20f94f4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_6 0x37e1caf9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO_7 0x994d0df2UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DO_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dobot_bringup_DORequest const* request,
                                                                       roswasmc_bounded_1_dobot_bringup_DOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dobot_bringup_DORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_DO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_DORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_DO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dobot_bringup_DOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_0 != 0xe15d3a8cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_1 != 0xdd0afc51UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_2 != 0x0a67b383UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_3 != 0x62e20521UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_4 != 0x463bc035UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_5 != 0xa8cfde37UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_6 != 0x79eada13UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_7 != 0x8d79533dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_0 0xe15d3a8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_1 0xdd0afc51UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_2 0x0a67b383UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_3 0x62e20521UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_4 0x463bc035UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_5 0xa8cfde37UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_6 0x79eada13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE_7 0x8d79533dUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DOExecute_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_DOExecuteRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_DOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_DOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DOExecuteResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DOExecute_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_DOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DOExecute_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_DOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_0 != 0x097d9f5eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_1 != 0xbb9f7bb3UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_2 != 0xec9636e7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_3 != 0xa3315fafUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_4 != 0x93a9385dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_5 != 0x63321f69UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_6 != 0xee6a20dfUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_7 != 0x97713718UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_0 0x097d9f5eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_1 0xbb9f7bb3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_2 0xec9636e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_3 0xa3315fafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_4 0x93a9385dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_5 0x63321f69UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_6 0xee6a20dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP_7 0x97713718UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DOGroup_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_DOGroupRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_DOGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_DOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DOGroupResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_DOGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_DOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DOGroup_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_DOGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DOGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_0 != 0x5efe1a9cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_1 != 0x57c4e0cbUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_2 != 0x2239d5eeUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_3 != 0x9f54aabcUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_4 != 0xdb498503UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_5 != 0x374b93fbUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_6 != 0x707f839eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_7 != 0x1e0df18aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_0 0x5efe1a9cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_1 0x57c4e0cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_2 0x2239d5eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_3 0x9f54aabcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_4 0xdb498503UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_5 0x374b93fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_6 0x707f839eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS_7 0x1e0df18aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DigitalOutputs_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse* response)
{
    unsigned char input[5], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest_encode(request, input, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DigitalOutputs_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest* request)
{
    unsigned char output[13];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DigitalOutputs_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_0 != 0x607ca875UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_1 != 0xeaa2f077UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_2 != 0x0056f9d6UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_3 != 0x9f000bc4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_4 != 0x190583c4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_5 != 0xc05eb769UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_6 != 0x5641ff50UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_7 != 0x43b04d33UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_0 0x607ca875UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_1 0xeaa2f077UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_2 0x0056f9d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_3 0x9f000bc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_4 0x190583c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_5 0xc05eb769UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_6 0x5641ff50UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT_7 0x43b04d33UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DisableRobot_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_DisableRobotRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_DisableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DisableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DisableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_DisableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_DisableRobotResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DisableRobot_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_DisableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_DisableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_DisableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_DisableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_DisableRobot_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_DisableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_DisableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_0 != 0x282b8b56UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_1 != 0x3dee1e29UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_2 != 0xbce5025fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_3 != 0x52a6f1e9UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_4 != 0xd0210564UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_5 != 0xd0d37e7eUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_6 != 0xf15f22e2UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_7 != 0x4a9ba121UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_0 0x282b8b56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_1 0x3dee1e29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_2 0xbce5025fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_3 0x52a6f1e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_4 0xd0210564UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_5 0xd0d37e7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_6 0xf15f22e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP_7 0x4a9ba121UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EmergencyStop_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EmergencyStop_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EmergencyStop_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_0 != 0xa834b44dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_1 != 0xe8f0bbb4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_2 != 0xc190bd92UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_3 != 0x5918c912UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_4 != 0xb1c55717UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_5 != 0x195c0aabUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_6 != 0x6f81cdecUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_7 != 0x98b88251UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_0 0xa834b44dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_1 0xe8f0bbb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_2 0xc190bd92UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_3 0x5918c912UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_4 0xb1c55717UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_5 0x195c0aabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_6 0x6f81cdecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT_7 0x98b88251UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EnableRobot_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_EnableRobotRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_EnableRobotResponse* response)
{
    unsigned char input[132], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_EnableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_EnableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_EnableRobotRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_EnableRobotResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EnableRobot_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_EnableRobotRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_EnableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_EnableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_EnableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_EnableRobot_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_EnableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_EnableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_0 != 0x2dc0850bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_1 != 0x1db10cd8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_2 != 0x129c274aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_3 != 0x0f72c3f1UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_4 != 0xa7fd5c14UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_5 != 0x6fa726f8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_6 != 0x7ad79133UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_7 != 0x345c16e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_0 0x2dc0850bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_1 0x1db10cd8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_2 0x129c274aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_3 0x0f72c3f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_4 0xa7fd5c14UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_5 0x6fa726f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_6 0x7ad79133UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE_7 0x345c16e7UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetAngle_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_bringup_GetAngleRequest const* request,
                                                                             roswasmc_bounded_1_dobot_bringup_GetAngleResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetAngleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetAngleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetAngleRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetAngleResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_GetAngle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_GetAngleRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetAngleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetAngleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetAngleRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetAngle_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_GetAngleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetAngleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_0 != 0x40b1b2a2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_1 != 0x33a7c279UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_2 != 0xa6e347b0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_3 != 0x8b0b1044UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_4 != 0x2790f477UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_5 != 0xe1bd5405UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_6 != 0x79bb7099UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_7 != 0x43b0ad53UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_0 0x40b1b2a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_1 0x33a7c279UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_2 0xa6e347b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_3 0x8b0b1044UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_4 0x2790f477UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_5 0xe1bd5405UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_6 0x79bb7099UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS_7 0x43b0ad53UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetCoils_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_bringup_GetCoilsRequest const* request,
                                                                             roswasmc_bounded_1_dobot_bringup_GetCoilsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetCoilsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetCoilsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_GetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_GetCoilsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetCoils_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_GetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_0 != 0xeefdb63cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_1 != 0x574af7b3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_2 != 0x6bf5aca0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_3 != 0xabb35a67UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_4 != 0xef1ceeb8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_5 != 0x71314834UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_6 != 0xab7dd936UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_7 != 0xb0d316e0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_0 0xeefdb63cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_1 0x574af7b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_2 0x6bf5aca0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_3 0xabb35a67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_4 0xef1ceeb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_5 0x71314834UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_6 0xab7dd936UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID_7 0xb0d316e0UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetErrorID_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse* response)
{
    unsigned char input[1], output[72];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 72);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 72 || roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetErrorID_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetErrorID_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse const* response)
{
    unsigned char input[80];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse_encode(response, input + 8, 72, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_0 != 0xbe0f460bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_1 != 0xca3b348cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_2 != 0xb610cee3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_3 != 0x06314830UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_4 != 0xd6f6224cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_5 != 0x02b0c7bbUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_6 != 0x70874f05UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_7 != 0xb849b22aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_0 0xbe0f460bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_1 0xca3b348cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_2 0xb610cee3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_3 0x06314830UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_4 0xd6f6224cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_5 0x02b0c7bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_6 0x70874f05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS_7 0xb849b22aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetHoldRegs_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse* response)
{
    unsigned char input[4176], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest_encode(request, input, 4176, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetHoldRegs_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest* request)
{
    unsigned char output[4184];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_0 != 0x244a9493UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_1 != 0x99e0881fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_2 != 0x4eef0603UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_3 != 0x0dab6219UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_4 != 0xd5e13ea7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_5 != 0x4f1dc0f8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_6 != 0x2b435c88UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_7 != 0xf0041ecbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_0 0x244a9493UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_1 0x99e0881fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_2 0x4eef0603UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_3 0x0dab6219UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_4 0xd5e13ea7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_5 0x4f1dc0f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_6 0x2b435c88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS_7 0xf0041ecbUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInBits_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInBitsRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInBitsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetInBitsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetInBitsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetInBitsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetInBitsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInBits_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInBitsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetInBitsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetInBitsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetInBitsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInBits_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_GetInBitsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetInBitsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_0 != 0xaddd1f2aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_1 != 0xa7774cf2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_2 != 0xda367b7dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_3 != 0x446cb799UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_4 != 0x7520cc1eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_5 != 0xc4beb9daUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_6 != 0x084d2badUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_7 != 0x5d385ee4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_0 0xaddd1f2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_1 0xa7774cf2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_2 0xda367b7dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_3 0x446cb799UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_4 0x7520cc1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_5 0xc4beb9daUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_6 0x084d2badUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS_7 0x5d385ee4UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInRegs_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInRegsRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInRegsResponse* response)
{
    unsigned char input[4176], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetInRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetInRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetInRegsRequest_encode(request, input, 4176, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetInRegsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInRegs_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_GetInRegsRequest* request)
{
    unsigned char output[4184];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetInRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetInRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetInRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetInRegs_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_GetInRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetInRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_0 != 0x58aece93UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_1 != 0x8960b417UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_2 != 0x594d032aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_3 != 0x3508c6a3UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_4 != 0x91526492UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_5 != 0x9df2b903UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_6 != 0x5da21135UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_7 != 0xdff21920UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_0 0x58aece93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_1 0x8960b417UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_2 0x594d032aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_3 0x3508c6a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_4 0x91526492UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_5 0x9df2b903UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_6 0x5da21135UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE_7 0xdff21920UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetPathStartPose_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetPathStartPose_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_GetPathStartPose_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_0 != 0x2c862abaUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_1 != 0x58728977UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_2 != 0x87cf0929UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_3 != 0xd3faef3eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_4 != 0x8767a935UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_5 != 0x5ae0745eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_6 != 0x055286a7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_7 != 0x5f8bcf51UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_0 0x2c862abaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_1 0x58728977UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_2 0x87cf0929UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_3 0xd3faef3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_4 0x8767a935UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_5 0x5ae0745eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_6 0x055286a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE_7 0x5f8bcf51UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetPose_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_GetPoseRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_GetPoseResponse* response)
{
    unsigned char input[136], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetPoseRequest_encode(request, input, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetPoseResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_GetPose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_GetPoseRequest* request)
{
    unsigned char output[144];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetPose_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_GetPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_0 != 0xa1dd8c45UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_1 != 0xe3ab4952UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_2 != 0x23aa76eeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_3 != 0x47329e73UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_4 != 0x7ac1a571UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_5 != 0x9691126aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_6 != 0x75e04cc8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_7 != 0x6b7e915dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_0 0xa1dd8c45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_1 0xe3ab4952UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_2 0x23aa76eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_3 0x47329e73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_4 0x7ac1a571UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_5 0x9691126aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_6 0x75e04cc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA_7 0x6b7e915dUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetSixForceData_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetSixForceData_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetSixForceData_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_0 != 0x783bb5edUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_1 != 0x93c380e7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_2 != 0xc29b24f6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_3 != 0xb7fed7d3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_4 != 0x4f42709eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_5 != 0x6d03a33aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_6 != 0xaf417e2bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_7 != 0xeee2dff0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_0 0x783bb5edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_1 0x93c380e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_2 0xc29b24f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_3 0xb7fed7d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_4 0x4f42709eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_5 0x6d03a33aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_6 0xaf417e2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485_7 0xeee2dff0UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetTerminal485_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_bringup_GetTerminal485Request const* request,
                                                                                   roswasmc_bounded_1_dobot_bringup_GetTerminal485Response* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetTerminal485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetTerminal485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetTerminal485Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetTerminal485Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetTerminal485_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_GetTerminal485Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetTerminal485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetTerminal485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetTerminal485Request_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetTerminal485_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_GetTerminal485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetTerminal485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_0 != 0xe2c3b255UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_1 != 0xddbcf4d7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_2 != 0x63ba0d59UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_3 != 0x2b1433c6UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_4 != 0x7a0b913dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_5 != 0x5f46e7abUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_6 != 0x722b332bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_7 != 0x8b58e07bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_0 0xe2c3b255UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_1 0xddbcf4d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_2 0x63ba0d59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_3 0x2b1433c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_4 0x7a0b913dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_5 0x5f46e7abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_6 0x722b332bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE_7 0x8b58e07bUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_0 != 0x160f77fcUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_1 != 0x3d19ebefUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_2 != 0xdaf282baUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_3 != 0xfa6bdb45UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_4 != 0xec052883UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_5 != 0xe40c8f48UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_6 != 0x36765532UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_7 != 0x467cc9d5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_0 0x160f77fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_1 0x3d19ebefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_2 0xdaf282baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_3 0xfa6bdb45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_4 0xec052883UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_5 0xe40c8f48UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_6 0x36765532UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS_7 0x467cc9d5UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_0 != 0x76a56012UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_1 != 0x709d6b08UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_2 != 0x58fa032eUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_3 != 0x96328aa9UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_4 != 0xa5bfea58UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_5 != 0x05119ad5UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_6 != 0x3e7d2621UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_7 != 0x49b2a9c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_0 0x76a56012UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_1 0x709d6b08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_2 0x58fa032eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_3 0x96328aa9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_4 0xa5bfea58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_5 0x05119ad5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_6 0x3e7d2621UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION_7 0x49b2a9c1UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_InverseSolution_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse* response)
{
    unsigned char input[320], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest_encode(request, input, 320, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_InverseSolution_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest* request)
{
    unsigned char output[328];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_InverseSolution_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_0 != 0xaa45984eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_1 != 0x8f24d3ffUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_2 != 0x83d116ecUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_3 != 0xcdb14234UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_4 != 0xccb8c8b8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_5 != 0xcb259cc9UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_6 != 0x33dbbbf1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_7 != 0x0c492415UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_0 0xaa45984eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_1 0x8f24d3ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_2 0x83d116ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_3 0xcdb14234UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_4 0xccb8c8b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_5 0xcb259cc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_6 0x33dbbbf1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ_7 0x0c492415UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_JointMovJ_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_JointMovJRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_JointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_JointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_JointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_JointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_JointMovJResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_JointMovJ_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_JointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_JointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_JointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_JointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_JointMovJ_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_JointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_JointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_0 != 0x1be232c1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_1 != 0x5dff6fbcUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_2 != 0x59740520UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_3 != 0xeb43bd00UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_4 != 0xa7d31e54UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_5 != 0xe20c6f56UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_6 != 0x4195f2c4UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_7 != 0x071a1c6aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_0 0x1be232c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_1 0x5dff6fbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_2 0x59740520UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_3 0xeb43bd00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_4 0xa7d31e54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_5 0xe20c6f56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_6 0x4195f2c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP_7 0x071a1c6aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Jump_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_JumpRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_JumpResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_JumpResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_JumpResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_JumpRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_JumpResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Jump_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_JumpRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_JumpRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_JumpRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_JumpRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Jump_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_JumpResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_JumpResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_0 != 0x6e29bc15UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_1 != 0xc3d5a041UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_2 != 0x015afedcUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_3 != 0x972b637bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_4 != 0x613ee234UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_5 != 0xeca68dacUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_6 != 0x5592282eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_7 != 0xa57d518eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_0 0x6e29bc15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_1 0xc3d5a041UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_2 0x015afedcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_3 0x972b637bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_4 0x613ee234UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_5 0xeca68dacUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_6 0x5592282eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ_7 0xa57d518eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_LimZ_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_LimZRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_LimZResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_LimZResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_LimZResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_LimZRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_LimZResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_LimZ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_LimZRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_LimZRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_LimZRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_LimZRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_LimZ_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_LimZResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_LimZResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_0 != 0x5a3bc043UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_1 != 0xeeb67149UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_2 != 0x1685d342UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_3 != 0xbad9b3deUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_4 != 0x6c120932UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_5 != 0xe6ad02aaUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_6 != 0xc6896509UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_7 != 0x3066407dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_0 0x5a3bc043UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_1 0xeeb67149UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_2 0x1685d342UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_3 0xbad9b3deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_4 0x6c120932UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_5 0xe6ad02aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_6 0xc6896509UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH_7 0x3066407dUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_LoadSwitch_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_LoadSwitch_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_LoadSwitch_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_0 != 0x5d2dd797UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_1 != 0x89b771eeUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_2 != 0x6c23ab54UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_3 != 0xf76e29aeUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_4 != 0xf0a37f32UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_5 != 0x8cbab571UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_6 != 0x6e44a1ccUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_7 != 0x64704a08UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_0 0x5d2dd797UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_1 0x89b771eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_2 0x6c23ab54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_3 0xf76e29aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_4 0xf0a37f32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_5 0x8cbab571UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_6 0x6e44a1ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE_7 0x64704a08UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusClose_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusClose_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusClose_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_0 != 0x7f3d99c0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_1 != 0x20bdffcbUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_2 != 0x68c5447fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_3 != 0x6b0e5bddUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_4 != 0x28186ca3UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_5 != 0xadceaec4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_6 != 0xddb70662UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_7 != 0xca25299fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_0 0x7f3d99c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_1 0x20bdffcbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_2 0x68c5447fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_3 0x6b0e5bddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_4 0x28186ca3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_5 0xadceaec4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_6 0xddb70662UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE_7 0xca25299fUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusCreate_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse* response)
{
    unsigned char input[336], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest_encode(request, input, 336, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusCreate_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest* request)
{
    unsigned char output[344];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ModbusCreate_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_0 != 0x29376eabUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_1 != 0xc8cb3d8aUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_2 != 0xc3f3acd1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_3 != 0x23516a30UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_4 != 0xd966494aUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_5 != 0x85116218UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_6 != 0x7086053cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_7 != 0x30992821UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_0 0x29376eabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_1 0xc8cb3d8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_2 0xc3f3acd1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_3 0x23516a30UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_4 0xd966494aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_5 0x85116218UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_6 0x7086053cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ_7 0x30992821UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJ_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_MovJRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_MovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MovJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJ_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_MovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_0 != 0x334a05b9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_1 != 0xb9a6ef33UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_2 != 0x575e0fabUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_3 != 0xeeca0858UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_4 != 0xd9528decUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_5 != 0x7d4a1170UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_6 != 0xd791dd41UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_7 != 0x59bd81dfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_0 0x334a05b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_1 0xb9a6ef33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_2 0x575e0fabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_3 0xeeca0858UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_4 0xd9528decUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_5 0x7d4a1170UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_6 0xd791dd41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT_7 0x59bd81dfUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJExt_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_MovJExtRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_MovJExtResponse* response)
{
    unsigned char input[4172], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJExtResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJExtResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MovJExtRequest_encode(request, input, 4172, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MovJExtResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MovJExt_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MovJExtRequest* request)
{
    unsigned char output[4180];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJExtRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJExtRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MovJExtRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJExt_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_MovJExtResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MovJExtResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_0 != 0xf459735cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_1 != 0xd2fcb283UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_2 != 0x9fdd7d19UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_3 != 0x8cc9b38fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_4 != 0x49cfda16UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_5 != 0x709469c8UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_6 != 0xf98c1786UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_7 != 0x7149e4d3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_0 0xf459735cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_1 0xd2fcb283UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_2 0x9fdd7d19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_3 0x8cc9b38fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_4 0x49cfda16UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_5 0x709469c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_6 0xf98c1786UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO_7 0x7149e4d3UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJIO_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_MovJIORequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_MovJIOResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MovJIORequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MovJIOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MovJIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MovJIORequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovJIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovJIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MovJIORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovJIO_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_MovJIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MovJIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_0 != 0x7f25d756UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_1 != 0xa3ea1495UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_2 != 0x77185e40UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_3 != 0xfbacfd83UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_4 != 0xbcffa137UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_5 != 0xafe51f5cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_6 != 0x2337cf88UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_7 != 0x58ddecf9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_0 0x7f25d756UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_1 0xa3ea1495UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_2 0x77185e40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_3 0xfbacfd83UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_4 0xbcffa137UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_5 0xafe51f5cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_6 0x2337cf88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL_7 0x58ddecf9UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovL_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_MovLRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_MovLResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MovLRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MovLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MovLRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovL_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_MovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_0 != 0x74634f6eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_1 != 0x89e7032fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_2 != 0xaf685f6fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_3 != 0x56b42469UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_4 != 0x43f6456aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_5 != 0xffdc0fd6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_6 != 0x7f21e3a1UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_7 != 0xd651bf6eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_0 0x74634f6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_1 0x89e7032fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_2 0xaf685f6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_3 0x56b42469UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_4 0x43f6456aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_5 0xffdc0fd6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_6 0x7f21e3a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO_7 0xd651bf6eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovLIO_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_MovLIORequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_MovLIOResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovLIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovLIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MovLIORequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MovLIOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MovLIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MovLIORequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MovLIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MovLIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MovLIORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MovLIO_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_MovLIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MovLIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_0 != 0x5f473c43UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_1 != 0x645b4232UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_2 != 0x299ecc89UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_3 != 0x9a3c1a33UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_4 != 0x80ca4a85UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_5 != 0x6f8528e9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_6 != 0xd0d416d0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_7 != 0x023f6178UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_0 0x5f473c43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_1 0x645b4232UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_2 0x299ecc89UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_3 0x9a3c1a33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_4 0x80ca4a85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_5 0x6f8528e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_6 0xd0d416d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG_7 0x023f6178UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MoveJog_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_MoveJogRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_MoveJogResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_MoveJogRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_MoveJogResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_MoveJog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_MoveJogRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_MoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_MoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_MoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_MoveJog_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_MoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_MoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_0 != 0x22971d7eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_1 != 0x768b4892UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_2 != 0xf3dac1d0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_3 != 0x456ba0beUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_4 != 0x4e9f62c5UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_5 != 0x4a8370efUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_6 != 0x35342a57UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_7 != 0x45156686UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_0 0x22971d7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_1 0x768b4892UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_2 0xf3dac1d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_3 0x456ba0beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_4 0x4e9f62c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_5 0x4a8370efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_6 0x35342a57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT_7 0x45156686UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PauseScript_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_PauseScriptRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_PauseScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PauseScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PauseScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_PauseScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_PauseScriptResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PauseScript_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_PauseScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PauseScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PauseScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_PauseScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PauseScript_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_PauseScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_PauseScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_0 != 0x1c85aeb5UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_1 != 0xb72e38f9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_2 != 0x7d1c1047UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_3 != 0x4de67622UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_4 != 0xedc9e21bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_5 != 0xb7e73cc6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_6 != 0x7c7197afUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_7 != 0x6593e78eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_0 0x1c85aeb5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_1 0xb72e38f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_2 0x7d1c1047UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_3 0x4de67622UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_4 0xedc9e21bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_5 0xb7e73cc6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_6 0x7c7197afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD_7 0x6593e78eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PayLoad_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_PayLoadRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_PayLoadResponse* response)
{
    unsigned char input[16], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PayLoadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PayLoadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_PayLoadRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_PayLoadResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_PayLoad_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_PayLoadRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PayLoadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PayLoadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_PayLoadRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PayLoad_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_PayLoadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_PayLoadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_0 != 0x53cf105fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_1 != 0xd9b8150fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_2 != 0xbc972b39UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_3 != 0xef134bdcUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_4 != 0x8e00fe01UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_5 != 0x42d74839UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_6 != 0x55b7ef73UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_7 != 0x27da0ac7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_0 0x53cf105fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_1 0xd9b8150fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_2 0xbc972b39UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_3 0xef134bdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_4 0x8e00fe01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_5 0x42d74839UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_6 0x55b7ef73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION_7 0x27da0ac7UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PositiveSolution_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse* response)
{
    unsigned char input[56], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PositiveSolution_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_PositiveSolution_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_0 != 0x29ec7e88UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_1 != 0x823c709dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_2 != 0x88e573dfUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_3 != 0x6604d0c7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_4 != 0xb2eb966aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_5 != 0x8f3dd015UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_6 != 0xced4936dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_7 != 0x4f3b97f6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_0 0x29ec7e88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_1 0x823c709dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_2 0x88e573dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_3 0x6604d0c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_4 0xb2eb966aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_5 0x8f3dd015UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_6 0xced4936dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON_7 0x4f3b97f6UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PowerOn_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_PowerOnRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_PowerOnResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PowerOnResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PowerOnResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_PowerOnRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_PowerOnResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_PowerOn_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_PowerOnRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_PowerOnRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_PowerOnRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_PowerOnRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_PowerOn_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_PowerOnResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_PowerOnResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_0 != 0x32d25b6cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_1 != 0x7e456069UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_2 != 0x85f4a85bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_3 != 0x8736b17fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_4 != 0x071c16a1UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_5 != 0x2656390fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_6 != 0xb0a1b7f1UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_7 != 0x3b79166cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_0 0x32d25b6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_1 0x7e456069UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_2 0x85f4a85bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_3 0x8736b17fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_4 0x071c16a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_5 0x2656390fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_6 0xb0a1b7f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ_7 0x3b79166cUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelJointMovJ_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelJointMovJ_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelJointMovJ_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_0 != 0x098a9ae9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_1 != 0x5be56f2bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_2 != 0x3556cf17UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_3 != 0x03bc9d58UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_4 != 0xeda3b60eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_5 != 0x30caf5cdUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_6 != 0xf44d679dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_7 != 0xe847b886UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_0 0x098a9ae9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_1 0x5be56f2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_2 0x3556cf17UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_3 0x03bc9d58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_4 0xeda3b60eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_5 0x30caf5cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_6 0xf44d679dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ_7 0xe847b886UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJ_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_RelMovJRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_RelMovJResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovJRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_RelMovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_RelMovJRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJ_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_RelMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_0 != 0xda7bd386UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_1 != 0x09875b82UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_2 != 0x2bbd4a0aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_3 != 0x67147d98UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_4 != 0xa4e86530UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_5 != 0xd05926bcUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_6 != 0xd8658829UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_7 != 0x1b29dd0aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_0 0xda7bd386UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_1 0x09875b82UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_2 0x2bbd4a0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_3 0x67147d98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_4 0xa4e86530UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_5 0xd05926bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_6 0xd8658829UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL_7 0x1b29dd0aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJTool_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJTool_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJTool_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_0 != 0x4fa9f5deUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_1 != 0x3559df28UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_2 != 0x2f1a175cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_3 != 0x1a2e1713UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_4 != 0x535b3bb9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_5 != 0x315a9696UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_6 != 0xb2eefb01UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_7 != 0xe0012863UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_0 0x4fa9f5deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_1 0x3559df28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_2 0x2f1a175cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_3 0x1a2e1713UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_4 0x535b3bb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_5 0x315a9696UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_6 0xb2eefb01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER_7 0xe0012863UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJUser_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJUser_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovJUser_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_0 != 0x8c6b2ec2UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_1 != 0x245dd247UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_2 != 0x49d1d0f8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_3 != 0x3dfa737cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_4 != 0x72aa9054UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_5 != 0xf85bc317UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_6 != 0xff2b1db0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_7 != 0x4605d7bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_0 0x8c6b2ec2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_1 0x245dd247UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_2 0x49d1d0f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_3 0x3dfa737cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_4 0x72aa9054UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_5 0xf85bc317UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_6 0xff2b1db0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL_7 0x4605d7bfUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovL_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_RelMovLRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_RelMovLResponse* response)
{
    unsigned char input[24], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovLRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_RelMovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_RelMovLRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovL_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_RelMovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_0 != 0xa6e1e4a6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_1 != 0xac9c5406UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_2 != 0xe3d34b1fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_3 != 0x435b69d6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_4 != 0xa1931738UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_5 != 0x7ee9c7caUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_6 != 0xaf2003c6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_7 != 0x2e938af9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_0 0xa6e1e4a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_1 0xac9c5406UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_2 0xe3d34b1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_3 0x435b69d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_4 0xa1931738UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_5 0x7ee9c7caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_6 0xaf2003c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL_7 0x2e938af9UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLTool_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLTool_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLTool_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_0 != 0x76c09de7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_1 != 0x3be8cbd3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_2 != 0x4ec9cd4fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_3 != 0xa9e61d2aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_4 != 0x88b8cafaUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_5 != 0x3e59ed6cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_6 != 0xf9552683UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_7 != 0xf0ef4ec7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_0 0x76c09de7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_1 0x3be8cbd3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_2 0x4ec9cd4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_3 0xa9e61d2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_4 0x88b8cafaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_5 0x3e59ed6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_6 0xf9552683UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER_7 0xf0ef4ec7UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLUser_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLUser_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RelMovLUser_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_0 != 0x86ee8b3dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_1 != 0x848cb381UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_2 != 0x9fbea917UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_3 != 0xda480718UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_4 != 0xfc99ee1fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_5 != 0xb8952af0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_6 != 0x691588a9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_7 != 0xda6339e2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_0 0x86ee8b3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_1 0x848cb381UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_2 0x9fbea917UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_3 0xda480718UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_4 0xfc99ee1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_5 0xb8952af0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_6 0x691588a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT_7 0xda6339e2UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ResetRobot_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_ResetRobotRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_ResetRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ResetRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ResetRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ResetRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ResetRobotResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ResetRobot_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_ResetRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ResetRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ResetRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ResetRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ResetRobot_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_ResetRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ResetRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_0 != 0xead04accUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_1 != 0xe49c3297UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_2 != 0xe45c6608UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_3 != 0x5ba640f1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_4 != 0xfb2e39b8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_5 != 0xe2ee1731UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_6 != 0xe7940326UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_7 != 0xcdabcfbeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_0 0xead04accUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_1 0xe49c3297UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_2 0xe45c6608UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_3 0x5ba640f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_4 0xfb2e39b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_5 0xe2ee1731UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_6 0xe7940326UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE_7 0xcdabcfbeUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RobotMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_RobotModeRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_RobotModeResponse* response)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RobotModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RobotModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_dobot_bringup_RobotModeResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RobotMode_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_RobotModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RobotModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RobotModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RobotMode_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_RobotModeResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RobotModeResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_0 != 0x63eeed23UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_1 != 0x31ee45d8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_2 != 0x3bc5bd1bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_3 != 0x5a4afc67UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_4 != 0xc7cfcfddUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_5 != 0x8840799cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_6 != 0x0513ce89UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_7 != 0xc1ae30fdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_0 0x63eeed23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_1 0x31ee45d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_2 0x3bc5bd1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_3 0x5a4afc67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_4 0xc7cfcfddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_5 0x8840799cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_6 0x0513ce89UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT_7 0xc1ae30fdUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RunScript_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_RunScriptRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_RunScriptResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RunScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RunScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_RunScriptRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_RunScriptResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RunScript_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_RunScriptRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_RunScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_RunScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_RunScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_RunScript_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_RunScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_RunScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_0 != 0xa57f736bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_1 != 0xee56ea26UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_2 != 0x9ea575d9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_3 != 0x127468d4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_4 != 0x87b13d65UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_5 != 0x359195d6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_6 != 0x63df44b1UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_7 != 0xa3884c10UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_0 0xa57f736bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_1 0xee56ea26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_2 0x9ea575d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_3 0x127468d4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_4 0x87b13d65UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_5 0x359195d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_6 0x63df44b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ_7 0xa3884c10UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoJ_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_ServoJRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_ServoJResponse* response)
{
    unsigned char input[444], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ServoJRequest_encode(request, input, 444, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ServoJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_ServoJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ServoJRequest* request)
{
    unsigned char output[452];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ServoJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoJ_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ServoJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ServoJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_0 != 0x229607e9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_1 != 0x5b0cea32UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_2 != 0xbeefdbe0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_3 != 0x237a1748UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_4 != 0x72ae3c81UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_5 != 0xfa0a1579UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_6 != 0x64f55a82UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_7 != 0x48ed1772UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_0 0x229607e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_1 0x5b0cea32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_2 0xbeefdbe0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_3 0x237a1748UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_4 0x72ae3c81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_5 0xfa0a1579UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_6 0x64f55a82UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM_7 0x48ed1772UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoJParam_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_ServoJParamRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_ServoJParamResponse* response)
{
    unsigned char input[32], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoJParamResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoJParamResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ServoJParamRequest_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ServoJParamResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoJParam_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_ServoJParamRequest* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoJParamRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoJParamRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ServoJParamRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoJParam_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_ServoJParamResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ServoJParamResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_0 != 0x5ec2ded2UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_1 != 0xb031885eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_2 != 0x60a07b88UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_3 != 0xd9e7f126UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_4 != 0xbdab2d31UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_5 != 0x0f5514b4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_6 != 0xa2cf5bc3UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_7 != 0x1cd31a88UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_0 0x5ec2ded2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_1 0xb031885eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_2 0x60a07b88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_3 0xd9e7f126UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_4 0xbdab2d31UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_5 0x0f5514b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_6 0xa2cf5bc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP_7 0x1cd31a88UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoP_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_ServoPRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_ServoPResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ServoPRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ServoPResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_ServoP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ServoPRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ServoPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ServoPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ServoPRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ServoP_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ServoPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ServoPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_0 != 0xb37a9244UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_1 != 0x4951ce07UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_2 != 0x67b7d3c4UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_3 != 0xa523a2d2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_4 != 0x08b40e5bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_5 != 0xcc6b1827UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_6 != 0x5aa2e24aUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_7 != 0x12057f18UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_0 0xb37a9244UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_1 0x4951ce07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_2 0x67b7d3c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_3 0xa523a2d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_4 0x08b40e5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_5 0xcc6b1827UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_6 0x5aa2e24aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION_7 0x12057f18UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetArmOrientation_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse* response)
{
    unsigned char input[16], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetArmOrientation_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_SetArmOrientation_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_0 != 0x3923663cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_1 != 0x2f85b897UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_2 != 0xdf322a0cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_3 != 0x860bfd3fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_4 != 0x86415900UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_5 != 0x103bcf1aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_6 != 0x5663436dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_7 != 0x85819e1eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_0 0x3923663cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_1 0x2f85b897UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_2 0xdf322a0cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_3 0x860bfd3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_4 0x86415900UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_5 0x103bcf1aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_6 0x5663436dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS_7 0x85819e1eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCoils_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_bringup_SetCoilsRequest const* request,
                                                                             roswasmc_bounded_1_dobot_bringup_SetCoilsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetCoilsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetCoilsResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_SetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_SetCoilsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCoils_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_SetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_0 != 0x273f37c5UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_1 != 0x00abe575UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_2 != 0x1c91e076UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_3 != 0x9bcab485UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_4 != 0xe6711755UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_5 != 0xe8dcd5feUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_6 != 0xb7742746UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_7 != 0x50a8bd8cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_0 0x273f37c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_1 0x00abe575UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_2 0x1c91e076UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_3 0x9bcab485UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_4 0xe6711755UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_5 0xe8dcd5feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_6 0xb7742746UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG_7 0x50a8bd8cUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCollideDrag_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCollideDrag_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCollideDrag_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_0 != 0x47acdbb4UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_1 != 0x90465794UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_2 != 0x06670b2cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_3 != 0xb3c27cccUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_4 != 0x13d0b9d3UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_5 != 0x598bdf5aUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_6 != 0xb4ab7a05UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_7 != 0x18406fdaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_0 0x47acdbb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_1 0x90465794UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_2 0x06670b2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_3 0xb3c27cccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_4 0x13d0b9d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_5 0x598bdf5aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_6 0xb4ab7a05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL_7 0x18406fdaUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_0 != 0xea5f3f59UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_1 != 0x012a803aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_2 != 0xee2ee853UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_3 != 0x9741f527UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_4 != 0x3e784a20UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_5 != 0x03362dd1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_6 != 0x6c73fac8UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_7 != 0x780d18baUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_0 0xea5f3f59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_1 0x012a803aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_2 0xee2ee853UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_3 0x9741f527UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_4 0x3e784a20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_5 0x03362dd1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_6 0x6c73fac8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS_7 0x780d18baUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetHoldRegs_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse* response)
{
    unsigned char input[4436], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest_encode(request, input, 4436, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetHoldRegs_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest* request)
{
    unsigned char output[4444];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_0 != 0x3fcafecfUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_1 != 0xef1de9aeUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_2 != 0xd356c692UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_3 != 0x7f68faffUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_4 != 0xe0fc58ebUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_5 != 0x3907ec44UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_6 != 0x08b51642UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_7 != 0x1242b2d7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_0 0x3fcafecfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_1 0xef1de9aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_2 0xd356c692UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_3 0x7f68faffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_4 0xe0fc58ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_5 0x3907ec44UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_6 0x08b51642UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID_7 0x1242b2d7UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_0 != 0x00d509cdUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_1 != 0x3a820a2aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_2 != 0x07f30abfUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_3 != 0xe2ce66e1UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_4 != 0xc6d01241UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_5 != 0x1e7b6fb4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_6 != 0x87c55996UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_7 != 0x68937277UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_0 0x00d509cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_1 0x3a820a2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_2 0x07f30abfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_3 0xe2ce66e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_4 0xc6d01241UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_5 0x1e7b6fb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_6 0x87c55996UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD_7 0x68937277UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetPayload_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_SetPayloadRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_SetPayloadResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetPayloadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetPayloadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetPayloadRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetPayloadResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetPayload_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_SetPayloadRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetPayloadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetPayloadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetPayloadRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetPayload_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_SetPayloadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetPayloadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_0 != 0xbe63fdafUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_1 != 0x116100e9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_2 != 0x5832ec71UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_3 != 0x0a8962f1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_4 != 0x608c2f48UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_5 != 0xd90737beUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_6 != 0x96a82ea0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_7 != 0x1003e33aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_0 0xbe63fdafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_1 0x116100e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_2 0x5832ec71UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_3 0x0a8962f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_4 0x608c2f48UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_5 0xd90737beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_6 0x96a82ea0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN_7 0x1003e33aUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetSafeSkin_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetSafeSkin_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetSafeSkin_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_0 != 0x3aa65fabUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_1 != 0x61e92755UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_2 != 0xc07a5074UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_3 != 0xf64a1de8UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_4 != 0xe6e492d2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_5 != 0xd87f97e8UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_6 != 0x34bfffafUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_7 != 0x9181fe48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_0 0x3aa65fabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_1 0x61e92755UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_2 0xc07a5074UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_3 0xf64a1de8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_4 0xe6e492d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_5 0xd87f97e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_6 0x34bfffafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485_7 0x9181fe48UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminal485_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetTerminal485Request const* request,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetTerminal485Response* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetTerminal485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetTerminal485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetTerminal485Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetTerminal485Response_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminal485_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_SetTerminal485Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetTerminal485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetTerminal485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetTerminal485Request_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminal485_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_bringup_SetTerminal485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetTerminal485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_0 != 0x879c16cbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_1 != 0x6c0c4a40UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_2 != 0x071266f9UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_3 != 0x755b8046UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_4 != 0xb659db7dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_5 != 0x456044b1UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_6 != 0xf0b27111UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_7 != 0xeff1a556UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_0 0x879c16cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_1 0x6c0c4a40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_2 0x071266f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_3 0x755b8046UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_4 0xb659db7dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_5 0x456044b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_6 0xf0b27111UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS_7 0xeff1a556UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_0 != 0xf7e35508UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_1 != 0xcecf48beUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_2 != 0x97fe449cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_3 != 0x48e0dcc1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_4 != 0x7499eb0bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_5 != 0x271f24acUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_6 != 0x8bc8d340UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_7 != 0xfed5a3dfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_0 0xf7e35508UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_1 0xcecf48beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_2 0x97fe449cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_3 0x48e0dcc1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_4 0x7499eb0bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_5 0x271f24acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_6 0x8bc8d340UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR_7 0xfed5a3dfUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedFactor_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedFactor_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedFactor_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_0 != 0x6b4e8144UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_1 != 0xbee28b2bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_2 != 0x68cd23f6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_3 != 0xc5bf4e3aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_4 != 0x67f4714bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_5 != 0x214b18f8UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_6 != 0x565c791aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_7 != 0xd7bf97c0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_0 0x6b4e8144UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_1 0xbee28b2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_2 0x68cd23f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_3 0xc5bf4e3aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_4 0x67f4714bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_5 0x214b18f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_6 0x565c791aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ_7 0xd7bf97c0UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedJ_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_SpeedJRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_SpeedJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SpeedJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SpeedJResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_SpeedJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_SpeedJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SpeedJRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedJ_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_SpeedJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SpeedJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_0 != 0x162d3fa5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_1 != 0x6b54da05UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_2 != 0x466358fcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_3 != 0x2356af5eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_4 != 0xb6779beeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_5 != 0x4c962b5dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_6 != 0x412c3376UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_7 != 0x400c130bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_0 0x162d3fa5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_1 0x6b54da05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_2 0x466358fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_3 0x2356af5eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_4 0xb6779beeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_5 0x4c962b5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_6 0x412c3376UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL_7 0x400c130bUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedL_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_SpeedLRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_SpeedLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SpeedLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SpeedLResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_SpeedL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_SpeedLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SpeedLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SpeedLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SpeedLRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SpeedL_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_SpeedLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SpeedLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_0 != 0x93cb52f2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_1 != 0x662452b4UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_2 != 0x3d4ef833UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_3 != 0x30f9a07fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_4 != 0xf060ea7eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_5 != 0x9895fc31UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_6 != 0xeeccc258UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_7 != 0xfb8d0dbbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_0 0x93cb52f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_1 0x662452b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_2 0x3d4ef833UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_3 0x30f9a07fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_4 0xf060ea7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_5 0x9895fc31UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_6 0xeeccc258UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG_7 0xfb8d0dbbUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartDrag_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_StartDragRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_StartDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StartDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StartDragResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartDrag_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_StartDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StartDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartDrag_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_StartDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StartDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_0 != 0x42d1e850UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_1 != 0xbe382f8dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_2 != 0x8ea67675UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_3 != 0x6f810921UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_4 != 0x5037f56cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_5 != 0xb49bc310UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_6 != 0x96117fd5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_7 != 0x4ebd89fcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_0 0x42d1e850UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_1 0xbe382f8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_2 0x8ea67675UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_3 0x6f810921UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_4 0x5037f56cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_5 0xb49bc310UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_6 0x96117fd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE_7 0x4ebd89fcUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartFCTrace_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartFCTrace_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartFCTrace_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_0 != 0x313c0e34UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_1 != 0x3e4fa178UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_2 != 0xa898418aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_3 != 0xab957153UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_4 != 0xbd42c705UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_5 != 0x2d296013UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_6 != 0xd5d04296UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_7 != 0xa2b9b429UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_0 0x313c0e34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_1 0x3e4fa178UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_2 0xa898418aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_3 0xab957153UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_4 0xbd42c705UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_5 0x2d296013UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_6 0xd5d04296UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH_7 0xa2b9b429UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartPath_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_bringup_StartPathRequest const* request,
                                                                              roswasmc_bounded_1_dobot_bringup_StartPathResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartPathResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartPathResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StartPathRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StartPathResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartPath_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_StartPathRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartPathRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartPathRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StartPathRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartPath_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_StartPathResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StartPathResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_0 != 0xbcb9943dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_1 != 0x1dc43ae3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_2 != 0xd593190cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_3 != 0xef11cadaUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_4 != 0x2176a8dfUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_5 != 0xbc14e473UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_6 != 0xabb7e7edUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_7 != 0x98829f02UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_0 0xbcb9943dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_1 0x1dc43ae3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_2 0xd593190cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_3 0xef11cadaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_4 0x2176a8dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_5 0xbc14e473UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_6 0xabb7e7edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE_7 0x98829f02UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartTrace_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_StartTraceRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_StartTraceResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartTraceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartTraceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StartTraceRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StartTraceResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartTrace_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_StartTraceRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StartTraceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StartTraceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StartTraceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StartTrace_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_StartTraceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StartTraceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_0 != 0x595eec18UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_1 != 0x1219f674UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_2 != 0x3008d341UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_3 != 0x78a6d7dcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_4 != 0xbe189b26UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_5 != 0xe020dbcfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_6 != 0x96f1a669UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_7 != 0xb070a643UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_0 0x595eec18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_1 0x1219f674UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_2 0x3008d341UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_3 0x78a6d7dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_4 0xbe189b26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_5 0xe020dbcfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_6 0x96f1a669UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG_7 0xb070a643UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopDrag_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_bringup_StopDragRequest const* request,
                                                                             roswasmc_bounded_1_dobot_bringup_StopDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StopDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StopDragResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_StopDrag_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_StopDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StopDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopDrag_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_StopDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StopDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_0 != 0xb32617e6UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_1 != 0x1f8f3c38UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_2 != 0x62f89e6cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_3 != 0x9141aea7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_4 != 0xb58e070aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_5 != 0xf3a5d18bUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_6 != 0x39d8eadaUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_7 != 0x0874b48eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_0 0xb32617e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_1 0x1f8f3c38UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_2 0x62f89e6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_3 0x9141aea7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_4 0xb58e070aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_5 0xf3a5d18bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_6 0x39d8eadaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT_7 0x0874b48eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopScript_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_bringup_StopScriptRequest const* request,
                                                                               roswasmc_bounded_1_dobot_bringup_StopScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StopScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StopScriptResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopScript_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_StopScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StopScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopScript_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_StopScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StopScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_0 != 0x88e9210cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_1 != 0xffad4812UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_2 != 0xfc28a51aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_3 != 0xa1d8a996UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_4 != 0xe34252a7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_5 != 0xe5eb3dc1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_6 != 0x7e4c8cc0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_7 != 0xa5fb901eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_0 0x88e9210cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_1 0xffad4812UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_2 0xfc28a51aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_3 0xa1d8a996UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_4 0xe34252a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_5 0xe5eb3dc1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_6 0x7e4c8cc0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG_7 0xa5fb901eUL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopmoveJog_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopmoveJog_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_StopmoveJog_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_0 != 0xb63bcd2cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_1 != 0x3e791ee3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_2 != 0x2bb9f421UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_3 != 0xcf4b2e05UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_4 != 0x928ad830UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_5 != 0x7cb97813UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_6 != 0xdd37191cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_7 != 0x6fc4adc6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_0 0xb63bcd2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_1 0x3e791ee3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_2 0x2bb9f421UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_3 0xcf4b2e05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_4 0x928ad830UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_5 0x7cb97813UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_6 0xdd37191cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC_7 0x6fc4adc6UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Sync_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_SyncRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_SyncResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SyncResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SyncResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SyncRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SyncResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Sync_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_SyncRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SyncRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SyncRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SyncRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Sync_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_SyncResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SyncResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_0 != 0x1dd137fbUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_1 != 0x58a77d57UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_2 != 0x66d98d24UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_3 != 0xdc0b88b9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_4 != 0x5b1b387dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_5 != 0x76c7d798UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_6 != 0x3a608ecaUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_7 != 0x548f6f61UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_0 0x1dd137fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_1 0x58a77d57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_2 0x66d98d24UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_3 0xdc0b88b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_4 0x5b1b387dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_5 0x76c7d798UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_6 0x3a608ecaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL_7 0x548f6f61UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SyncAll_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_bringup_SyncAllRequest const* request,
                                                                            roswasmc_bounded_1_dobot_bringup_SyncAllResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SyncAllResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SyncAllResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_SyncAllRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_SyncAllResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_SyncAll_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_SyncAllRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_SyncAllRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_SyncAllRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_SyncAllRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_SyncAll_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_bringup_SyncAllResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_SyncAllResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_0 != 0x7c28d53aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_1 != 0x6665e11aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_2 != 0x1bac4795UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_3 != 0x1defa71fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_4 != 0x50570715UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_5 != 0xc71dc2e5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_6 != 0x8e94ebeaUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_7 != 0x30eb1b71UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_0 0x7c28d53aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_1 0x6665e11aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_2 0x1bac4795UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_3 0x1defa71fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_4 0x50570715UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_5 0xc71dc2e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_6 0x8e94ebeaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED_7 0x30eb1b71UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TCPSpeed_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest const* request,
                                                                             roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_TCPSpeed_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TCPSpeed_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_0 != 0x15865998UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_1 != 0xe6118735UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_2 != 0x50baf42dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_3 != 0xbcba4419UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_4 != 0xcbd53705UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_5 != 0x1f75c3d7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_6 != 0x8af3f46cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_7 != 0xec567308UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_0 0x15865998UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_1 0xe6118735UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_2 0x50baf42dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_3 0xbcba4419UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_4 0xcbd53705UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_5 0x1f75c3d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_6 0x8af3f46cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND_7 0xec567308UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_0 != 0x10d48ce9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_1 != 0x11562a0eUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_2 != 0x46b3d9a6UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_3 != 0x5bba3d15UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_4 != 0x85fd1472UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_5 != 0x858276f0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_6 != 0xcb5ea2ebUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_7 != 0xb88b67e6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_0 0x10d48ce9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_1 0x11562a0eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_2 0x46b3d9a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_3 0x5bba3d15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_4 0x85fd1472UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_5 0x858276f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_6 0xcb5ea2ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD_7 0xb88b67e6UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpDashboard_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse* response)
{
    unsigned char input[260], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpDashboard_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpDashboard_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse const* response)
{
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse_encode(response, input + 8, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_0 != 0x037046daUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_1 != 0x301de8fcUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_2 != 0x9143067cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_3 != 0x167218e4UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_4 != 0xc599d458UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_5 != 0x59fae6d9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_6 != 0x448befdcUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_7 != 0xc816e856UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_0 0x037046daUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_1 0x301de8fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_2 0x9143067cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_3 0x167218e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_4 0xc599d458UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_5 0x59fae6d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_6 0x448befdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA_7 0xc816e856UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpRealData_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest const* request,
                                                                                roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse* response)
{
    unsigned char input[8], output[20];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 20);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 20 || roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpRealData_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_TcpRealData_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse const* response)
{
    unsigned char input[28];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse_encode(response, input + 8, 20, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_0 != 0xca7ed4e7UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_1 != 0xed63339dUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_2 != 0xb9eacfc2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_3 != 0x916ebe2bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_4 != 0x09f2f383UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_5 != 0xb37237f2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_6 != 0x92aa9423UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_7 != 0xa9888b36UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_0 0xca7ed4e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_1 0xed63339dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_2 0xb9eacfc2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_3 0x916ebe2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_4 0x09f2f383UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_5 0xb37237f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_6 0x92aa9423UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL_7 0xa9888b36UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Tool_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_ToolRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_ToolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ToolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ToolResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Tool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ToolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Tool_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_ToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_0 != 0x34ec8dbdUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_1 != 0xb1cab07dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_2 != 0x3e41c7ccUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_3 != 0x97aacfc9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_4 != 0x314990a0UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_5 != 0x648a1a28UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_6 != 0xb864ad51UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_7 != 0x0ab5e106UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_0 0x34ec8dbdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_1 0xb1cab07dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_2 0x3e41c7ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_3 0x97aacfc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_4 0x314990a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_5 0x648a1a28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_6 0xb864ad51UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI_7 0x0ab5e106UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolAI_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolAIRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolAIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolAIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolAIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ToolAIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ToolAIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_ToolAI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ToolAIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolAIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolAIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ToolAIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolAI_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ToolAIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ToolAIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_0 != 0x21cbeb56UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_1 != 0x17f2abfeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_2 != 0x7e129a79UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_3 != 0xa828ca33UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_4 != 0x4c424cafUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_5 != 0x0064108aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_6 != 0x92d3405bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_7 != 0x0d25cbd1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_0 0x21cbeb56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_1 0x17f2abfeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_2 0x7e129a79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_3 0xa828ca33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_4 0x4c424cafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_5 0x0064108aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_6 0x92d3405bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI_7 0x0d25cbd1UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDI_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolDIRequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolDIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ToolDIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ToolDIResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_ToolDI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ToolDIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ToolDIRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDI_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ToolDIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ToolDIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_0 != 0xa6b4a179UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_1 != 0x1f90d94dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_2 != 0xbb6e1b93UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_3 != 0x8fdd3746UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_4 != 0xdc6a1e47UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_5 != 0x52b6fe88UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_6 != 0xca240dfeUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_7 != 0xc99e58b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_0 0xa6b4a179UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_1 0x1f90d94dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_2 0xbb6e1b93UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_3 0x8fdd3746UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_4 0xdc6a1e47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_5 0x52b6fe88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_6 0xca240dfeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO_7 0xc99e58b5UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDO_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolDORequest const* request,
                                                                           roswasmc_bounded_1_dobot_bringup_ToolDOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ToolDORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ToolDOResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_ToolDO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_ToolDORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ToolDORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDO_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_bringup_ToolDOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ToolDOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_0 != 0x18b8d100UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_1 != 0xe0c87187UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_2 != 0x55286bfeUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_3 != 0x8ca1a603UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_4 != 0x87b9f09cUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_5 != 0xf1630b4fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_6 != 0x27483fd7UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_7 != 0x181ee589UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_0 0x18b8d100UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_1 0xe0c87187UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_2 0x55286bfeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_3 0x8ca1a603UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_4 0x87b9f09cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_5 0xf1630b4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_6 0x27483fd7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE_7 0x181ee589UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDOExecute_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDOExecute_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_ToolDOExecute_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_0 != 0x7390f358UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_1 != 0xf4081161UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_2 != 0xfc462e5cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_3 != 0x2618e10eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_4 != 0xb8a9d228UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_5 != 0x1c65b628UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_6 != 0x26ac5c9cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_7 != 0xe0635120UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_0 0x7390f358UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_1 0xf4081161UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_2 0xfc462e5cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_3 0x2618e10eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_4 0xb8a9d228UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_5 0x1c65b628UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_6 0x26ac5c9cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER_7 0xe0635120UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_User_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_UserRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_UserResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_UserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_UserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_UserRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_UserResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_User_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_UserRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_UserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_UserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_UserRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_User_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_UserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_UserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_0 != 0xdbbc03edUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_1 != 0x709d327eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_2 != 0xa73b405fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_3 != 0x36374dc9UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_4 != 0xd89f2d25UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_5 != 0xba51df1bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_6 != 0x6b793c77UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_7 != 0x3cbc9166UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_0 0xdbbc03edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_1 0x709d327eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_2 0xa73b405fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_3 0x36374dc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_4 0xd89f2d25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_5 0xba51df1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_6 0x6b793c77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT_7 0x3cbc9166UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Wait_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dobot_bringup_WaitRequest const* request,
                                                                         roswasmc_bounded_1_dobot_bringup_WaitResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_WaitResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_WaitResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_WaitRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_WaitResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_Wait_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_WaitRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_WaitRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_WaitRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_WaitRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_Wait_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dobot_bringup_WaitResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_WaitResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_0 != 0x52d2d978UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_1 != 0xab131176UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_2 != 0xbd82ee43UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_3 != 0xd96a096cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_4 != 0x39bd548bUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_5 != 0xa23658d2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_6 != 0xe260005bUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_7 != 0xb3b334e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_0 0x52d2d978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_1 0xab131176UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_2 0xbd82ee43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_3 0xd96a096cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_4 0x39bd548bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_5 0xa23658d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_6 0xe260005bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE_7 0xb3b334e7UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_pause_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_bringup_pauseRequest const* request,
                                                                          roswasmc_bounded_1_dobot_bringup_pauseResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_pauseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_pauseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_bringup_pauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_bringup_pauseResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_dobot_bringup_pause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_bringup_pauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_bringup_pauseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_bringup_pauseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_bringup_pauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_bringup_pause_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_bringup_pauseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_bringup_pauseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
