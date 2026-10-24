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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_97727E28B692C66F8D375873902AED1D11AC0ECD08DA2CAA7EBF2F5ACF9AFDC6
#define UWVM_ROS_BOUNDED_INTERFACES_97727E28B692C66F8D375873902AED1D11AC0ECD08DA2CAA7EBF2F5ACF9AFDC6
#include <dobot/c/ros1/dobot-ros1-demo-v3-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_0 != 0x8049d908UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_1 != 0xfc54e59cUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_2 != 0x181b2542UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_3 != 0xeb78f50eUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_4 != 0x088beedcUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_5 != 0xe8e91e91UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_6 != 0x754f6197UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_7 != 0xe166fa36UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_0 0x8049d908UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_1 0xfc54e59cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_2 0x181b2542UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_3 0xeb78f50eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_4 0x088beedcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_5 0xe8e91e91UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_6 0x754f6197UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI_7 0xe166fa36UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AI_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v3_AIRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v3_AIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_AIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_AIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_AI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_AIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_AIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_AI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_AIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_AIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_0 != 0x910253ccUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_1 != 0x4826be48UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_2 != 0x1a739bb8UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_3 != 0x0ea11773UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_4 != 0x4c08842eUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_5 != 0x252ac0ebUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_6 != 0x0ca3a5d1UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_7 != 0xe1ab7d4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_0 0x910253ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_1 0x4826be48UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_2 0x1a739bb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_3 0x0ea11773UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_4 0x4c08842eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_5 0x252ac0ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_6 0x0ca3a5d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO_7 0xe1ab7d4fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AO_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v3_AORequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v3_AOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_AORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_AOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_AO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_AORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_AORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_AO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_AOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_AOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_0 != 0x4d465240UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_1 != 0x215108b0UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_2 != 0x097bd983UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_3 != 0x7bc7de26UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_4 != 0xc4440c69UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_5 != 0x6c1bdacdUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_6 != 0x749f5b27UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_7 != 0xc52beafaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_0 0x4d465240UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_1 0x215108b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_2 0x097bd983UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_3 0x7bc7de26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_4 0xc4440c69UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_5 0x6c1bdacdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_6 0x749f5b27UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE_7 0xc52beafaUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AOExecute_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_AOExecute_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AOExecute_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_0 != 0x7b68326bUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_1 != 0x8c2a0572UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_2 != 0x711051e5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_3 != 0xba255333UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_4 != 0xd6e89175UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_5 != 0x74152d11UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_6 != 0x31a8de85UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_7 != 0xa159a375UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_0 0x7b68326bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_1 0x8c2a0572UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_2 0x711051e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_3 0xba255333UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_4 0xd6e89175UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_5 0x74152d11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_6 0x31a8de85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ_7 0xa159a375UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AccJ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_AccJRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_AccJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AccJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AccJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_AccJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_AccJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_AccJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_AccJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AccJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AccJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_AccJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_AccJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_AccJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_AccJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_0 != 0xddf64130UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_1 != 0x5589b523UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_2 != 0xb2f6f28fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_3 != 0x46468213UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_4 != 0x108cff69UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_5 != 0x5862502fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_6 != 0xecef2db9UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_7 != 0xea8333ceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_0 0xddf64130UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_1 0x5589b523UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_2 0xb2f6f28fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_3 0x46468213UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_4 0x108cff69UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_5 0x5862502fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_6 0xecef2db9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL_7 0xea8333ceUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_AccL_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_AccLRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_AccLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AccLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AccLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_AccLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_AccLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_AccL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_AccLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_AccLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_AccLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_AccLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_AccL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_AccLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_AccLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_0 != 0x27ca8e0cUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_1 != 0xd34c26b0UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_2 != 0xaaee7959UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_3 != 0x44ce0e22UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_4 != 0xf6062a5fUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_5 != 0x0c51c0aeUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_6 != 0xcc36a111UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_7 != 0x15da8c81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_0 0x27ca8e0cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_1 0xd34c26b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_2 0xaaee7959UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_3 0x44ce0e22UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_4 0xf6062a5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_5 0x0c51c0aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_6 0xcc36a111UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC_7 0x15da8c81UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Arc_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_rosdemo_v3_ArcRequest const* request,
                                                                     roswasmc_bounded_1_rosdemo_v3_ArcResponse* response)
{
    unsigned char input[4260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ArcResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ArcResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_ArcRequest_encode(request, input, 4260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ArcResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Arc_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ArcRequest* request)
{
    unsigned char output[4268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ArcRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ArcRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ArcRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Arc_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ArcResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ArcResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_0 != 0x55706a05UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_1 != 0x632102f2UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_2 != 0xd9c8405fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_3 != 0x33b6cc2fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_4 != 0x8d6aac4eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_5 != 0x6ea4faebUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_6 != 0x5e13a5ebUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_7 != 0x86fd2a81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_0 0x55706a05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_1 0x632102f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_2 0xd9c8405fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_3 0x33b6cc2fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_4 0x8d6aac4eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_5 0x6ea4faebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_6 0x5e13a5ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH_7 0x86fd2a81UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Arch_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_ArchRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_ArchResponse* response)
{
    unsigned char input[4168], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ArchResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ArchResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ArchRequest_encode(request, input, 4168, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ArchResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Arch_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ArchRequest* request)
{
    unsigned char output[4176];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ArchRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ArchRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ArchRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Arch_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ArchResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ArchResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_0 != 0x3aca1229UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_1 != 0xdd406e3dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_2 != 0xe72835c2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_3 != 0x3281a0c4UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_4 != 0x6bb490bbUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_5 != 0xf0b7513eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_6 != 0xe9171143UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_7 != 0x2fab2ac6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_0 0x3aca1229UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_1 0xdd406e3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_2 0xe72835c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_3 0x3281a0c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_4 0x6bb490bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_5 0xf0b7513eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_6 0xe9171143UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL_7 0x2fab2ac6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_BrakeControl_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_BrakeControl_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_BrakeControl_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_0 != 0x9fa3aa63UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_1 != 0x806a3515UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_2 != 0xb39b3eefUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_3 != 0x9326675dUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_4 != 0x1174b33aUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_5 != 0x121af54aUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_6 != 0xc1cdcc0eUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_7 != 0x427d9ee2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_0 0x9fa3aa63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_1 0x806a3515UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_2 0xb39b3eefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_3 0x9326675dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_4 0x1174b33aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_5 0x121af54aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_6 0xc1cdcc0eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP_7 0x427d9ee2UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_CP_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v3_CPRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v3_CPResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_CPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_CPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_CPRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_CPResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_CP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_CPRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_CPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_CPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_CPRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_CP_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_CPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_CPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_0 != 0x2a5546d4UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_1 != 0x028435bfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_2 != 0xfa78f9f7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_3 != 0x41c44fcaUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_4 != 0x2f262412UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_5 != 0xa955ec7fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_6 != 0x55cf4389UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_7 != 0x09babfb1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_0 0x2a5546d4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_1 0x028435bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_2 0xfa78f9f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_3 0x41c44fcaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_4 0x2f262412UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_5 0xa955ec7fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_6 0x55cf4389UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE_7 0x09babfb1UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Circle_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_CircleRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_CircleResponse* response)
{
    unsigned char input[4264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_CircleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_CircleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_CircleRequest_encode(request, input, 4264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_CircleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Circle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_CircleRequest* request)
{
    unsigned char output[4272];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_CircleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_CircleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_CircleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Circle_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_CircleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_CircleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_0 != 0xdd4cf422UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_1 != 0x975195c8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_2 != 0x6bbb3776UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_3 != 0xc136263bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_4 != 0x80c6c412UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_5 != 0x69907a3fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_6 != 0x094fe5fcUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_7 != 0x53d80249UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_0 0xdd4cf422UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_1 0x975195c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_2 0x6bbb3776UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_3 0xc136263bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_4 0x80c6c412UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_5 0x69907a3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_6 0x094fe5fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR_7 0x53d80249UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ClearError_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ClearError_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ClearError_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_0 != 0x2afa3237UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_1 != 0xd6fce070UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_2 != 0x18cae030UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_3 != 0xa106b2b9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_4 != 0xd95bb930UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_5 != 0x4f5d850aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_6 != 0xa6f00f4dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_7 != 0x5e9d9e7eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_0 0x2afa3237UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_1 0xd6fce070UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_2 0x18cae030UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_3 0xa106b2b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_4 0xd95bb930UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_5 0x4f5d850aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_6 0xa6f00f4dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT_7 0x5e9d9e7eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ContinueScript_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ContinueScript_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ContinueScript_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_0 != 0x0593efc2UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_1 != 0x8d6061fcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_2 != 0x10d41d4fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_3 != 0xb7eded3aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_4 != 0x0f0905b0UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_5 != 0xd577556fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_6 != 0x6ffadaccUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_7 != 0x28ad1ef9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_0 0x0593efc2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_1 0x8d6061fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_2 0x10d41d4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_3 0xb7eded3aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_4 0x0f0905b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_5 0xd577556fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_6 0x6ffadaccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES_7 0x28ad1ef9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Continues_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_ContinuesRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_ContinuesResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ContinuesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ContinuesResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ContinuesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ContinuesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Continues_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ContinuesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ContinuesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ContinuesRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ContinuesRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Continues_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_ContinuesResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ContinuesResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_0 != 0x73cd7e9bUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_1 != 0x9abb885bUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_2 != 0xd3f86378UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_3 != 0x09ad58deUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_4 != 0xec4cacf9UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_5 != 0x51c30aaaUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_6 != 0xcb0fff74UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_7 != 0xd6a7d5b7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_0 0x73cd7e9bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_1 0x9abb885bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_2 0xd3f86378UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_3 0x09ad58deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_4 0xec4cacf9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_5 0x51c30aaaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_6 0xcb0fff74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI_7 0xd6a7d5b7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DI_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v3_DIRequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v3_DIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_DIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_DI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_DIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_DI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_DIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_0 != 0xf59b7203UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_1 != 0xfe80daecUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_2 != 0x5982a65eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_3 != 0xa07c5b32UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_4 != 0xe9e4844eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_5 != 0x0edaeea9UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_6 != 0xdba06deeUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_7 != 0x984bd5bbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_0 0xf59b7203UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_1 0xfe80daecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_2 0x5982a65eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_3 0xa07c5b32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_4 0xe9e4844eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_5 0x0edaeea9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_6 0xdba06deeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP_7 0x984bd5bbUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DIGroup_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_DIGroupRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_DIGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DIGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DIGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_DIGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DIGroupResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_DIGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_DIGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DIGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DIGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DIGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DIGroup_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_DIGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DIGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_0 != 0x0a25b894UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_1 != 0x18b721bcUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_2 != 0x248c31a3UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_3 != 0xa7dbd251UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_4 != 0x99673564UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_5 != 0x424c202fUL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_6 != 0xaf558602UL ||                                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_7 != 0x70a8b860UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_0 0x0a25b894UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_1 0x18b721bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_2 0x248c31a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_3 0xa7dbd251UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_4 0x99673564UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_5 0x424c202fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_6 0xaf558602UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO_7 0x70a8b860UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DO_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_rosdemo_v3_DORequest const* request,
                                                                    roswasmc_bounded_1_rosdemo_v3_DOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_DORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_DO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_DORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_DO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_DOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_0 != 0x003fff3eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_1 != 0x3adc76f1UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_2 != 0xf63e75b3UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_3 != 0x68c119f4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_4 != 0xe8b76af5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_5 != 0x77bab40eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_6 != 0x239e71a2UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_7 != 0xee6311e0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_0 0x003fff3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_1 0x3adc76f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_2 0xf63e75b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_3 0x68c119f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_4 0xe8b76af5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_5 0x77bab40eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_6 0x239e71a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE_7 0xee6311e0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DOExecute_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_DOExecute_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DOExecute_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_0 != 0x50f58d45UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_1 != 0xc6f6d4c7UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_2 != 0x51ef26efUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_3 != 0xbd45376eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_4 != 0xd6865890UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_5 != 0x98949d23UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_6 != 0x5024a6baUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_7 != 0x986980b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_0 0x50f58d45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_1 0xc6f6d4c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_2 0x51ef26efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_3 0xbd45376eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_4 0xd6865890UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_5 0x98949d23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_6 0x5024a6baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP_7 0x986980b5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DOGroup_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_DOGroupRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_DOGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_DOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DOGroupResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_DOGroup_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_DOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DOGroup_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_DOGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DOGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_0 != 0x7dc9efc0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_1 != 0xc2722079UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_2 != 0x61e9d634UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_3 != 0x1ed2e76bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_4 != 0xe6a0f34cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_5 != 0x3ff314d0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_6 != 0xec8ec8a3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_7 != 0xc4cab1b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_0 0x7dc9efc0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_1 0xc2722079UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_2 0x61e9d634UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_3 0x1ed2e76bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_4 0xe6a0f34cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_5 0x3ff314d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_6 0xec8ec8a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS_7 0xc4cab1b5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse* response)
{
    unsigned char input[5], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest_encode(request, input, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest* request)
{
    unsigned char output[13];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_0 != 0x6db09190UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_1 != 0x39ab4089UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_2 != 0x4fcf7ec2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_3 != 0xf151d4b1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_4 != 0xbfdce13dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_5 != 0x4a59edeaUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_6 != 0x51eb5080UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_7 != 0x40e2bf4cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_0 0x6db09190UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_1 0x39ab4089UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_2 0x4fcf7ec2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_3 0xf151d4b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_4 0xbfdce13dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_5 0x4a59edeaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_6 0x51eb5080UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT_7 0x40e2bf4cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DisableRobot_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DisableRobot_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_DisableRobot_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_0 != 0xdeadd24fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_1 != 0xddbca555UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_2 != 0x6af6d8b5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_3 != 0x7e6d760cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_4 != 0x4ae2e749UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_5 != 0x972f9ee4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_6 != 0x12508db5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_7 != 0x3a10027dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_0 0xdeadd24fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_1 0xddbca555UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_2 0x6af6d8b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_3 0x7e6d760cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_4 0x4ae2e749UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_5 0x972f9ee4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_6 0x12508db5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP_7 0x3a10027dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_EmergencyStop_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_EmergencyStop_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_EmergencyStop_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_0 != 0xbd1da39dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_1 != 0xa4ca6834UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_2 != 0x8666f936UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_3 != 0x79bb9bd1UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_4 != 0x5a4855d1UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_5 != 0xcfde449aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_6 != 0xf6a09d11UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_7 != 0xbff1ad5aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_0 0xbd1da39dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_1 0xa4ca6834UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_2 0x8666f936UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_3 0x79bb9bd1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_4 0x5a4855d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_5 0xcfde449aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_6 0xf6a09d11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT_7 0xbff1ad5aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_EnableRobot_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse* response)
{
    unsigned char input[132], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_EnableRobot_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_EnableRobot_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_0 != 0xaaa0b098UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_1 != 0xfe7c5bbcUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_2 != 0x1147945eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_3 != 0xa8b5a76dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_4 != 0x82546852UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_5 != 0xc0147228UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_6 != 0x7ff32db0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_7 != 0x3840221dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_0 0xaaa0b098UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_1 0xfe7c5bbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_2 0x1147945eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_3 0xa8b5a76dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_4 0x82546852UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_5 0xc0147228UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_6 0x7ff32db0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE_7 0x3840221dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetAngle_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v3_GetAngleRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v3_GetAngleResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetAngleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetAngleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetAngleRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetAngleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetAngle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetAngleRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetAngleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetAngleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetAngleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetAngle_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v3_GetAngleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetAngleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_0 != 0x9024d230UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_1 != 0xcd6af9eeUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_2 != 0x885207c7UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_3 != 0x607dfab0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_4 != 0x16a52af3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_5 != 0x2c1244b2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_6 != 0xc57de8d0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_7 != 0x7adf0ba9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_0 0x9024d230UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_1 0xcd6af9eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_2 0x885207c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_3 0x607dfab0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_4 0x16a52af3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_5 0x2c1244b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_6 0xc57de8d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS_7 0x7adf0ba9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetCoils_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetCoils_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_0 != 0x70f94283UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_1 != 0xc76a8833UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_2 != 0xd24bfc5cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_3 != 0x4ecbff54UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_4 != 0x4df15048UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_5 != 0xc9f9b066UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_6 != 0x51b2823fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_7 != 0x9b8714e0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_0 0x70f94283UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_1 0xc76a8833UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_2 0xd24bfc5cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_3 0x4ecbff54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_4 0x4df15048UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_5 0xc9f9b066UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_6 0x51b2823fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID_7 0x9b8714e0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetErrorID_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse* response)
{
    unsigned char input[1], output[72];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 72);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 72 || roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetErrorID_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetErrorID_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse const* response)
{
    unsigned char input[80];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse_encode(response, input + 8, 72, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_0 != 0xf3cc49f7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_1 != 0xca5f9b38UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_2 != 0xb707db7bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_3 != 0x06f5d326UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_4 != 0x91aad3e9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_5 != 0x405f74deUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_6 != 0x3ade1ed3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_7 != 0x55ee99fbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_0 0xf3cc49f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_1 0xca5f9b38UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_2 0xb707db7bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_3 0x06f5d326UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_4 0x91aad3e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_5 0x405f74deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_6 0x3ade1ed3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS_7 0x55ee99fbUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse* response)
{
    unsigned char input[4176], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest_encode(request, input, 4176, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest* request)
{
    unsigned char output[4184];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_0 != 0x1f472532UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_1 != 0xfef4fe68UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_2 != 0xea6e0eccUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_3 != 0xc22fe610UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_4 != 0x1218b784UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_5 != 0x87e1855dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_6 != 0xb5fcfbdcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_7 != 0x2a51d161UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_0 0x1f472532UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_1 0xfef4fe68UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_2 0xea6e0eccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_3 0xc22fe610UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_4 0x1218b784UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_5 0x87e1855dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_6 0xb5fcfbdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS_7 0x2a51d161UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetInBits_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetInBits_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetInBits_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_0 != 0x1fdbcabbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_1 != 0x2f39a361UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_2 != 0x3c40089aUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_3 != 0x28ca3ffbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_4 != 0xaa5c1b21UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_5 != 0xf9cb3110UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_6 != 0x411ad8bbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_7 != 0xc2baef60UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_0 0x1fdbcabbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_1 0x2f39a361UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_2 0x3c40089aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_3 0x28ca3ffbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_4 0xaa5c1b21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_5 0xf9cb3110UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_6 0x411ad8bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS_7 0xc2baef60UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetInRegs_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse* response)
{
    unsigned char input[4176], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest_encode(request, input, 4176, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetInRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest* request)
{
    unsigned char output[4184];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetInRegs_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_0 != 0x85070fedUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_1 != 0x9b026aafUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_2 != 0x387eef13UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_3 != 0x844a85ffUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_4 != 0x9b09bb51UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_5 != 0x88b5a571UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_6 != 0xd6819babUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_7 != 0x1c40df42UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_0 0x85070fedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_1 0x9b026aafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_2 0x387eef13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_3 0x844a85ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_4 0x9b09bb51UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_5 0x88b5a571UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_6 0xd6819babUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE_7 0x1c40df42UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest const* request,
                                                                                  roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_0 != 0xa78b802bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_1 != 0xd33333e3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_2 != 0xf3971f64UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_3 != 0xe06f5b6bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_4 != 0x2a911333UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_5 != 0xa1aa3588UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_6 != 0xf055a05fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_7 != 0x7fa7cf71UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_0 0xa78b802bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_1 0xd33333e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_2 0xf3971f64UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_3 0xe06f5b6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_4 0x2a911333UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_5 0xa1aa3588UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_6 0xf055a05fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE_7 0x7fa7cf71UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetPose_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_GetPoseRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_GetPoseResponse* response)
{
    unsigned char input[136], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetPoseRequest_encode(request, input, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_GetPose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_GetPoseRequest* request)
{
    unsigned char output[144];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetPose_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_GetPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_0 != 0x6f2d50f3UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_1 != 0x850501deUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_2 != 0x855f2594UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_3 != 0x597cbb49UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_4 != 0x4bff300fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_5 != 0x69ef7f71UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_6 != 0xd873fd41UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_7 != 0x54fe3765UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_0 0x6f2d50f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_1 0x850501deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_2 0x855f2594UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_3 0x597cbb49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_4 0x4bff300fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_5 0x69ef7f71UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_6 0xd873fd41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA_7 0x54fe3765UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetSixForceData_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetSixForceData_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetSixForceData_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_0 != 0xe805075fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_1 != 0x40bb5787UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_2 != 0xd0a99523UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_3 != 0xf62cb266UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_4 != 0x6d076423UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_5 != 0x0cc6eb87UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_6 != 0x51d0ed4bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_7 != 0x30ab6a7aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_0 0xe805075fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_1 0x40bb5787UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_2 0xd0a99523UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_3 0xf62cb266UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_4 0x6d076423UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_5 0x0cc6eb87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_6 0x51d0ed4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485_7 0x30ab6a7aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTerminal485_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request const* request,
                                                                                roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTerminal485_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTerminal485_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_0 != 0xf8f86d33UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_1 != 0x5411d042UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_2 != 0x6c950047UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_3 != 0x36f99870UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_4 != 0x7b7ba09dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_5 != 0xf30aafa7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_6 != 0xcbde1c12UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_7 != 0xe117d2bcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_0 0xf8f86d33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_1 0x5411d042UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_2 0x6c950047UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_3 0x36f99870UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_4 0x7b7ba09dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_5 0xf30aafa7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_6 0xcbde1c12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE_7 0xe117d2bcUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest const* request,
                                                                                   roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_0 != 0x597e0ed0UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_1 != 0xa9768c94UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_2 != 0xe4204101UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_3 != 0x8b51e8c6UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_4 != 0x069e8291UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_5 != 0xa97e4150UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_6 != 0x7b92e306UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_7 != 0x5e46c372UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_0 0x597e0ed0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_1 0xa9768c94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_2 0xe4204101UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_3 0x8b51e8c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_4 0x069e8291UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_5 0xa97e4150UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_6 0x7b92e306UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS_7 0x5e46c372UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest const* request,
                                                                                  roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_0 != 0x054117bbUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_1 != 0x613b6fe4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_2 != 0x48cb9600UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_3 != 0xed54f049UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_4 != 0x3d56d175UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_5 != 0x69fa588bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_6 != 0x12a4501dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_7 != 0xdfd02773UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_0 0x054117bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_1 0x613b6fe4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_2 0x48cb9600UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_3 0xed54f049UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_4 0x3d56d175UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_5 0x69fa588bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_6 0x12a4501dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION_7 0xdfd02773UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_InverseSolution_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse* response)
{
    unsigned char input[320], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest_encode(request, input, 320, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_InverseSolution_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest* request)
{
    unsigned char output[328];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_InverseSolution_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_0 != 0xffb86cbbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_1 != 0x7a5fed86UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_2 != 0x33822673UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_3 != 0xf5e72cdcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_4 != 0x8c3b9543UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_5 != 0xe00303c9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_6 != 0x75c04756UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_7 != 0x9fa47990UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_0 0xffb86cbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_1 0x7a5fed86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_2 0x33822673UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_3 0xf5e72cdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_4 0x8c3b9543UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_5 0xe00303c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_6 0x75c04756UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ_7 0x9fa47990UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_JointMovJ_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_JointMovJRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_JointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_JointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_JointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_JointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_JointMovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_JointMovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_JointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_JointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_JointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_JointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_JointMovJ_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_JointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_JointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_0 != 0xc04c6fa4UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_1 != 0xf24d1608UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_2 != 0xc203f63cUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_3 != 0x05469ea0UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_4 != 0xf3688b03UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_5 != 0x6f2e2095UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_6 != 0xdb7ad65fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_7 != 0xb313a984UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_0 0xc04c6fa4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_1 0xf24d1608UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_2 0xc203f63cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_3 0x05469ea0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_4 0xf3688b03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_5 0x6f2e2095UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_6 0xdb7ad65fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP_7 0xb313a984UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Jump_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_JumpRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_JumpResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_JumpResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_JumpResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_JumpRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_JumpResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Jump_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_JumpRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_JumpRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_JumpRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_JumpRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Jump_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_JumpResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_JumpResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_0 != 0x7ff65db5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_1 != 0x2bfeafb7UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_2 != 0xd50be8b1UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_3 != 0x4a74b576UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_4 != 0xba21ab5aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_5 != 0x325c21fdUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_6 != 0x342783abUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_7 != 0x433a2b0dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_0 0x7ff65db5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_1 0x2bfeafb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_2 0xd50be8b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_3 0x4a74b576UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_4 0xba21ab5aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_5 0x325c21fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_6 0x342783abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ_7 0x433a2b0dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_LimZ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_LimZRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_LimZResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_LimZResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_LimZResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_LimZRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_LimZResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_LimZ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_LimZRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_LimZRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_LimZRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_LimZRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_LimZ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_LimZResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_LimZResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_0 != 0x968c05fcUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_1 != 0x5af94629UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_2 != 0x088e7f56UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_3 != 0xea354663UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_4 != 0x8734078eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_5 != 0xe98091f0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_6 != 0xa1ee10aeUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_7 != 0x2ddebc42UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_0 0x968c05fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_1 0x5af94629UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_2 0x088e7f56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_3 0xea354663UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_4 0x8734078eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_5 0xe98091f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_6 0xa1ee10aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH_7 0x2ddebc42UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_LoadSwitch_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_LoadSwitch_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_LoadSwitch_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_0 != 0x2806f25aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_1 != 0x62c6067bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_2 != 0xcdd9a9f4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_3 != 0xc64dd552UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_4 != 0x33feb7aaUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_5 != 0xab50808eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_6 != 0x782cd1c9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_7 != 0xcea04dccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_0 0x2806f25aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_1 0x62c6067bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_2 0xcdd9a9f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_3 0xc64dd552UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_4 0x33feb7aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_5 0xab50808eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_6 0x782cd1c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE_7 0xcea04dccUL

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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ModbusClose_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse_decode(output, (size_t)r.length, &next))
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
    roswasmc_bounded_1_rosdemo_v3_ModbusClose_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
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
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ModbusClose_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_0 != 0x714b2356UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_1 != 0x7f3f7d53UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_2 != 0xfa4913b5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_3 != 0x738268b3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_4 != 0xc28fb64bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_5 != 0x3e60caeeUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_6 != 0xabe60d6dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_7 != 0x93642d1bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_0 0x714b2356UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_1 0x7f3f7d53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_2 0xfa4913b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_3 0x738268b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_4 0xc28fb64bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_5 0x3e60caeeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_6 0xabe60d6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE_7 0x93642d1bUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ModbusCreate_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse* response)
{
    unsigned char input[336], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest_encode(request, input, 336, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ModbusCreate_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest* request)
{
    unsigned char output[344];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ModbusCreate_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_0 != 0xd74d7ecbUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_1 != 0x7cc9a3a2UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_2 != 0x988dac78UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_3 != 0x2d58b94dUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_4 != 0x26ba9731UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_5 != 0x74dc6eccUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_6 != 0x1b37a361UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_7 != 0xcf686f4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_0 0xd74d7ecbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_1 0x7cc9a3a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_2 0x988dac78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_3 0x2d58b94dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_4 0x26ba9731UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_5 0x74dc6eccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_6 0x1b37a361UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ_7 0xcf686f4fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovJ_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_MovJRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_MovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_MovJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_MovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_0 != 0x2cd01076UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_1 != 0x0518a06eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_2 != 0xa5dd19d1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_3 != 0x000f761eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_4 != 0x5510a48fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_5 != 0x3ace3af4UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_6 != 0x7da6ba04UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_7 != 0x0ae020e8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_0 0x2cd01076UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_1 0x0518a06eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_2 0xa5dd19d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_3 0x000f761eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_4 0x5510a48fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_5 0x3ace3af4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_6 0x7da6ba04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT_7 0x0ae020e8UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovJExt_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_MovJExtRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_MovJExtResponse* response)
{
    unsigned char input[4172], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJExtResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJExtResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MovJExtRequest_encode(request, input, 4172, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MovJExtResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MovJExt_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MovJExtRequest* request)
{
    unsigned char output[4180];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJExtRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJExtRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MovJExtRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovJExt_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_MovJExtResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MovJExtResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_0 != 0x0173a872UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_1 != 0x1b94e77aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_2 != 0x3e372ddeUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_3 != 0xd815e43eUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_4 != 0x128e5a2aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_5 != 0xa8e08706UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_6 != 0x5d62bf80UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_7 != 0xe0779cb5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_0 0x0173a872UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_1 0x1b94e77aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_2 0x3e372ddeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_3 0xd815e43eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_4 0x128e5a2aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_5 0xa8e08706UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_6 0x5d62bf80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO_7 0xe0779cb5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovJIO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_MovJIORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_MovJIOResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MovJIORequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MovJIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MovJIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MovJIORequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovJIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovJIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MovJIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_MovJIO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_MovJIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MovJIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_0 != 0x64d4812bUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_1 != 0x6ac6d3f9UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_2 != 0x2175a2a5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_3 != 0x2c9e8f77UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_4 != 0xafbc4e07UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_5 != 0x545a3076UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_6 != 0x846d46e7UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_7 != 0x7a60a4c6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_0 0x64d4812bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_1 0x6ac6d3f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_2 0x2175a2a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_3 0x2c9e8f77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_4 0xafbc4e07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_5 0x545a3076UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_6 0x846d46e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL_7 0x7a60a4c6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovL_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_MovLRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_MovLResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MovLRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MovLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MovLRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_MovL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_MovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_0 != 0x4c408d3bUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_1 != 0xebdee6e7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_2 != 0x9a7515acUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_3 != 0x166c99edUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_4 != 0xdf6dfc42UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_5 != 0xc0fe41bfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_6 != 0x175e51a9UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_7 != 0x87654501UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_0 0x4c408d3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_1 0xebdee6e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_2 0x9a7515acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_3 0x166c99edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_4 0xdf6dfc42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_5 0xc0fe41bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_6 0x175e51a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO_7 0x87654501UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MovLIO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_MovLIORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_MovLIOResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovLIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovLIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MovLIORequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MovLIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MovLIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MovLIORequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MovLIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MovLIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MovLIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_MovLIO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_MovLIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MovLIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_0 != 0x658ab74eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_1 != 0x573381f2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_2 != 0x9573b2e3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_3 != 0x49b3611bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_4 != 0x260ecb8bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_5 != 0x04c22d82UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_6 != 0x0d12c08eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_7 != 0x80850be0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_0 0x658ab74eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_1 0x573381f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_2 0x9573b2e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_3 0x49b3611bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_4 0x260ecb8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_5 0x04c22d82UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_6 0x0d12c08eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG_7 0x80850be0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MoveJog_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_MoveJogRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_MoveJogResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_MoveJogRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_MoveJogResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_MoveJog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_MoveJogRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_MoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_MoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_MoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_MoveJog_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_MoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_MoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_0 != 0xa516b7f8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_1 != 0x4750865aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_2 != 0x4198d8b3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_3 != 0xd18e6946UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_4 != 0x9be533abUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_5 != 0xe0c1d07eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_6 != 0x2ac47504UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_7 != 0x629456daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_0 0xa516b7f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_1 0x4750865aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_2 0x4198d8b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_3 0xd18e6946UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_4 0x9be533abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_5 0xe0c1d07eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_6 0x2ac47504UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT_7 0x629456daUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PauseScript_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_PauseScript_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PauseScript_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_0 != 0xdf769f02UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_1 != 0x10544fc8UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_2 != 0xb97ee14bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_3 != 0xfe58ff85UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_4 != 0xf4ddb1c8UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_5 != 0xb6ca01f2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_6 != 0xed240f83UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_7 != 0x88d9828eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_0 0xdf769f02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_1 0x10544fc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_2 0xb97ee14bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_3 0xfe58ff85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_4 0xf4ddb1c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_5 0xb6ca01f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_6 0xed240f83UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD_7 0x88d9828eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PayLoad_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_PayLoadRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_PayLoadResponse* response)
{
    unsigned char input[16], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PayLoadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PayLoadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_PayLoadRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_PayLoadResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_PayLoad_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_PayLoadRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PayLoadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PayLoadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_PayLoadRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PayLoad_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_PayLoadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_PayLoadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_0 != 0xdb5fb93cUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_1 != 0x455f77dbUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_2 != 0xfd78203dUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_3 != 0x8603070cUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_4 != 0xeebf256bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_5 != 0x2893c513UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_6 != 0x815562caUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_7 != 0xebe1f397UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_0 0xdb5fb93cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_1 0x455f77dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_2 0xfd78203dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_3 0x8603070cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_4 0xeebf256bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_5 0x2893c513UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_6 0x815562caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION_7 0xebe1f397UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PositiveSolution_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest const* request,
                                                                                  roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse* response)
{
    unsigned char input[56], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PositiveSolution_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PositiveSolution_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_0 != 0x215e90a1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_1 != 0x06603a02UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_2 != 0x5ca9f98eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_3 != 0xe11e6c2dUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_4 != 0x39298b70UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_5 != 0x5c2b23e8UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_6 != 0xc1f60726UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_7 != 0x51bf85fbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_0 0x215e90a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_1 0x06603a02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_2 0x5ca9f98eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_3 0xe11e6c2dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_4 0x39298b70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_5 0x5c2b23e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_6 0xc1f60726UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON_7 0x51bf85fbUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PowerOn_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_PowerOnRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_PowerOnResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PowerOnResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PowerOnResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_PowerOnRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_PowerOnResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_PowerOn_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_PowerOnRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_PowerOnRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_PowerOnRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_PowerOnRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_PowerOn_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_PowerOnResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_PowerOnResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_0 != 0x686f7970UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_1 != 0xdbfce092UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_2 != 0xdfd69165UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_3 != 0x0db86cf5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_4 != 0xd90036f8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_5 != 0x87da3209UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_6 != 0x0a3eb74bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_7 != 0x68b7fb9fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_0 0x686f7970UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_1 0xdbfce092UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_2 0xdfd69165UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_3 0x0db86cf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_4 0xd90036f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_5 0x87da3209UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_6 0x0a3eb74bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ_7 0x68b7fb9fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_0 != 0xf71bfb6fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_1 != 0x40e14249UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_2 != 0xdbcfe74eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_3 != 0xc1fa5426UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_4 != 0x8e2c36f1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_5 != 0x39963a95UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_6 != 0x081ba7aeUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_7 != 0x4803c9f3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_0 0xf71bfb6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_1 0x40e14249UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_2 0xdbcfe74eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_3 0xc1fa5426UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_4 0x8e2c36f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_5 0x39963a95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_6 0x081ba7aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ_7 0x4803c9f3UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJ_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_RelMovJRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_RelMovJResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovJRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJ_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_RelMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_0 != 0xed8e07b3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_1 != 0xeb992c40UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_2 != 0x65d01bbfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_3 != 0x6ada04a6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_4 != 0x10043d53UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_5 != 0xf6eb6cbfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_6 != 0x22c708f9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_7 != 0x250dec8eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_0 0xed8e07b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_1 0xeb992c40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_2 0x65d01bbfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_3 0x6ada04a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_4 0x10043d53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_5 0xf6eb6cbfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_6 0x22c708f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL_7 0x250dec8eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovJTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_0 != 0x96613e5fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_1 != 0x0de585acUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_2 != 0xca0018d3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_3 != 0x0d46331eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_4 != 0x572b6287UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_5 != 0xf98ddf20UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_6 != 0x92f951f8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_7 != 0x8935584dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_0 0x96613e5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_1 0x0de585acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_2 0xca0018d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_3 0x0d46331eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_4 0x572b6287UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_5 0xf98ddf20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_6 0x92f951f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER_7 0x8935584dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJUser_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovJUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovJUser_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_0 != 0x8267af2eUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_1 != 0x330f11e8UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_2 != 0x2d821a2fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_3 != 0x4f2a6febUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_4 != 0xc5905b09UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_5 != 0x8b548095UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_6 != 0xf5f7cb61UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_7 != 0x49426ea0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_0 0x8267af2eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_1 0x330f11e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_2 0x2d821a2fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_3 0x4f2a6febUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_4 0xc5905b09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_5 0x8b548095UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_6 0xf5f7cb61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL_7 0x49426ea0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovL_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_RelMovLRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_RelMovLResponse* response)
{
    unsigned char input[24], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovLRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovL_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_RelMovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_0 != 0xbfacb988UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_1 != 0x4e5313dcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_2 != 0xfbc46cecUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_3 != 0x43139756UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_4 != 0xf4417e01UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_5 != 0xba43b19eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_6 != 0x57222201UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_7 != 0xd57c0e47UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_0 0xbfacb988UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_1 0x4e5313dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_2 0xfbc46cecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_3 0x43139756UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_4 0xf4417e01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_5 0xba43b19eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_6 0x57222201UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL_7 0xd57c0e47UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovLTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovLTool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovLTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_0 != 0x36650695UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_1 != 0x1418392cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_2 != 0x3748e76eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_3 != 0xb24b4ca8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_4 != 0x82493f2eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_5 != 0xad66b3d6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_6 != 0x3e408f60UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_7 != 0x8a705ca7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_0 0x36650695UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_1 0x1418392cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_2 0x3748e76eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_3 0xb24b4ca8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_4 0x82493f2eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_5 0xad66b3d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_6 0x3e408f60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER_7 0x8a705ca7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovLUser_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse* response)
{
    unsigned char input[4216], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest_encode(request, input, 4216, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RelMovLUser_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest* request)
{
    unsigned char output[4224];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RelMovLUser_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_0 != 0x7a24fab8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_1 != 0xbbd30656UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_2 != 0x17d3404eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_3 != 0x34d88939UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_4 != 0x25d239a3UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_5 != 0xdb923d40UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_6 != 0x75320324UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_7 != 0x266233acUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_0 0x7a24fab8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_1 0xbbd30656UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_2 0x17d3404eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_3 0x34d88939UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_4 0x25d239a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_5 0xdb923d40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_6 0x75320324UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT_7 0x266233acUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ResetRobot_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ResetRobot_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ResetRobot_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_0 != 0xf0f349c2UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_1 != 0x2dd3424cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_2 != 0xb9df5c50UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_3 != 0x99fe421cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_4 != 0x5d97c688UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_5 != 0x9cd1d3b5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_6 != 0xe97727ecUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_7 != 0x137e14f6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_0 0xf0f349c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_1 0x2dd3424cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_2 0xb9df5c50UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_3 0x99fe421cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_4 0x5d97c688UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_5 0x9cd1d3b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_6 0xe97727ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE_7 0x137e14f6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RobotMode_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_RobotModeRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_RobotModeResponse* response)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RobotModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RobotModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_rosdemo_v3_RobotModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RobotMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RobotModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RobotModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RobotModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RobotMode_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_RobotModeResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RobotModeResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_0 != 0xcb7c352eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_1 != 0x24252607UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_2 != 0xbfda11b9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_3 != 0x29133553UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_4 != 0xf1212b17UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_5 != 0x07fc7d7bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_6 != 0x2b8938c4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_7 != 0x78fb5ec4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_0 0xcb7c352eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_1 0x24252607UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_2 0xbfda11b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_3 0x29133553UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_4 0xf1212b17UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_5 0x07fc7d7bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_6 0x2b8938c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT_7 0x78fb5ec4UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RunScript_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_RunScriptRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_RunScriptResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RunScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RunScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_RunScriptRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_RunScriptResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_RunScript_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_RunScriptRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_RunScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_RunScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_RunScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_RunScript_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_RunScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_RunScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_0 != 0x74fe81b1UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_1 != 0x77624d7cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_2 != 0x5cbd6a31UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_3 != 0x95e4968dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_4 != 0x1eb7c2b7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_5 != 0xe9b9182eUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_6 != 0x487de1e0UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_7 != 0x73891303UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_0 0x74fe81b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_1 0x77624d7cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_2 0x5cbd6a31UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_3 0x95e4968dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_4 0x1eb7c2b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_5 0xe9b9182eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_6 0x487de1e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ_7 0x73891303UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ServoJ_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_ServoJRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_ServoJResponse* response)
{
    unsigned char input[444], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ServoJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ServoJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ServoJRequest_encode(request, input, 444, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ServoJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ServoJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ServoJRequest* request)
{
    unsigned char output[452];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ServoJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ServoJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ServoJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_ServoJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ServoJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ServoJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_0 != 0xfd188c2dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_1 != 0x29b2ebe3UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_2 != 0x43a7c0deUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_3 != 0x9d09f4acUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_4 != 0x4d282a06UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_5 != 0x3feb8ca2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_6 != 0x91b34cabUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_7 != 0xa2d67b66UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_0 0xfd188c2dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_1 0x29b2ebe3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_2 0x43a7c0deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_3 0x9d09f4acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_4 0x4d282a06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_5 0x3feb8ca2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_6 0x91b34cabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP_7 0xa2d67b66UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ServoP_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_ServoPRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_ServoPResponse* response)
{
    unsigned char input[48], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ServoPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ServoPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ServoPRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ServoPResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ServoP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ServoPRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ServoPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ServoPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ServoPRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_ServoP_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ServoPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ServoPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_0 != 0x329cc6bbUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_1 != 0xfb4cdef9UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_2 != 0x39d23f5bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_3 != 0xabda4574UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_4 != 0x7543df72UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_5 != 0x7ef139a1UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_6 != 0x0ee6900cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_7 != 0xe749f467UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_0 0x329cc6bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_1 0xfb4cdef9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_2 0x39d23f5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_3 0xabda4574UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_4 0x7543df72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_5 0x7ef139a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_6 0x0ee6900cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION_7 0xe749f467UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest const* request,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse* response)
{
    unsigned char input[16], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_0 != 0x01b920f9UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_1 != 0xced6bcd2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_2 != 0xca4e500eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_3 != 0xd0b371a4UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_4 != 0xb5d5da96UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_5 != 0x9609e820UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_6 != 0x2371d65cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_7 != 0xc6440283UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_0 0x01b920f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_1 0xced6bcd2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_2 0xca4e500eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_3 0xd0b371a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_4 0xb5d5da96UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_5 0x9609e820UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_6 0x2371d65cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS_7 0xc6440283UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCoils_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SetCoils_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCoils_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_0 != 0x56b92d59UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_1 != 0xc823225bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_2 != 0x69d7a9faUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_3 != 0x3197c71aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_4 != 0x0a3eafe7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_5 != 0x9ed2c444UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_6 != 0x488000f0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_7 != 0x68f4b12cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_0 0x56b92d59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_1 0xc823225bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_2 0x69d7a9faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_3 0x3197c71aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_4 0x0a3eafe7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_5 0x9ed2c444UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_6 0x488000f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG_7 0x68f4b12cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest const* request,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_0 != 0x6274acdeUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_1 != 0x73f16f95UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_2 != 0x66615bc0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_3 != 0x73b977b6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_4 != 0xf1660a22UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_5 != 0x949d2eb7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_6 != 0x794244baUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_7 != 0x7bb7fb2dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_0 0x6274acdeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_1 0x73f16f95UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_2 0x66615bc0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_3 0x73b977b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_4 0xf1660a22UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_5 0x949d2eb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_6 0x794244baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL_7 0x7bb7fb2dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest const* request,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_0 != 0x3a7b9bcaUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_1 != 0x930d1fbbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_2 != 0xc391eb80UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_3 != 0x14549796UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_4 != 0x881d860fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_5 != 0x16534ebcUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_6 != 0x086220c8UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_7 != 0x5b710dfdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_0 0x3a7b9bcaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_1 0x930d1fbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_2 0xc391eb80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_3 0x14549796UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_4 0x881d860fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_5 0x16534ebcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_6 0x086220c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS_7 0x5b710dfdUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse* response)
{
    unsigned char input[4436], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest_encode(request, input, 4436, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest* request)
{
    unsigned char output[4444];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_0 != 0xb27d68bcUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_1 != 0x5e8e6595UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_2 != 0x261e1a97UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_3 != 0x5969206bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_4 != 0x083b5ebfUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_5 != 0x695efa08UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_6 != 0x4d54de42UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_7 != 0xd654a896UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_0 0xb27d68bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_1 0x5e8e6595UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_2 0x261e1a97UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_3 0x5969206bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_4 0x083b5ebfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_5 0x695efa08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_6 0x4d54de42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID_7 0xd654a896UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest const* request,
                                                                                  roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_0 != 0x7b73c001UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_1 != 0xb9bc0531UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_2 != 0x8dba214bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_3 != 0x221ce6beUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_4 != 0xdb0f5776UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_5 != 0x0b6e1939UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_6 != 0xbc9e6816UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_7 != 0x7a927ccbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_0 0x7b73c001UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_1 0xb9bc0531UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_2 0x8dba214bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_3 0x221ce6beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_4 0xdb0f5776UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_5 0x0b6e1939UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_6 0xbc9e6816UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD_7 0x7a927ccbUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetPayload_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SetPayload_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetPayload_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_0 != 0xe79309c4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_1 != 0xb0996360UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_2 != 0xa9073738UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_3 != 0x42c9176bUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_4 != 0x292e5843UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_5 != 0x2f8f4939UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_6 != 0xfbd99267UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_7 != 0x31238ef6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_0 0xe79309c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_1 0xb0996360UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_2 0xa9073738UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_3 0x42c9176bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_4 0x292e5843UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_5 0x2f8f4939UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_6 0xfbd99267UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN_7 0x31238ef6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_0 != 0xe2be39c8UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_1 != 0xe113c4ecUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_2 != 0xfb12dcf5UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_3 != 0x4f286d8eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_4 != 0x0f9d44d2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_5 != 0x7537e079UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_6 != 0x58e2c859UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_7 != 0x15996b7bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_0 0xe2be39c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_1 0xe113c4ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_2 0xfb12dcf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_3 0x4f286d8eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_4 0x0f9d44d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_5 0x7537e079UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_6 0x58e2c859UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485_7 0x15996b7bUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminal485_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request const* request,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminal485_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminal485_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_0 != 0xa5a6854aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_1 != 0xa0100d83UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_2 != 0x634738e2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_3 != 0x5dfc8e9dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_4 != 0x277f1920UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_5 != 0x6a38911bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_6 != 0x8f26d35cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_7 != 0x1a7a8851UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_0 0xa5a6854aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_1 0xa0100d83UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_2 0x634738e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_3 0x5dfc8e9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_4 0x277f1920UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_5 0x6a38911bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_6 0x8f26d35cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS_7 0x1a7a8851UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest const* request,
                                                                                 roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_0 != 0xd1ad181fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_1 != 0xdb01cceeUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_2 != 0xcb56c016UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_3 != 0x6abf16a4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_4 != 0x71a6f66eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_5 != 0x2ea5e74cUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_6 != 0x3ead1126UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_7 != 0x0abe81a7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_0 0xd1ad181fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_1 0xdb01cceeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_2 0xcb56c016UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_3 0x6abf16a4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_4 0x71a6f66eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_5 0x2ea5e74cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_6 0x3ead1126UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR_7 0x0abe81a7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SpeedFactor_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SpeedFactor_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SpeedFactor_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_0 != 0x0240e861UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_1 != 0x3a2b49caUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_2 != 0x60353032UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_3 != 0x4a21c8a2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_4 != 0x302a2972UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_5 != 0x59360fe2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_6 != 0x2964a427UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_7 != 0x25c14b29UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_0 0x0240e861UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_1 0x3a2b49caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_2 0x60353032UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_3 0x4a21c8a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_4 0x302a2972UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_5 0x59360fe2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_6 0x2964a427UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ_7 0x25c14b29UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SpeedJ_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_SpeedJRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_SpeedJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_SpeedJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SpeedJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SpeedJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SpeedJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SpeedJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_SpeedJ_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_SpeedJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SpeedJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_0 != 0xfeeb3081UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_1 != 0xe981de30UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_2 != 0xef7c670cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_3 != 0xe72e093dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_4 != 0xbc33cd73UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_5 != 0x36390284UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_6 != 0x30b0bc4dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_7 != 0x2fc0a66aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_0 0xfeeb3081UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_1 0xe981de30UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_2 0xef7c670cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_3 0xe72e093dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_4 0xbc33cd73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_5 0x36390284UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_6 0x30b0bc4dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL_7 0x2fc0a66aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SpeedL_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_SpeedLRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_SpeedLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_SpeedLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SpeedLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SpeedL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SpeedLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SpeedLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SpeedLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SpeedLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_SpeedL_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_SpeedLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SpeedLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_0 != 0x32eb6d77UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_1 != 0x311c8dbcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_2 != 0xf114515fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_3 != 0x00685290UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_4 != 0x7b6cdd14UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_5 != 0x5aae72a6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_6 != 0x877397b3UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_7 != 0xf7ccfdc9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_0 0x32eb6d77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_1 0x311c8dbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_2 0xf114515fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_3 0x00685290UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_4 0x7b6cdd14UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_5 0x5aae72a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_6 0x877397b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG_7 0xf7ccfdc9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartDrag_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_StartDragRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_StartDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StartDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StartDragResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StartDrag_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StartDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StartDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartDrag_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_StartDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StartDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_0 != 0x86cf1196UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_1 != 0x7b03f1a9UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_2 != 0xdc87d688UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_3 != 0xbda5539eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_4 != 0xc9648275UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_5 != 0x8c4d934cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_6 != 0x5d76e513UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_7 != 0x7ea38f03UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_0 0x86cf1196UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_1 0x7b03f1a9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_2 0xdc87d688UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_3 0xbda5539eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_4 0xc9648275UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_5 0x8c4d934cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_6 0x5d76e513UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE_7 0x7ea38f03UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartFCTrace_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest const* request,
                                                                              roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartFCTrace_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartFCTrace_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_0 != 0xcd2a13dfUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_1 != 0xd74f0a19UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_2 != 0xdc869009UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_3 != 0x36a00669UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_4 != 0xc89d644dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_5 != 0xa7bf2054UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_6 != 0x7413d4e5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_7 != 0x9f6fa093UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_0 0xcd2a13dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_1 0xd74f0a19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_2 0xdc869009UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_3 0x36a00669UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_4 0xc89d644dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_5 0xa7bf2054UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_6 0x7413d4e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH_7 0x9f6fa093UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartPath_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_rosdemo_v3_StartPathRequest const* request,
                                                                           roswasmc_bounded_1_rosdemo_v3_StartPathResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartPathResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartPathResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StartPathRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StartPathResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StartPath_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StartPathRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartPathRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartPathRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StartPathRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartPath_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_rosdemo_v3_StartPathResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StartPathResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_0 != 0xc89d073cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_1 != 0x96c9fa55UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_2 != 0xfe1065e2UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_3 != 0x3b54370aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_4 != 0xa7d28be8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_5 != 0xe1202004UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_6 != 0x62e74f3eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_7 != 0xd07eece2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_0 0xc89d073cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_1 0x96c9fa55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_2 0xfe1065e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_3 0x3b54370aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_4 0xa7d28be8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_5 0xe1202004UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_6 0x62e74f3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE_7 0xd07eece2UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartTrace_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_StartTraceRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_StartTraceResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartTraceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartTraceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StartTraceRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StartTraceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StartTrace_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StartTraceRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StartTraceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StartTraceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StartTraceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StartTrace_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_StartTraceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StartTraceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_0 != 0xf604b978UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_1 != 0x1e6ea267UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_2 != 0xeaa345d8UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_3 != 0x145cdaebUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_4 != 0x8f2be2c5UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_5 != 0xf22f25c2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_6 != 0xc90366a3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_7 != 0x2f92ffd8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_0 0xf604b978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_1 0x1e6ea267UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_2 0xeaa345d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_3 0x145cdaebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_4 0x8f2be2c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_5 0xf22f25c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_6 0xc90366a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG_7 0x2f92ffd8UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopDrag_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v3_StopDragRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v3_StopDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StopDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StopDragResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StopDrag_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StopDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StopDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopDrag_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v3_StopDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StopDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_0 != 0x581e2570UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_1 != 0xa5a8c0a1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_2 != 0xf073dcb7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_3 != 0x84977468UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_4 != 0x59a1d289UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_5 != 0x1f926b98UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_6 != 0x27590dc9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_7 != 0xe8133284UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_0 0x581e2570UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_1 0xa5a8c0a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_2 0xf073dcb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_3 0x84977468UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_4 0x59a1d289UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_5 0x1f926b98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_6 0x27590dc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT_7 0xe8133284UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopScript_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_rosdemo_v3_StopScriptRequest const* request,
                                                                            roswasmc_bounded_1_rosdemo_v3_StopScriptResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StopScriptRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StopScriptResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StopScript_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StopScriptRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StopScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopScript_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_StopScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StopScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_0 != 0x9456f760UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_1 != 0x14c37f27UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_2 != 0x3b353da4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_3 != 0x74ab103eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_4 != 0x01de505aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_5 != 0xe59053f7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_6 != 0x974b8b3aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_7 != 0x156785feUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_0 0x9456f760UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_1 0x14c37f27UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_2 0x3b353da4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_3 0x74ab103eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_4 0x01de505aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_5 0xe59053f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_6 0x974b8b3aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG_7 0x156785feUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopmoveJog_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_StopmoveJog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_StopmoveJog_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_0 != 0x84528cb1UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_1 != 0x4a11394aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_2 != 0x3b37766cUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_3 != 0xafdeefd4UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_4 != 0xcc4ceb4eUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_5 != 0xb2bbe99fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_6 != 0x9f62d32aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_7 != 0x41e2ef4eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_0 0x84528cb1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_1 0x4a11394aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_2 0x3b37766cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_3 0xafdeefd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_4 0xcc4ceb4eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_5 0xb2bbe99fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_6 0x9f62d32aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC_7 0x41e2ef4eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Sync_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_SyncRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_SyncResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SyncResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SyncResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_SyncRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SyncResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Sync_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SyncRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SyncRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SyncRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SyncRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Sync_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_SyncResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SyncResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_0 != 0x50161289UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_1 != 0x9ab3a78aUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_2 != 0x90e9d235UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_3 != 0x45784063UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_4 != 0xf381a5cdUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_5 != 0x8f89d86cUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_6 != 0x368041fdUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_7 != 0xd20d1b75UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_0 0x50161289UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_1 0x9ab3a78aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_2 0x90e9d235UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_3 0x45784063UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_4 0xf381a5cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_5 0x8f89d86cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_6 0x368041fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL_7 0xd20d1b75UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SyncAll_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_rosdemo_v3_SyncAllRequest const* request,
                                                                         roswasmc_bounded_1_rosdemo_v3_SyncAllResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SyncAllResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SyncAllResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_SyncAllRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_SyncAllResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_SyncAll_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_SyncAllRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_SyncAllRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_SyncAllRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_SyncAllRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_SyncAll_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_rosdemo_v3_SyncAllResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_SyncAllResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_0 != 0x1786dc49UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_1 != 0xb8b70fdeUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_2 != 0x681b9c13UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_3 != 0x9215447eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_4 != 0xe1179c3eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_5 != 0xac51c2dcUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_6 != 0xed7eb673UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_7 != 0xee32b69fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_0 0x1786dc49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_1 0xb8b70fdeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_2 0x681b9c13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_3 0x9215447eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_4 0xe1179c3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_5 0xac51c2dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_6 0xed7eb673UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED_7 0xee32b69fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_TCPSpeed_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest const* request,
                                                                          roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_TCPSpeed_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_TCPSpeed_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_0 != 0x80b3b95fUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_1 != 0xcb38d7c7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_2 != 0xa99bdf57UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_3 != 0xf9d9aedbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_4 != 0x7db8cbcfUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_5 != 0x60e4142eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_6 != 0x2a428dc2UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_7 != 0x2140952eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_0 0x80b3b95fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_1 0xcb38d7c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_2 0xa99bdf57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_3 0xf9d9aedbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_4 0x7db8cbcfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_5 0x60e4142eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_6 0x2a428dc2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND_7 0x2140952eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest const* request,
                                                                             roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_0 != 0x28502b18UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_1 != 0x805a3372UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_2 != 0x8e682012UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_3 != 0x945e454fUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_4 != 0xd3137040UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_5 != 0x6f2a56ffUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_6 != 0x3f36c2d8UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_7 != 0x680ddf13UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_0 0x28502b18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_1 0x805a3372UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_2 0x8e682012UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_3 0x945e454fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_4 0xd3137040UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_5 0x6f2a56ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_6 0x3f36c2d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL_7 0x680ddf13UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Tool_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_ToolRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_ToolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_ToolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Tool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ToolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Tool_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_0 != 0xad56eb08UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_1 != 0x009dd0f0UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_2 != 0x57bd4fb4UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_3 != 0xa180a7bcUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_4 != 0x9755c542UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_5 != 0xd96be47dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_6 != 0xb23576cfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_7 != 0xf0f99d6dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_0 0xad56eb08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_1 0x009dd0f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_2 0x57bd4fb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_3 0xa180a7bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_4 0x9755c542UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_5 0xd96be47dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_6 0xb23576cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI_7 0xf0f99d6dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolAI_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolAIRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolAIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolAIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolAIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_ToolAIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ToolAIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ToolAI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ToolAIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolAIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolAIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ToolAIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_ToolAI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ToolAIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ToolAIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_0 != 0x3e89ae2cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_1 != 0x80aed17bUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_2 != 0x8243f1a0UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_3 != 0x88a47471UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_4 != 0x86500d3dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_5 != 0x18dab465UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_6 != 0x03f8bd72UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_7 != 0xef2328e3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_0 0x3e89ae2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_1 0x80aed17bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_2 0x8243f1a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_3 0x88a47471UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_4 0x86500d3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_5 0x18dab465UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_6 0x03f8bd72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI_7 0xef2328e3UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolDI_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolDIRequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolDIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_ToolDIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ToolDIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ToolDI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ToolDIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ToolDIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_ToolDI_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ToolDIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ToolDIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_0 != 0xc1f17feaUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_1 != 0x5c23fb4fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_2 != 0x6d961411UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_3 != 0x9cff6950UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_4 != 0x0fe6ec11UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_5 != 0xb3d6dae8UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_6 != 0x603cbb8cUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_7 != 0x07ce3b28UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_0 0xc1f17feaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_1 0x5c23fb4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_2 0x6d961411UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_3 0x9cff6950UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_4 0x0fe6ec11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_5 0xb3d6dae8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_6 0x603cbb8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO_7 0x07ce3b28UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolDO_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolDORequest const* request,
                                                                        roswasmc_bounded_1_rosdemo_v3_ToolDOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_ToolDORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ToolDOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_ToolDO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_ToolDORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ToolDORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_ToolDO_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_ToolDOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ToolDOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_0 != 0x194e2a72UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_1 != 0xc13b5c8aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_2 != 0xce70e3b5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_3 != 0x9eb96603UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_4 != 0x13f8b653UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_5 != 0xa3d45588UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_6 != 0x654b46aaUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_7 != 0x9e2fddf7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_0 0x194e2a72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_1 0xc13b5c8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_2 0xce70e3b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_3 0x9eb96603UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_4 0x13f8b653UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_5 0xa3d45588UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_6 0x654b46aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE_7 0x9e2fddf7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest const* request,
                                                                               roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_0 != 0x61434df7UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_1 != 0xd669e8fbUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_2 != 0x8d898878UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_3 != 0x41ed2f4aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_4 != 0xb18d085dUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_5 != 0xe59a83d7UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_6 != 0xe1e12633UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_7 != 0x4f5abdc8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_0 0x61434df7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_1 0xd669e8fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_2 0x8d898878UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_3 0x41ed2f4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_4 0xb18d085dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_5 0xe59a83d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_6 0xe1e12633UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER_7 0x4f5abdc8UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_User_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_UserRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_UserResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_UserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_UserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_UserRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_UserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_User_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_UserRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_UserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_UserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_UserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_User_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_UserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_UserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_0 != 0x181fdc43UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_1 != 0xcc0423c2UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_2 != 0xd00c4316UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_3 != 0xa7e2b821UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_4 != 0x4da472a5UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_5 != 0xb0f6e27aUL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_6 != 0xeca8f310UL ||                                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_7 != 0x13f6684fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_0 0x181fdc43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_1 0xcc0423c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_2 0xd00c4316UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_3 0xa7e2b821UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_4 0x4da472a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_5 0xb0f6e27aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_6 0xeca8f310UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT_7 0x13f6684fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_Wait_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_rosdemo_v3_WaitRequest const* request,
                                                                      roswasmc_bounded_1_rosdemo_v3_WaitResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_WaitResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_WaitResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_WaitRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_WaitResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_Wait_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_WaitRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_WaitRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_WaitRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_WaitRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_Wait_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_WaitResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_WaitResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_0 != 0x5ca5196bUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_1 != 0x89065a00UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_2 != 0x5ec354faUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_3 != 0x31fb660cUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_4 != 0x153fcaf2UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_5 != 0x04eae8aaUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_6 != 0x9b6ba781UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_7 != 0xc4535613UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_0 0x5ca5196bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_1 0x89065a00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_2 0x5ec354faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_3 0x31fb660cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_4 0x153fcaf2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_5 0x04eae8aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_6 0x9b6ba781UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE_7 0xc4535613UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_rosdemo_v3_pause_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_rosdemo_v3_pauseRequest const* request,
                                                                       roswasmc_bounded_1_rosdemo_v3_pauseResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_pauseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_pauseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_rosdemo_v3_pauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_rosdemo_v3_pauseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_rosdemo_v3_pause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_rosdemo_v3_pauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_rosdemo_v3_pauseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_rosdemo_v3_pauseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_rosdemo_v3_pauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_rosdemo_v3_pause_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_rosdemo_v3_pauseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_rosdemo_v3_pauseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
