/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_DB6C21A377074862318B8DC7B8409E873B1FB5A11D514348D8CC883A1C669427
#define UWVM_ROS_BOUNDED_INTERFACES_DB6C21A377074862318B8DC7B8409E873B1FB5A11D514348D8CC883A1C669427
#include "bounded_records.h"
#include <roswasm/action_bundle.h>
#ifndef UWVM_ROS_BOUNDED_CAP_DESTINATION
# define UWVM_ROS_BOUNDED_CAP_DESTINATION

/** @brief Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller responsibility. */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_0 != 0x97d45b86UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_1 != 0x39c9f40cUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_2 != 0x000d79feUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_3 != 0x332c292cUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_4 != 0x5925113dUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_5 != 0xdb2ac5b7UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_6 != 0xe2a28a41UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_7 != 0xa8f21b2aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_0 0x97d45b86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_1 0x39c9f40cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_2 0x000d79feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_3 0x332c292cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_4 0x5925113dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_5 0xdb2ac5b7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_6 0xe2a28a41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOL_7 0xa8f21b2aUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_std_srvs_SetBool_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_std_srvs_SetBoolRequest const* request,
                                                                       roswasmc_bounded_1_std_srvs_SetBoolResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_std_srvs_SetBoolResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_std_srvs_SetBoolRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_std_srvs_SetBoolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_std_srvs_SetBool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_std_srvs_SetBoolRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_std_srvs_SetBoolRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_std_srvs_SetBoolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_1_std_srvs_SetBool_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_std_srvs_SetBoolResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_std_srvs_SetBoolResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_0 != 0x2c97d960UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_1 != 0x32308e4bUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_2 != 0x8db1f628UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_3 != 0x14b89fd6UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_4 != 0xf3a8f0bcUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_5 != 0x79ad77ecUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_6 != 0x79fcc0b0UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_7 != 0x13b1fda1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_0 0x2c97d960UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_1 0x32308e4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_2 0x8db1f628UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_3 0x14b89fd6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_4 0xf3a8f0bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_5 0x79ad77ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_6 0x79fcc0b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGER_7 0x13b1fda1UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_std_srvs_Trigger_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_std_srvs_TriggerRequest const* request,
                                                                       roswasmc_bounded_1_std_srvs_TriggerResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_std_srvs_TriggerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_std_srvs_TriggerRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_std_srvs_TriggerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_std_srvs_Trigger_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_std_srvs_TriggerRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_std_srvs_TriggerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_std_srvs_TriggerRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_1_std_srvs_Trigger_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_std_srvs_TriggerResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_std_srvs_TriggerResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_0 != 0xfb56acc7UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_1 != 0xdceed5eeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_2 != 0x1878b5aeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_3 != 0xcc289ccdUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_4 != 0x32e6299fUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_5 != 0xbfa80c42UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_6 != 0xbe439c90UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_7 != 0x51e49990UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_0 0xfb56acc7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_1 0xdceed5eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_2 0x1878b5aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_3 0xcc289ccdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_4 0x32e6299fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_5 0xbfa80c42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_6 0xbe439c90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3_7 0x51e49990UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_turtlebot3_example_Turtlebot3_send(roswasmc_action_bundle* bundle,
                                                                                    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* goal,
                                                                                    uint64_t* id)
{
    unsigned char input[24], output[8];
    size_t n = 0;
    uint64_t next;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, id, sizeof *id))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(bundle->count == bundle->capacity)
        return roswasmc_action_bundle_failure(UWVM_ROS_TOO_LARGE);
    if(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_encode(goal, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_action_send_goal(&bundle->cap[0], input, n, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length != 8 || (next = uwvm_bounded_get(output, 8)) == 0 || roswasmc_action_bundle_owns(bundle, next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    bundle->goals[bundle->count++] = next;
    *id = next;
    return r;
}

/** @brief Read custom feedback only for a locally owned exact Goal ID; idle leaves output untouched. */
static inline roswasmc_result roswasmc_bounded_1_turtlebot3_example_Turtlebot3_feedback(roswasmc_action_bundle const* bundle,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback* feedback)
{
    unsigned char input[8], output[268];
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback next = {0};
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, feedback, sizeof *feedback))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(!roswasmc_action_bundle_owns(bundle, id))
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_feedback(&bundle->cap[2], input, 8, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id ||
       roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_turtlebot3_example_Turtlebot3_result(roswasmc_action_bundle* bundle,
                                                                                      uint64_t id,
                                                                                      uint8_t* kind,
                                                                                      roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result* result)
{
    unsigned char input[8], output[269];
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result next = {0};
    size_t i;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, kind, sizeof *kind) || !roswasmc_action_bundle_destination(bundle, result, sizeof *result) ||
       uwvm_bounded_overlap(kind, sizeof *kind, result, sizeof *result))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(!roswasmc_action_bundle_owns(bundle, id))
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_result(&bundle->cap[3], input, 8, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 9 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id || output[8] < 2 || output[8] > 4 ||
       roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_decode(output + 9, (size_t)r.length - 9, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    for(i = 0; i < bundle->count; ++i)
        if(bundle->goals[i] == id)
        {
            --bundle->count;
            bundle->goals[i] = bundle->goals[bundle->count];
            bundle->goals[bundle->count] = 0;
            break;
        }
    *kind = output[8];
    *result = next;
    return r;
}

/** @brief Poll one incoming custom Goal under an independently activated advertise alias. */
static inline roswasmc_result roswasmc_bounded_1_turtlebot3_example_Turtlebot3_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* id,
                                                                                    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal* goal)
{
    unsigned char output[32];
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3_respond_feedback(roswasmc_capability const* cap,
                                                                      uint64_t id,
                                                                      roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_encode(value, input + 9, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3_respond_result(roswasmc_capability const* cap,
                                                                    uint64_t id,
                                                                    uint8_t kind,
                                                                    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_encode(value, input + 9, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
