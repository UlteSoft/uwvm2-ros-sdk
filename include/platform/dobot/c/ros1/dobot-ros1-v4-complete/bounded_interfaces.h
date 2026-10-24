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
#ifndef UWVM_ROS_BOUNDED_INTERFACES_6B77EB8EC919C354058C73DDC3FF611DA58704DAFEFCB1C65C6354A8CFD61EDC
#define UWVM_ROS_BOUNDED_INTERFACES_6B77EB8EC919C354058C73DDC3FF611DA58704DAFEFCB1C65C6354A8CFD61EDC
#include <dobot/c/ros1/dobot-ros1-v4-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_0 != 0xb7eac3b7UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_1 != 0x98c89036UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_2 != 0xa430f25dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_3 != 0x4a46041eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_4 != 0xaa1888c9UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_5 != 0x76c829fbUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_6 != 0xdeb46afbUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_7 != 0x9b0077dfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_0 0xb7eac3b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_1 0x98c89036UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_2 0xa430f25dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_3 0x4a46041eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_4 0xaa1888c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_5 0x76c829fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_6 0xdeb46afbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI_7 0x9b0077dfUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AI_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_AIRequest const* request,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_AIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_AIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_AIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_AI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_AIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_AIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AI_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_AIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_AIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_0 != 0x1e0361dfUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_1 != 0x3d182ffbUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_2 != 0xb16a4933UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_3 != 0xc505c10aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_4 != 0x3bb08237UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_5 != 0x2ad915beUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_6 != 0xaca56b1fUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_7 != 0xe7a41212UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_0 0x1e0361dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_1 0x3d182ffbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_2 0xb16a4933UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_3 0xc505c10aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_4 0x3bb08237UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_5 0x2ad915beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_6 0xaca56b1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO_7 0xe7a41212UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AO_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_AORequest const* request,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_AOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_AORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_AOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_AO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_AORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_AORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AO_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_AOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_AOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_0 != 0xafa83200UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_1 != 0x6a617978UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_2 != 0x92154639UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_3 != 0x80524ed2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_4 != 0x8a458203UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_5 != 0xb794dfa1UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_6 != 0x3074b984UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_7 != 0x55667724UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_0 0xafa83200UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_1 0x6a617978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_2 0x92154639UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_3 0x80524ed2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_4 0x8a458203UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_5 0xb794dfa1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_6 0x3074b984UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT_7 0x55667724UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AOInstant_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AOInstant_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_AOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AOInstant_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_AOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_0 != 0x8e7fb7f0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_1 != 0x83b02e9aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_2 != 0xf7d7a42cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_3 != 0xb2822e86UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_4 != 0xb56c52c6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_5 != 0x73a3e83aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_6 != 0x582a28bfUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_7 != 0x83cdf04aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_0 0x8e7fb7f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_1 0x83b02e9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_2 0xf7d7a42cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_3 0xb2822e86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_4 0xb56c52c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_5 0x73a3e83aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_6 0x582a28bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ_7 0x83cdf04aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AccJ_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_AccJRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_AccJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AccJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AccJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_AccJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_AccJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_AccJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_AccJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AccJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AccJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_AccJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AccJ_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_AccJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_AccJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_0 != 0x5eca063bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_1 != 0xc0c98551UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_2 != 0x6adf609bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_3 != 0x00488238UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_4 != 0x5b3056d9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_5 != 0x47454ca4UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_6 != 0x554e90a0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_7 != 0xb9aecc8dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_0 0x5eca063bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_1 0xc0c98551UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_2 0x6adf609bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_3 0x00488238UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_4 0x5b3056d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_5 0x47454ca4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_6 0x554e90a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL_7 0xb9aecc8dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AccL_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_AccLRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_AccLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AccLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AccLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_AccLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_AccLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_AccL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_AccLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_AccLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_AccLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_AccLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_AccL_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_AccLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_AccLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_0 != 0x6cbade29UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_1 != 0x149f1577UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_2 != 0x6928628dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_3 != 0x1b15bd3cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_4 != 0xc8b5a5abUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_5 != 0x413ed689UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_6 != 0x4100812dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_7 != 0x107dc57cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_0 0x6cbade29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_1 0x149f1577UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_2 0x6928628dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_3 0x1b15bd3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_4 0xc8b5a5abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_5 0x413ed689UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_6 0x4100812dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC_7 0x107dc57cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Arc_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dobot_v4_bringup_ArcRequest const* request,
                                                                           roswasmc_bounded_1_dobot_v4_bringup_ArcResponse* response)
{
    unsigned char input[4261], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ArcResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ArcResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ArcRequest_encode(request, input, 4261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ArcResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_Arc_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_ArcRequest* request)
{
    unsigned char output[4269];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ArcRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ArcRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ArcRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Arc_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ArcResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ArcResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_0 != 0xf5f1a9b0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_1 != 0xa39d524aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_2 != 0x91670d8bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_3 != 0x531b884aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_4 != 0x632df330UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_5 != 0xbec3515aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_6 != 0xe4436c1cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_7 != 0xfb140d63UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_0 0xf5f1a9b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_1 0xa39d524aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_2 0x91670d8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_3 0x531b884aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_4 0x632df330UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_5 0xbec3515aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_6 0xe4436c1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL_7 0xfb140d63UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_BrakeControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_BrakeControlResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_0 != 0x145d3adeUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_1 != 0x964b0935UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_2 != 0x7c9d99f0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_3 != 0x4b7f6ccfUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_4 != 0x6a6d944aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_5 != 0x64e7785fUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_6 != 0xcccf38b4UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_7 != 0x37a9173fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_0 0x145d3adeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_1 0x964b0935UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_2 0x7c9d99f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_3 0x4b7f6ccfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_4 0x6a6d944aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_5 0x64e7785fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_6 0xcccf38b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP_7 0x37a9173fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CP_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_CPRequest const* request,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_CPResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_CPRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_CPResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_CP_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_CPRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_CPRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CP_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_CPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_CPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_0 != 0xa0d29501UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_1 != 0xe3aa116dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_2 != 0x50738c5bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_3 != 0x71ca06afUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_4 != 0x3f34f4faUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_5 != 0x68806459UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_6 != 0xb25ee7e6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_7 != 0x68d789ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_0 0xa0d29501UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_1 0xe3aa116dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_2 0x50738c5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_3 0x71ca06afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_4 0x3f34f4faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_5 0x68806459UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_6 0xb25ee7e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL_7 0x68d789ccUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcTool_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcTool_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_CalcToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcTool_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_CalcToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_0 != 0x7afcbb5fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_1 != 0xe23a9d19UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_2 != 0x0fcb36aeUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_3 != 0x4128da04UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_4 != 0x07045886UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_5 != 0x85558523UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_6 != 0xfe6cc506UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_7 != 0x294ee626UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_0 0x7afcbb5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_1 0xe23a9d19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_2 0x0fcb36aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_3 0x4128da04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_4 0x07045886UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_5 0x85558523UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_6 0xfe6cc506UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER_7 0x294ee626UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcUser_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse* response)
{
    unsigned char input[268], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcUser_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_CalcUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_CalcUser_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_CalcUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_0 != 0xc98c3892UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_1 != 0x6ada397bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_2 != 0xdfaed46cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_3 != 0x15dcf003UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_4 != 0x9246e4c0UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_5 != 0x3fa4aa7cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_6 != 0xcb609fb6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_7 != 0x7e2b8a56UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_0 0xc98c3892UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_1 0x6ada397bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_2 0xdfaed46cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_3 0x15dcf003UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_4 0x9246e4c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_5 0x3fa4aa7cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_6 0xcb609fb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE_7 0x7e2b8a56UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Circle_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_CircleRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_CircleResponse* response)
{
    unsigned char input[4265], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CircleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CircleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_CircleRequest_encode(request, input, 4265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_CircleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Circle_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_CircleRequest* request)
{
    unsigned char output[4273];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_CircleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_CircleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_CircleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Circle_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_CircleResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_CircleResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_0 != 0x0916dffaUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_1 != 0x1eaac1deUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_2 != 0x86cb3b96UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_3 != 0x44fb2b1cUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_4 != 0xc7f71711UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_5 != 0x1f24adc1UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_6 != 0x22992715UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_7 != 0x29b469a8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_0 0x0916dffaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_1 0x1eaac1deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_2 0x86cb3b96UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_3 0x44fb2b1cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_4 0xc7f71711UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_5 0x1f24adc1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_6 0x22992715UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR_7 0x29b469a8UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ClearError_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ClearError_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ClearErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ClearError_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ClearErrorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_0 != 0xea4bc154UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_1 != 0xe73df38eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_2 != 0x507ac700UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_3 != 0xe958ec9dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_4 != 0xb3806da2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_5 != 0xcf05e849UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_6 != 0x24842d1fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_7 != 0x9c69eeb1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_0 0xea4bc154UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_1 0xe73df38eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_2 0x507ac700UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_3 0xe958ec9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_4 0xb3806da2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_5 0xcf05e849UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_6 0x24842d1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE_7 0x9c69eeb1UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Continue_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Continue_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ContinueRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Continue_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ContinueResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_0 != 0x0d88a972UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_1 != 0x7976f961UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_2 != 0x0b6d1d6bUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_3 != 0x12f3467cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_4 != 0x8f2bd604UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_5 != 0xdd3aa30fUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_6 != 0x1f08492aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_7 != 0x6c7685aaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_0 0x0d88a972UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_1 0x7976f961UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_2 0x0b6d1d6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_3 0x12f3467cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_4 0x8f2bd604UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_5 0xdd3aa30fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_6 0x1f08492aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI_7 0x6c7685aaUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DI_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_DIRequest const* request,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_DIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_DI_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_DIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DI_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_DIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_0 != 0x93915ec8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_1 != 0x4797552bUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_2 != 0xcce64746UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_3 != 0x983099dcUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_4 != 0x59339becUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_5 != 0x5a1001edUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_6 != 0xa7c9b5c8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_7 != 0x39b9bc93UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_0 0x93915ec8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_1 0x4797552bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_2 0xcce64746UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_3 0x983099dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_4 0x59339becUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_5 0x5a1001edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_6 0xa7c9b5c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP_7 0x39b9bc93UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DIGroup_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DIGroup_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DIGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DIGroup_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DIGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_0 != 0xb5ca4f89UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_1 != 0x3221842dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_2 != 0x88032ee8UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_3 != 0xad66cd4dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_4 != 0xee86c163UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_5 != 0x94cd5d9aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_6 != 0xeefbd445UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_7 != 0x2bf10827UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_0 0xb5ca4f89UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_1 0x3221842dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_2 0x88032ee8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_3 0xad66cd4dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_4 0xee86c163UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_5 0x94cd5d9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_6 0xeefbd445UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO_7 0x2bf10827UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DO_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_DORequest const* request,
                                                                          roswasmc_bounded_1_dobot_v4_bringup_DOResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DORequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_DO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_DORequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DO_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_DOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_0 != 0xa85d327dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_1 != 0xe2c77175UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_2 != 0x0ded9470UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_3 != 0x7f09f592UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_4 != 0x22df6b3cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_5 != 0xc9306ac3UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_6 != 0x3017d203UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_7 != 0x933233e5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_0 0xa85d327dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_1 0xe2c77175UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_2 0x0ded9470UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_3 0x7f09f592UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_4 0x22df6b3cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_5 0xc9306ac3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_6 0x3017d203UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP_7 0x933233e5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOGroup_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse* response)
{
    unsigned char input[68], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOGroup_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOGroup_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DOGroupResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_0 != 0x71f5d461UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_1 != 0xf60fe203UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_2 != 0x9d9e4c3bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_3 != 0xd5c4c9bbUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_4 != 0x56e2cab5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_5 != 0x334f5dd5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_6 != 0x7ae708fbUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_7 != 0x94bf18c9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_0 0x71f5d461UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_1 0xf60fe203UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_2 0x9d9e4c3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_3 0xd5c4c9bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_4 0x56e2cab5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_5 0x334f5dd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_6 0x7ae708fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT_7 0x94bf18c9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOInstant_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOInstant_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DOInstant_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_0 != 0x830a44baUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_1 != 0x001606c0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_2 != 0x72d92ad8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_3 != 0x3f1e5ac3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_4 != 0x70ff922bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_5 != 0x262d3db9UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_6 != 0x31440970UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_7 != 0xc717547bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_0 0x830a44baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_1 0x001606c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_2 0x72d92ad8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_3 0x3f1e5ac3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_4 0x70ff922bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_5 0x262d3db9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_6 0x31440970UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT_7 0xc717547bUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DisableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DisableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_0 != 0xd73b0cb6UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_1 != 0xc55e2dcfUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_2 != 0x4d74638bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_3 != 0xa0b5dad8UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_4 != 0x70b5819aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_5 != 0x18058741UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_6 != 0x132ccd26UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_7 != 0x44145738UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_0 0xd73b0cb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_1 0xc55e2dcfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_2 0x4d74638bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_3 0xa0b5dad8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_4 0x70b5819aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_5 0x18058741UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_6 0x132ccd26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY_7 0x44145738UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_DragSensivityRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_DragSensivityResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_0 != 0x2535981cUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_1 != 0xd0431e8bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_2 != 0x9ef4c3c9UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_3 != 0x062e4b1fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_4 != 0xe00b8962UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_5 != 0x85f3dfd9UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_6 != 0x7a57d408UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_7 != 0x0c739510UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_0 0x2535981cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_1 0xd0431e8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_2 0x9ef4c3c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_3 0x062e4b1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_4 0xe00b8962UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_5 0x85f3dfd9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_6 0x7a57d408UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP_7 0x0c739510UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_EmergencyStopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_0 != 0xbb701fb7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_1 != 0x9e5fdfd2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_2 != 0x206db89fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_3 != 0xec9b327aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_4 != 0x6aecae21UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_5 != 0x7f057d23UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_6 != 0xd34caa2eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_7 != 0x682ec2e1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_0 0xbb701fb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_1 0x9e5fdfd2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_2 0x206db89fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_3 0xec9b327aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_4 0x6aecae21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_5 0x7f057d23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_6 0xd34caa2eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT_7 0x682ec2e1UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_EnableRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_EnableRobotResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_0 != 0x2b484c87UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_1 != 0x262ab3f7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_2 != 0x7744048eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_3 != 0xdeb021bcUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_4 != 0xdec7a555UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_5 != 0x36390f7cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_6 != 0x8488c94eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_7 != 0x7ece54eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_0 0x2b484c87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_1 0x262ab3f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_2 0x7744048eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_3 0xdeb021bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_4 0xdec7a555UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_5 0x36390f7cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_6 0x8488c94eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN_7 0x7ece54eaUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_0 != 0x2109870aUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_1 != 0x62155563UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_2 != 0x0ab234eeUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_3 != 0xd1daf854UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_4 != 0xb6824622UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_5 != 0xa53a6f61UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_6 != 0x546e608dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_7 != 0x57f16866UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_0 0x2109870aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_1 0x62155563UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_2 0x0ab234eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_3 0xd1daf854UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_4 0xb6824622UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_5 0xa53a6f61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_6 0x546e608dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO_7 0x57f16866UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetAO_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_GetAORequest const* request,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse* response)
{
    unsigned char input[4], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetAORequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_GetAO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_GetAORequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetAORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetAORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetAORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetAO_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetAOResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_0 != 0xbf9de47fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_1 != 0x8c9d5e33UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_2 != 0x294abefdUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_3 != 0xa6cec302UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_4 != 0xa91ba799UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_5 != 0x0a117c59UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_6 != 0x9273b2adUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_7 != 0xafc43aa7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_0 0xbf9de47fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_1 0x8c9d5e33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_2 0x294abefdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_3 0xa6cec302UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_4 0xa91ba799UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_5 0x0a117c59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_6 0x9273b2adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE_7 0xafc43aa7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetAngle_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse* response)
{
    unsigned char input[1], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetAngle_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetAngleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetAngle_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetAngleResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_0 != 0x87d1ed63UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_1 != 0x6498976dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_2 != 0x53e9f7deUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_3 != 0x9d4f71bdUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_4 != 0x0d3df823UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_5 != 0x9fa3729eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_6 != 0x709fd7d2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_7 != 0x20e20b37UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_0 0x87d1ed63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_1 0x6498976dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_2 0x53e9f7deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_3 0x9d4f71bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_4 0x0d3df823UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_5 0x9fa3729eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_6 0x709fd7d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS_7 0x20e20b37UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetCoils_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetCoils_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetCoils_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_0 != 0x62c00518UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_1 != 0xcd287401UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_2 != 0x8fca0d35UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_3 != 0xae5498efUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_4 != 0x90cfff92UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_5 != 0x14194c74UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_6 != 0xe087f3cbUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_7 != 0xb852101cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_0 0x62c00518UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_1 0xcd287401UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_2 0x8fca0d35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_3 0xae5498efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_4 0x90cfff92UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_5 0x14194c74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_6 0xe087f3cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID_7 0xb852101cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest const* request,
                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandIdResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_0 != 0x4c3464baUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_1 != 0x966f76b7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_2 != 0x75282aa0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_3 != 0x9a9b0a72UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_4 != 0x2f37e6feUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_5 != 0x747df03dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_6 != 0x1250f177UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_7 != 0x0ef66567UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_0 0x4c3464baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_1 0x966f76b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_2 0x75282aa0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_3 0x9a9b0a72UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_4 0x2f37e6feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_5 0x747df03dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_6 0x1250f177UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO_7 0x0ef66567UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetDO_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_GetDORequest const* request,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse* response)
{
    unsigned char input[4], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetDORequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_GetDO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_GetDORequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetDORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetDO_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetDOResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_0 != 0x850c6725UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_1 != 0xc38c038dUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_2 != 0xdd230eadUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_3 != 0xc3875358UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_4 != 0xd920dbbeUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_5 != 0x64bcde24UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_6 != 0xf18661d1UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_7 != 0x30a81225UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_0 0x850c6725UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_1 0xc38c038dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_2 0xdd230eadUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_3 0xc3875358UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_4 0xd920dbbeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_5 0x64bcde24UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_6 0xf18661d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP_7 0x30a81225UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse* response)
{
    unsigned char input[68], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest_encode(request, input, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest* request)
{
    unsigned char output[76];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetDOGroupResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_0 != 0x6148d726UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_1 != 0x10da1578UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_2 != 0x7ad4d17aUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_3 != 0x17f52404UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_4 != 0x232575a2UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_5 != 0x988669dfUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_6 != 0x5fa9a7e8UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_7 != 0xfb8ea8a9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_0 0x6148d726UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_1 0x10da1578UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_2 0x7ad4d17aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_3 0x17f52404UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_4 0x232575a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_5 0x988669dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_6 0x5fa9a7e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID_7 0xfb8ea8a9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse* response)
{
    unsigned char input[1], output[72];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 72);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 72 || roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse const* response)
{
    unsigned char input[80];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetErrorIDResponse_encode(response, input + 8, 72, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_0 != 0x37b52dd5UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_1 != 0x462cb5beUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_2 != 0x6c562516UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_3 != 0x079f5231UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_4 != 0x44c4bd18UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_5 != 0x6fc26923UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_6 != 0x0d845eafUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_7 != 0x94c4d088UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_0 0x37b52dd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_1 0x462cb5beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_2 0x6c562516UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_3 0x079f5231UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_4 0x44c4bd18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_5 0x6fc26923UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_6 0x0d845eafUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS_7 0x94c4d088UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_0 != 0x1f1049b0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_1 != 0x733ef883UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_2 != 0x6f6704dcUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_3 != 0xbad0ffefUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_4 != 0x92c6d2b7UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_5 != 0xaa53f8b9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_6 != 0xf1b811a0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_7 != 0x6a25afadUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_0 0x1f1049b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_1 0x733ef883UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_2 0x6f6704dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_3 0xbad0ffefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_4 0x92c6d2b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_5 0xaa53f8b9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_6 0xf1b811a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS_7 0x6a25afadUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInBits_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInBits_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInBitsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInBits_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetInBitsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_0 != 0x92e5b10fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_1 != 0xb1b524c4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_2 != 0xcf9d443cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_3 != 0x9cf28bb2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_4 != 0x56456294UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_5 != 0xee230c13UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_6 != 0xf67ef353UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_7 != 0x9348c35cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_0 0x92e5b10fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_1 0xb1b524c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_2 0xcf9d443cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_3 0x9cf28bb2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_4 0x56456294UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_5 0xee230c13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_6 0xf67ef353UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS_7 0x9348c35cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetInRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_0 != 0x17d8ee4cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_1 != 0x949c17caUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_2 != 0x23802a66UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_3 != 0xef8b4eb8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_4 != 0x5d9aa864UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_5 != 0xcd23bcacUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_6 != 0xde02d0d8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_7 != 0x0f0eff87UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_0 0x17d8ee4cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_1 0x949c17caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_2 0x23802a66UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_3 0xef8b4eb8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_4 0x5d9aa864UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_5 0xcd23bcacUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_6 0xde02d0d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL_7 0x0f0eff87UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetInputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_0 != 0xb1f6fa49UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_1 != 0x97925cc3UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_2 != 0x11c39c03UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_3 != 0x002ae6bcUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_4 != 0x184b1dfaUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_5 != 0xae73f2d3UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_6 != 0xddc679d7UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_7 != 0xfd28d7deUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_0 0xb1f6fa49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_1 0x97925cc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_2 0x11c39c03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_3 0x002ae6bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_4 0x184b1dfaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_5 0xae73f2d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_6 0xddc679d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT_7 0xfd28d7deUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetInputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_0 != 0xb24c2ed0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_1 != 0xb557add1UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_2 != 0xdc2ab0c3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_3 != 0xa35ccde4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_4 != 0x38adc86aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_5 != 0x92d71f6bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_6 != 0x785b37ccUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_7 != 0x720e4685UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_0 0xb24c2ed0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_1 0xb557add1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_2 0xdc2ab0c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_3 0xa35ccde4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_4 0x38adc86aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_5 0x92d71f6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_6 0x785b37ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT_7 0x720e4685UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetInputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetInputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_0 != 0xfec5b76fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_1 != 0xf12f5db5UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_2 != 0x652b8bffUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_3 != 0x7c36fb6fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_4 != 0xce6dd008UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_5 != 0x459a2b21UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_6 != 0xf6867314UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_7 != 0x193e2a11UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_0 0xfec5b76fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_1 0xf12f5db5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_2 0x652b8bffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_3 0x7c36fb6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_4 0xce6dd008UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_5 0x459a2b21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_6 0xf6867314UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL_7 0x193e2a11UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetOutputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_0 != 0x837f7719UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_1 != 0x80ca49fdUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_2 != 0xbb14cc0fUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_3 != 0x7ba0609fUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_4 != 0xcf6e836bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_5 != 0xdf7dcf81UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_6 != 0xe0117fabUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_7 != 0x06fbe1aeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_0 0x837f7719UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_1 0x80ca49fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_2 0xbb14cc0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_3 0x7ba0609fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_4 0xcf6e836bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_5 0xdf7dcf81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_6 0xe0117fabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT_7 0x06fbe1aeUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_0 != 0x3d30556dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_1 != 0xd41d1155UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_2 != 0x7c832088UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_3 != 0xd05e4f3dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_4 != 0x9a86f120UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_5 != 0x98eccaf4UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_6 != 0x9d60d079UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_7 != 0x2031248dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_0 0x3d30556dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_1 0xd41d1155UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_2 0x7c832088UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_3 0xd05e4f3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_4 0x9a86f120UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_5 0x98eccaf4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_6 0x9d60d079UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT_7 0x2031248dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetOutputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_0 != 0x00f29342UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_1 != 0x1455ce98UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_2 != 0x58962884UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_3 != 0x5e69ab9aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_4 != 0x78b96934UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_5 != 0x26d46b54UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_6 != 0xf7d03b20UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_7 != 0xb653436fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_0 0x00f29342UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_1 0x1455ce98UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_2 0x58962884UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_3 0x5e69ab9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_4 0x78b96934UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_5 0x26d46b54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_6 0xf7d03b20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE_7 0xb653436fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetPose_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse* response)
{
    unsigned char input[1], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetPose_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetPose_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetPoseResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_0 != 0x509877acUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_1 != 0xf0e91779UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_2 != 0x53512736UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_3 != 0x05baeafcUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_4 != 0xa76441bdUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_5 != 0x226aaf34UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_6 != 0xfe921bb6UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_7 != 0x80648586UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_0 0x509877acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_1 0xf0e91779UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_2 0x53512736UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_3 0x05baeafcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_4 0xa76441bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_5 0x226aaf34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_6 0xfe921bb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE_7 0x80648586UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_GetStartPoseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_0 != 0x398181f8UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_1 != 0xcb49a5fcUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_2 != 0x3c322064UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_3 != 0x5aa3aebcUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_4 != 0x412e5aa6UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_5 != 0x8a1397c9UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_6 != 0x3fe415f3UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_7 != 0xb8135aceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_0 0x398181f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_1 0xcb49a5fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_2 0x3c322064UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_3 0x5aa3aebcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_4 0x412e5aa6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_5 0x8a1397c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_6 0x3fe415f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN_7 0xb8135aceUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_InverseKin_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse* response)
{
    unsigned char input[1088], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest_encode(request, input, 1088, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_InverseKin_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest* request)
{
    unsigned char output[1096];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_InverseKinRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_InverseKin_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_InverseKinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_0 != 0x5d2949e2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_1 != 0xc785319cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_2 != 0x12c50e7cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_3 != 0x2a71fe9dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_4 != 0x752e2bfdUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_5 != 0xedce0fa1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_6 != 0x5e4193c8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_7 != 0xe8ea9f76UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_0 0x5d2949e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_1 0xc785319cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_2 0x12c50e7cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_3 0x2a71fe9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_4 0x752e2bfdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_5 0xedce0fa1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_6 0x5e4193c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION_7 0xe8ea9f76UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest const* request,
                                                             roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_InverseSolutionResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_0 != 0x984a72b0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_1 != 0x2e565f13UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_2 != 0x3d076a34UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_3 != 0x832bc9beUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_4 != 0x935c90ccUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_5 != 0xc3fbcb47UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_6 != 0x920a7892UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_7 != 0x93414c87UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_0 0x984a72b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_1 0x2e565f13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_2 0x3d076a34UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_3 0x832bc9beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_4 0x935c90ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_5 0xc3fbcb47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_6 0x920a7892UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE_7 0x93414c87UL

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
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse_decode(output, (size_t)r.length, &next))
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
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
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
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ModbusCloseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_0 != 0x719adf00UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_1 != 0xaa68ba2bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_2 != 0x7d6f42b2UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_3 != 0xf0935d3aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_4 != 0xf8b67865UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_5 != 0x584156e4UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_6 != 0xcac3c474UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_7 != 0x834d3322UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_0 0x719adf00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_1 0xaa68ba2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_2 0x7d6f42b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_3 0xf0935d3aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_4 0xf8b67865UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_5 0x584156e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_6 0xcac3c474UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE_7 0x834d3322UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ModbusCreateResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_0 != 0x214710dfUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_1 != 0xc5414922UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_2 != 0x9f07329bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_3 != 0x866fa2e0UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_4 != 0x8a20d14eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_5 != 0x3628b115UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_6 != 0x6876c14dUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_7 != 0x44b68b37UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_0 0x214710dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_1 0xc5414922UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_2 0x9f07329bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_3 0x866fa2e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_4 0x8a20d14eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_5 0x3628b115UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_6 0x6876c14dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE_7 0x44b68b37UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest const* request,
                                                             roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse* response)
{
    unsigned char input[276], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest_encode(request, input, 276, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest* request)
{
    unsigned char output[284];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreateResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_0 != 0xadab4a62UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_1 != 0x48b63069UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_2 != 0x19fd2062UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_3 != 0xb76ffaacUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_4 != 0x8b6b982fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_5 != 0x8a1753adUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_6 != 0xf7f5e1c5UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_7 != 0x3fc65727UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_0 0xadab4a62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_1 0x48b63069UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_2 0x19fd2062UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_3 0xb76ffaacUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_4 0x8b6b982fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_5 0x8a1753adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_6 0xf7f5e1c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ_7 0x3fc65727UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovJ_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_MovJRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_MovJResponse* response)
{
    unsigned char input[4213], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_MovJRequest_encode(request, input, 4213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_MovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_MovJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_MovJRequest* request)
{
    unsigned char output[4221];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_MovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovJ_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_MovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_MovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_0 != 0x9c8d72c0UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_1 != 0x5302f7f2UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_2 != 0x686d28d5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_3 != 0xee849aa6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_4 != 0xf8733c0fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_5 != 0x476474d3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_6 != 0x2d7bc634UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_7 != 0x7a937ce7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_0 0x9c8d72c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_1 0x5302f7f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_2 0x686d28d5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_3 0xee849aa6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_4 0xf8733c0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_5 0x476474d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_6 0x2d7bc634UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO_7 0x7a937ce7UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovJIO_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse* response)
{
    unsigned char input[8377], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest_encode(request, input, 8377, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovJIO_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest* request)
{
    unsigned char output[8385];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_MovJIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovJIO_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_MovJIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_0 != 0x786f0d80UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_1 != 0xb44efa08UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_2 != 0xc99aaaefUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_3 != 0xf12ad2e6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_4 != 0xc2fe159aUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_5 != 0xdae6191cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_6 != 0x9075c5f2UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_7 != 0x6162da03UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_0 0x786f0d80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_1 0xb44efa08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_2 0xc99aaaefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_3 0xf12ad2e6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_4 0xc2fe159aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_5 0xdae6191cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_6 0x9075c5f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL_7 0x6162da03UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovL_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_MovLRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_MovLResponse* response)
{
    unsigned char input[4213], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_MovLRequest_encode(request, input, 4213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_MovLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_MovL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_MovLRequest* request)
{
    unsigned char output[4221];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_MovLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovL_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_MovLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_MovLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_0 != 0x014e332dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_1 != 0xc8ad1390UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_2 != 0x8ba7143cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_3 != 0xd96b1731UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_4 != 0x2842228cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_5 != 0xe0ebd9cfUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_6 != 0x1df4c144UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_7 != 0x76f8dd43UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_0 0x014e332dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_1 0xc8ad1390UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_2 0x8ba7143cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_3 0xd96b1731UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_4 0x2842228cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_5 0xe0ebd9cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_6 0x1df4c144UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO_7 0x76f8dd43UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovLIO_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse* response)
{
    unsigned char input[8377], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest_encode(request, input, 8377, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovLIO_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest* request)
{
    unsigned char output[8385];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_MovLIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MovLIO_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_MovLIOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_0 != 0x570f2aa7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_1 != 0x91c1e2e9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_2 != 0x756cd3baUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_3 != 0x119d9543UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_4 != 0xf9ac599fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_5 != 0xfedf45f9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_6 != 0x202a5fecUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_7 != 0x5258984eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_0 0x570f2aa7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_1 0x91c1e2e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_2 0x756cd3baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_3 0x119d9543UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_4 0xf9ac599fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_5 0xfedf45f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_6 0x202a5fecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG_7 0x5258984eUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MoveJog_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MoveJog_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_MoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_MoveJog_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_MoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_0 != 0x2af7784dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_1 != 0x43399856UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_2 != 0xf6d052f7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_3 != 0x9c6baf4eUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_4 != 0x64e7b910UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_5 != 0x1f27da79UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_6 != 0x460762a5UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_7 != 0x564b42e5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_0 0x2af7784dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_1 0x43399856UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_2 0xf6d052f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_3 0x9c6baf4eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_4 0x64e7b910UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_5 0x1f27da79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_6 0x460762a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE_7 0x564b42e5UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Pause_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_PauseRequest const* request,
                                                                             roswasmc_bounded_1_dobot_v4_bringup_PauseResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PauseResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PauseResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_PauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_PauseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_Pause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_PauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PauseRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PauseRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_PauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Pause_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_PauseResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_PauseResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_0 != 0xe8f97d4aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_1 != 0x98b1e253UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_2 != 0x5b3356d6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_3 != 0x3944b63cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_4 != 0x44215349UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_5 != 0x7294f004UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_6 != 0x95dae5baUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_7 != 0xde3d8fdbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_0 0xe8f97d4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_1 0x98b1e253UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_2 0x5b3356d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_3 0x3944b63cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_4 0x44215349UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_5 0x7294f004UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_6 0x95dae5baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN_7 0xde3d8fdbUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse* response)
{
    unsigned char input[568], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest_encode(request, input, 568, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest* request)
{
    unsigned char output[576];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_PositiveKinRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_PositiveKinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_0 != 0xf79940c0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_1 != 0xc48863a0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_2 != 0xc11c43efUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_3 != 0x48e19fbaUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_4 != 0x2e79b66fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_5 != 0xf1184cc4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_6 != 0x153aaca7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_7 != 0xa0100674UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_0 0xf79940c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_1 0xc48863a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_2 0xc11c43efUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_3 0x48e19fbaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_4 0x2e79b66fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_5 0xf1184cc4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_6 0x153aaca7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON_7 0xa0100674UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PowerOn_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PowerOn_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_PowerOnRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_PowerOn_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_PowerOnResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_0 != 0x94f7c6d6UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_1 != 0x5c1c3bcbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_2 != 0xbd145a0fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_3 != 0x9114b2f4UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_4 != 0xb0448af2UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_5 != 0xdea43703UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_6 != 0xcc516df0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_7 != 0x247c336fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_0 0x94f7c6d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_1 0x5c1c3bcbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_2 0xbd145a0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_3 0x9114b2f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_4 0xb0448af2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_5 0xdea43703UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_6 0xcc516df0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ_7 0x247c336fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_0 != 0x0a0aa04aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_1 != 0xdb93f2e7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_2 != 0xce662fdfUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_3 != 0xd625a1bdUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_4 != 0x2e0f1b8eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_5 != 0xbd59f190UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_6 != 0xc690e18cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_7 != 0x36fb8ce9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_0 0x0a0aa04aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_1 0xdb93f2e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_2 0xce662fdfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_3 0xd625a1bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_4 0x2e0f1b8eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_5 0xbd59f190UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_6 0xc690e18cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL_7 0x36fb8ce9UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RelMovJToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_0 != 0xfa623d01UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_1 != 0x9b458316UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_2 != 0x29ea846eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_3 != 0x954d88b2UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_4 != 0x25f11d63UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_5 != 0x9b501834UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_6 != 0x803385e3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_7 != 0x579cfdd2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_0 0xfa623d01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_1 0x9b458316UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_2 0x29ea846eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_3 0x954d88b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_4 0x25f11d63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_5 0x9b501834UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_6 0x803385e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER_7 0x579cfdd2UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RelMovJUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_0 != 0x0d09bae9UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_1 != 0x87ffbd49UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_2 != 0x27bd53ebUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_3 != 0xbc69963aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_4 != 0x9a5922f6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_5 != 0x09b6bf4dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_6 != 0x1a300755UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_7 != 0x62ba55d6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_0 0x0d09bae9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_1 0x87ffbd49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_2 0x27bd53ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_3 0xbc69963aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_4 0x9a5922f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_5 0x09b6bf4dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_6 0x1a300755UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL_7 0x62ba55d6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RelMovLToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_0 != 0x5d2569d0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_1 != 0xdc8df9faUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_2 != 0x0ab00cf6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_3 != 0xbd158180UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_4 != 0x6475a375UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_5 != 0x62aaa956UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_6 != 0xdd706fdcUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_7 != 0x4a24840fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_0 0x5d2569d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_1 0xdc8df9faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_2 0x0ab00cf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_3 0xbd158180UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_4 0x6475a375UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_5 0x62aaa956UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_6 0xdd706fdcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER_7 0x4a24840fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RelMovLUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_0 != 0x74a3c0f5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_1 != 0x44f1369aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_2 != 0x443d4e85UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_3 != 0x08f44c8bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_4 != 0x727b031bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_5 != 0xaf49f849UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_6 != 0x2cbf8c54UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_7 != 0x56594e42UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_0 0x74a3c0f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_1 0x44f1369aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_2 0x443d4e85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_3 0x08f44c8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_4 0x727b031bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_5 0xaf49f849UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_6 0x2cbf8c54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE_7 0x56594e42UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RobotMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse* response)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RobotMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RobotMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse const* response)
{
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RobotModeResponse_encode(response, input + 8, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_0 != 0x63b54514UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_1 != 0x75d9ada1UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_2 != 0xfce514c9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_3 != 0x64697640UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_4 != 0x426d5b36UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_5 != 0x6c25be04UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_6 != 0x60ff4a6bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_7 != 0x1c7da0aaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_0 0x63b54514UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_1 0x75d9ada1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_2 0xfce514c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_3 0x64697640UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_4 0x426d5b36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_5 0x6c25be04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_6 0x60ff4a6bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT_7 0x1c7da0aaUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RunScript_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse* response)
{
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RunScript_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_RunScriptRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_RunScript_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_RunScriptResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_0 != 0x2f0805b5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_1 != 0x7457fb46UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_2 != 0x42061ba1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_3 != 0x2f1f0af3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_4 != 0x61a19eb7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_5 != 0x2d5a3306UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_6 != 0xbbff5f6cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_7 != 0x43cf1025UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_0 0x2f0805b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_1 0x7457fb46UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_2 0x42061ba1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_3 0x2f1f0af3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_4 0x61a19eb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_5 0x2d5a3306UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_6 0xbbff5f6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ_7 0x43cf1025UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoJ_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoJ_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ServoJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoJ_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ServoJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_0 != 0xef94e6feUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_1 != 0x207a1822UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_2 != 0x009ed567UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_3 != 0x8688426fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_4 != 0xd1892e84UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_5 != 0xaa1f4f99UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_6 != 0xe2fb5210UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_7 != 0xb874574cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_0 0xef94e6feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_1 0x207a1822UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_2 0x009ed567UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_3 0x8688426fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_4 0xd1892e84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_5 0xaa1f4f99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_6 0xe2fb5210UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP_7 0xb874574cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoP_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse* response)
{
    unsigned char input[4212], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest_encode(request, input, 4212, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoP_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest* request)
{
    unsigned char output[4220];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ServoPRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ServoP_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ServoPResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_0 != 0x3bc0d627UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_1 != 0x04fd0bc5UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_2 != 0xab45d6b2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_3 != 0x4ead5112UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_4 != 0xa98cbc36UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_5 != 0x44c63393UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_6 != 0xf70879b1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_7 != 0xb19578e6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_0 0x3bc0d627UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_1 0x04fd0bc5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_2 0xab45d6b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_3 0x4ead5112UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_4 0xa98cbc36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_5 0x44c63393UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_6 0xf70879b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE_7 0xb19578e6UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest const* request,
                                                             roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetBackDistanceResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_0 != 0x22f97585UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_1 != 0x2b6619bfUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_2 != 0x5e5f33c0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_3 != 0xd3ca0c31UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_4 != 0x992e4e8cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_5 != 0xd738e998UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_6 != 0x97895bb6UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_7 != 0x340381ceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_0 0x22f97585UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_1 0x2b6619bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_2 0x5e5f33c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_3 0xd3ca0c31UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_4 0x992e4e8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_5 0xd738e998UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_6 0x97895bb6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS_7 0x340381ceUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetCoils_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetCoils_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetCoilsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetCoils_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetCoilsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_0 != 0x3d2bffc9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_1 != 0x7b629a6dUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_2 != 0x9adb25d6UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_3 != 0x7c6c4cd2UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_4 != 0xea7c5c85UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_5 != 0x82755b26UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_6 != 0x2da9b8e9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_7 != 0x2be1f8abUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_0 0x3d2bffc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_1 0x7b629a6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_2 0x9adb25d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_3 0x7c6c4cd2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_4 0xea7c5c85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_5 0x82755b26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_6 0x2da9b8e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL_7 0x2be1f8abUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest const* request,
                                                               roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevelResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_0 != 0x7a3b44fdUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_1 != 0xefffe062UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_2 != 0x51a0ecb1UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_3 != 0xc5de1b8fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_4 != 0xcf75c38dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_5 != 0x30f4b498UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_6 != 0xd7d73040UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_7 != 0x9bc1889dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_0 0x7a3b44fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_1 0xefffe062UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_2 0x51a0ecb1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_3 0xc5de1b8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_4 0xcf75c38dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_5 0x30f4b498UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_6 0xd7d73040UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS_7 0x9bc1889dUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse* response)
{
    unsigned char input[532], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest_encode(request, input, 532, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest* request)
{
    unsigned char output[540];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegsResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_0 != 0x65472abfUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_1 != 0xb52d2785UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_2 != 0x1fe8b8d8UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_3 != 0x84d4034dUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_4 != 0xefd18014UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_5 != 0x4444d1c4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_6 != 0xdc289978UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_7 != 0x5e88ad92UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_0 0x65472abfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_1 0xb52d2785UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_2 0x1fe8b8d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_3 0x84d4034dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_4 0xefd18014UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_5 0x4444d1c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_6 0xdc289978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL_7 0x5e88ad92UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetOutputBoolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_0 != 0x83cd7697UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_1 != 0x704e1992UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_2 != 0x474431b8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_3 != 0x3d4a2449UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_4 != 0x93571639UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_5 != 0x30835782UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_6 != 0xb5fd2a27UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_7 != 0x4fd1b426UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_0 0x83cd7697UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_1 0x704e1992UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_2 0x474431b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_3 0x3d4a2449UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_4 0x93571639UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_5 0x30835782UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_6 0xb5fd2a27UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT_7 0x4fd1b426UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest const* request,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse* response)
{
    unsigned char input[12], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloatResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_0 != 0xfa5b8441UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_1 != 0x323d980dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_2 != 0x3c446a45UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_3 != 0x3369ccd4UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_4 != 0xbe98c8afUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_5 != 0xe4767bd3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_6 != 0x8b3a10f1UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_7 != 0x7115e509UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_0 0xfa5b8441UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_1 0x323d980dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_2 0x3c446a45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_3 0x3369ccd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_4 0xbe98c8afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_5 0xe4767bd3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_6 0x8b3a10f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT_7 0x7115e509UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetOutputIntResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_0 != 0x18ad8e4bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_1 != 0x438b2ce5UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_2 != 0xb0bfda3dUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_3 != 0xccbb2947UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_4 != 0x7782854fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_5 != 0x1ca17130UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_6 != 0x65233bb3UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_7 != 0x5dcebba3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_0 0x18ad8e4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_1 0x438b2ce5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_2 0xb0bfda3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_3 0xccbb2947UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_4 0x7782854fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_5 0x1ca17130UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_6 0x65233bb3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD_7 0x5dcebba3UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetPayload_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse* response)
{
    unsigned char input[32], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetPayload_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetPayloadRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetPayload_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetPayloadResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_0 != 0xde2aa2ffUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_1 != 0x5d1856c1UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_2 != 0x0fd1c7ecUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_3 != 0x4040f68aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_4 != 0x19c888acUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_5 != 0xf0ce1db6UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_6 != 0x149ce493UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_7 != 0xfb0a3016UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_0 0xde2aa2ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_1 0x5d1856c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_2 0x0fd1c7ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_3 0x4040f68aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_4 0x19c888acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_5 0xf0ce1db6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_6 0x149ce493UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE_7 0xfb0a3016UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest const* request,
                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionModeResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_0 != 0x59dde4ceUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_1 != 0x8351b892UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_2 != 0xc2a7877eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_3 != 0x4d787782UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_4 != 0x360bfc07UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_5 != 0xc252e282UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_6 != 0x40016792UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_7 != 0x4cae95b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_0 0x59dde4ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_1 0x8351b892UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_2 0xc2a7877eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_3 0x4d787782UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_4 0x360bfc07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_5 0xc252e282UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_6 0x40016792UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN_7 0x4cae95b2UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkinResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_0 != 0x53dcaff6UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_1 != 0x2084bc9bUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_2 != 0x0106176bUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_3 != 0x3dd6bde3UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_4 != 0x1b6d89acUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_5 != 0x39ae6a66UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_6 != 0x5a1b31d9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_7 != 0x781713a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_0 0x53dcaff6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_1 0x2084bc9bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_2 0x0106176bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_3 0x3dd6bde3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_4 0x1b6d89acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_5 0x39ae6a66UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_6 0x5a1b31d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE_7 0x781713a3UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest const* request,
                                                               roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnableResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_0 != 0x753a5ab1UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_1 != 0x7ca745d0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_2 != 0x51efd81eUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_3 != 0x800781bcUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_4 != 0xff04d0d2UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_5 != 0xd5d9dd40UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_6 != 0x453ef58aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_7 != 0x711d282fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_0 0x753a5ab1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_1 0x7ca745d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_2 0x51efd81eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_3 0x800781bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_4 0xff04d0d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_5 0xd5d9dd40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_6 0x453ef58aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL_7 0x711d282fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse* response)
{
    unsigned char input[264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_0 != 0xe4561450UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_1 != 0xbbf276e3UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_2 != 0xec445e1bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_3 != 0x40c382a5UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_4 != 0xe3111624UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_5 != 0x962c026eUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_6 != 0xdeb73b1bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_7 != 0xa5fbc5ffUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_0 0xe4561450UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_1 0xbbf276e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_2 0xec445e1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_3 0x40c382a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_4 0xe3111624UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_5 0x962c026eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_6 0xdeb73b1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485_7 0xa5fbc5ffUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool485_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request const* request,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response* response)
{
    unsigned char input[272], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool485_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetTool485Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetTool485_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetTool485Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_0 != 0x13c9f66eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_1 != 0x7dcb4932UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_2 != 0x6356b1b7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_3 != 0x253e9404UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_4 != 0xa8e7bf84UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_5 != 0x51b81d20UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_6 != 0x878ec540UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_7 != 0x3d841acfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_0 0x13c9f66eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_1 0x7dcb4932UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_2 0x6356b1b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_3 0x253e9404UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_4 0xa8e7bf84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_5 0x51b81d20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_6 0x878ec540UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE_7 0x3d841acfUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetToolModeResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_0 != 0xbbc8ce4aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_1 != 0xd3eb5e73UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_2 != 0x2274ce9fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_3 != 0x253bc089UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_4 != 0xd4bc4cd0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_5 != 0x1627dd07UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_6 != 0x6ae99bbbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_7 != 0xce8fbab0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_0 0xbbc8ce4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_1 0xd3eb5e73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_2 0x2274ce9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_3 0x253bc089UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_4 0xd4bc4cd0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_5 0x1627dd07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_6 0x6ae99bbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER_7 0xce8fbab0UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetToolPowerResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_0 != 0x0c1a4b03UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_1 != 0xf573d586UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_2 != 0xfb310416UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_3 != 0xdf66e08fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_4 != 0xc7af7a3fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_5 != 0x9c37af19UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_6 != 0x659dca9fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_7 != 0xb3c21e33UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_0 0x0c1a4b03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_1 0xf573d586UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_2 0xfb310416UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_3 0xdf66e08fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_4 0xc7af7a3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_5 0x9c37af19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_6 0x659dca9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER_7 0xb3c21e33UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetUser_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest const* request,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse* response)
{
    unsigned char input[264], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetUser_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SetUserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SetUser_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SetUserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_0 != 0x0ab6ed49UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_1 != 0x626b2f1aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_2 != 0x0a56a542UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_3 != 0x47007322UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_4 != 0x8eba7e20UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_5 != 0xddf12bf5UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_6 != 0x336fe2d8UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_7 != 0xe39f274fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_0 0x0ab6ed49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_1 0x626b2f1aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_2 0x0a56a542UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_3 0x47007322UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_4 0x8eba7e20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_5 0xddf12bf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_6 0x336fe2d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR_7 0xe39f274fUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_SpeedFactorResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_0 != 0xc862e63aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_1 != 0xe582658aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_2 != 0x54cb6a08UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_3 != 0x3d89c9bbUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_4 != 0x4315e15bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_5 != 0x85bd7e14UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_6 != 0x4047a931UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_7 != 0x6999913cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_0 0xc862e63aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_1 0xe582658aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_2 0x54cb6a08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_3 0x3d89c9bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_4 0x4315e15bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_5 0x85bd7e14UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_6 0x4047a931UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG_7 0x6999913cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartDrag_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartDrag_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_StartDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartDrag_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_StartDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_0 != 0x79b5580eUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_1 != 0x689cb453UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_2 != 0x11f10433UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_3 != 0x4748e000UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_4 != 0x75341e49UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_5 != 0x85b20ac5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_6 != 0x26c2535aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_7 != 0x1166748cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_0 0x79b5580eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_1 0x689cb453UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_2 0x11f10433UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_3 0x4748e000UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_4 0x75341e49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_5 0x85b20ac5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_6 0x26c2535aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH_7 0x1166748cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartPath_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest const* request,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse* response)
{
    unsigned char input[4424], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest_encode(request, input, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartPath_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest* request)
{
    unsigned char output[4432];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_StartPathRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StartPath_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_StartPathResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_0 != 0x22180b8cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_1 != 0xf24a722eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_2 != 0x17d1b9f8UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_3 != 0xf4782a26UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_4 != 0x793ed5ecUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_5 != 0x5e1b7299UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_6 != 0x98b203dfUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_7 != 0xc8e599aeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_0 0x22180b8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_1 0xf24a722eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_2 0x17d1b9f8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_3 0xf4782a26UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_4 0x793ed5ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_5 0x5e1b7299UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_6 0x98b203dfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP_7 0xc8e599aeUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Stop_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_StopRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_StopResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_StopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_StopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_Stop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_StopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_StopRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Stop_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_StopResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_StopResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_0 != 0xa83947a5UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_1 != 0x4483de3bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_2 != 0x352eb39eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_3 != 0x1eb5b84dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_4 != 0xdaf89844UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_5 != 0x35b1b804UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_6 != 0xa26feafaUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_7 != 0x33489fcdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_0 0xa83947a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_1 0x4483de3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_2 0x352eb39eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_3 0x1eb5b84dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_4 0xdaf89844UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_5 0x35b1b804UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_6 0xa26feafaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG_7 0x33489fcdUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopDrag_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest const* request,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopDrag_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_StopDragRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopDrag_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_StopDragResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_0 != 0xb16a2002UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_1 != 0x26bc7dd0UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_2 != 0xc23d66e4UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_3 != 0x323511c9UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_4 != 0x85eec179UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_5 != 0x256f8226UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_6 != 0x1f859a50UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_7 != 0xd0fd324cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_0 0xb16a2002UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_1 0x26bc7dd0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_2 0xc23d66e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_3 0x323511c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_4 0x85eec179UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_5 0x256f8226UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_6 0x1f859a50UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG_7 0xd0fd324cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest const* request,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse* response)
{
    unsigned char input[1], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_StopMoveJogResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_0 != 0x72bb8cddUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_1 != 0x8d4165d3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_2 != 0x8465ca3bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_3 != 0xefdc51b5UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_4 != 0xa21873fcUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_5 != 0x147191c5UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_6 != 0xd45b9510UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_7 != 0xe7df0730UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_0 0x72bb8cddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_1 0x8d4165d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_2 0x8465ca3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_3 0xefdc51b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_4 0xa21873fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_5 0x147191c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_6 0xd45b9510UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD_7 0xe7df0730UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest const* request,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse* response)
{
    unsigned char input[260], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse const* response)
{
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_TcpDashboardResponse_encode(response, input + 8, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_0 != 0xb5833af9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_1 != 0x7535b428UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_2 != 0xbbcef79cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_3 != 0xfcdc697eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_4 != 0x31fb64b7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_5 != 0x8f01a8ccUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_6 != 0x10879e23UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_7 != 0x389c698cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_0 0xb5833af9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_1 0x7535b428UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_2 0xbbcef79cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_3 0xfcdc697eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_4 0x31fb64b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_5 0x8f01a8ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_6 0x10879e23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL_7 0x389c698cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Tool_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_ToolRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_ToolResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_Tool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_ToolRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_Tool_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_ToolResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ToolResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_0 != 0x39ba227fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_1 != 0x95edbefeUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_2 != 0x4cb9069cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_3 != 0xf81c1742UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_4 != 0x68311d87UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_5 != 0x3cf94e8dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_6 != 0x6fe2863dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_7 != 0xc7790750UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_0 0x39ba227fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_1 0x95edbefeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_2 0x4cb9069cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_3 0xf81c1742UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_4 0x68311d87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_5 0x3cf94e8dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_6 0x6fe2863dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI_7 0xc7790750UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolAI_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolAI_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolAIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolAI_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ToolAIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_0 != 0xedcb2a10UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_1 != 0xd55e23bcUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_2 != 0x1e225b13UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_3 != 0x512385a8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_4 != 0x22c540d3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_5 != 0x6c692bf8UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_6 != 0xd1e11482UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_7 != 0xb793c7bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_0 0xedcb2a10UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_1 0xd55e23bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_2 0x1e225b13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_3 0x512385a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_4 0x22c540d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_5 0x6c692bf8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_6 0xd1e11482UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI_7 0xb793c7bfUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDI_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDI_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDI_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ToolDIResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_0 != 0x2b593d2fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_1 != 0xf4d0ca78UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_2 != 0xcc3e5992UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_3 != 0xa2e65b8bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_4 != 0x3c1ac66aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_5 != 0x1b9541c0UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_6 != 0x5bc4736eUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_7 != 0xd3dae83cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_0 0x2b593d2fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_1 0xf4d0ca78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_2 0xcc3e5992UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_3 0xa2e65b8bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_4 0x3c1ac66aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_5 0x1b9541c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_6 0x5bc4736eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO_7 0xd3dae83cUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDO_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest const* request,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDO_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDO_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ToolDOResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_0 != 0x1608b276UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_1 != 0x76865ac5UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_2 != 0x9c90a2acUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_3 != 0x1c94bc47UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_4 != 0x5d131ce9UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_5 != 0x2cf594e0UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_6 != 0x25701024UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_7 != 0x171d15aaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_0 0x1608b276UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_1 0x76865ac5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_2 0x9c90a2acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_3 0x1c94bc47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_4 0x5d131ce9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_5 0x2cf594e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_6 0x25701024UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT_7 0x171d15aaUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest const* request,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse* response)
{
    unsigned char input[8], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
 * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component before
 * calling user code. Serialize the facade, its callback state and borrowed storage throughout this pass.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
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
    roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstantResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_0 != 0x8fae1223UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_1 != 0x97d786b6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_2 != 0x461e2096UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_3 != 0xeef9bb37UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_4 != 0x5c802532UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_5 != 0xc394a915UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_6 != 0xc260883cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_7 != 0xc4072c56UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_0 0x8fae1223UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_1 0x97d786b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_2 0x461e2096UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_3 0xeef9bb37UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_4 0x5c802532UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_5 0xc394a915UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_6 0xc260883cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER_7 0xc4072c56UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_User_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_UserRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_UserResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_UserResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_UserResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_UserRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_UserResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_User_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_UserRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_UserRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_UserRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_UserRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_User_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_UserResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_UserResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_0 != 0xbceaef04UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_1 != 0x40a612afUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_2 != 0x7ede8cd7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_3 != 0x163cbb1fUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_4 != 0x8f602f48UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_5 != 0x21a36222UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_6 != 0x39ba1d78UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_7 != 0x8b8ea024UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_0 0xbceaef04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_1 0x40a612afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_2 0x7ede8cd7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_3 0x163cbb1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_4 0x8f602f48UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_5 0x21a36222UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_6 0x39ba1d78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ_7 0x8b8ea024UL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_VelJ_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_VelJRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_VelJResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_VelJResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_VelJResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_VelJRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_VelJResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_VelJ_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_VelJRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_VelJRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_VelJRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_VelJRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_VelJ_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_VelJResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_VelJResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_0 != 0x096f9cd1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_1 != 0x4bdd47b1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_2 != 0xbfff70c7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_3 != 0x1284e01dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_4 != 0x42dce99cUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_5 != 0xa54aadb1UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_6 != 0xab1addb5UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_7 != 0x522d059aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_0 0x096f9cd1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_1 0x4bdd47b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_2 0xbfff70c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_3 0x1284e01dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_4 0x42dce99cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_5 0xa54aadb1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_6 0xab1addb5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL_7 0x522d059aUL

/** Call one explicitly authorized custom Service exactly once; no replay. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param request Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_VelL_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_VelLRequest const* request,
                                                                            roswasmc_bounded_1_dobot_v4_bringup_VelLResponse* response)
{
    unsigned char input[4], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_VelLResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_VelLResponse);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dobot_v4_bringup_VelLRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dobot_v4_bringup_VelLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
/**
 * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
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
    roswasmc_bounded_1_dobot_v4_bringup_VelL_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dobot_v4_bringup_VelLRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dobot_v4_bringup_VelLRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_dobot_v4_bringup_VelLRequest);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dobot_v4_bringup_VelLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
/**
 * @brief Issue one explicit operation for the selected original interface.
 * @details The caller supplies an already granted exact operation alias and a complete bounded component.
 * Preserve full-width correlation/ticket identifiers. An admitted operation is never silently replayed; a
 * timeout is not evidence of rollback or actuator completion.
 * @param cap Borrowed live owner/context/backend; retain it unchanged throughout this synchronous call.
 * @param ticket Complete original component or local protocol value, with its documented owner and bounds.
 * @param response Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original operation status with its independent presence/required-length facts; no fallback
 * response.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
static inline roswasmc_result roswasmc_bounded_1_dobot_v4_bringup_VelL_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dobot_v4_bringup_VelLResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dobot_v4_bringup_VelLResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
