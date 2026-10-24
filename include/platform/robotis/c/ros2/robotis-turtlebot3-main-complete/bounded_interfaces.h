/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_80B5C505C4B1083F318522D862C5CAA6AF99AA8FAEC3EB47BF36FB1E5072A57F
#define UWVM_ROS_BOUNDED_INTERFACES_80B5C505C4B1083F318522D862C5CAA6AF99AA8FAEC3EB47BF36FB1E5072A57F
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_0 != 0xb8446185UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_1 != 0x28c08ba6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_2 != 0x8bb3b6dbUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_3 != 0x1889edf6UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_4 != 0x13744f9cUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_5 != 0xf853fafcUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_6 != 0x396b7a36UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_7 != 0x7899abcfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_0 0xb8446185UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_1 0x28c08ba6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_2 0x8bb3b6dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_3 0x1889edf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_4 0x13744f9cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_5 0xf853fafcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_6 0x396b7a36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_7 0x7899abcfUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_std_srvs_srv_SetBool_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* request,
                                                                           roswasmc_bounded_2_std_srvs_srv_SetBool_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_std_srvs_srv_SetBool_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_std_srvs_srv_SetBool_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_std_srvs_srv_SetBool_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_std_srvs_srv_SetBool_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_std_srvs_srv_SetBool_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_std_srvs_srv_SetBool_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_std_srvs_srv_SetBool_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_std_srvs_srv_SetBool_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_std_srvs_srv_SetBool_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_0 != 0xf0f44224UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_1 != 0x7aeb065bUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_2 != 0x238bf28fUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_3 != 0x04e4e808UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_4 != 0x24e20307UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_5 != 0xcc25a810UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_6 != 0x1844d009UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_7 != 0xf1538729UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_0 0xf0f44224UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_1 0x7aeb065bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_2 0x238bf28fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_3 0x04e4e808UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_4 0x24e20307UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_5 0xcc25a810UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_6 0x1844d009UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_7 0xf1538729UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_std_srvs_srv_Trigger_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* request,
                                                                           roswasmc_bounded_2_std_srvs_srv_Trigger_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_std_srvs_srv_Trigger_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_std_srvs_srv_Trigger_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_0 != 0x9e35fd81UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_1 != 0x15243046UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_2 != 0xd37d154bUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_3 != 0x8919dae7UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_4 != 0xc4548dd5UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_5 != 0x31bb47aeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_6 != 0xff164b18UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_7 != 0xc7dd07f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_0 0x9e35fd81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_1 0x15243046UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_2 0xd37d154bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_3 0x8919dae7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_4 0xc4548dd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_5 0x31bb47aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_6 0xff164b18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_7 0xc7dd07f0UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send(roswasmc_action_bundle* bundle,
                                                                                    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* goal,
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
    if(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_encode(goal, input, 24, &n))
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
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_feedback(roswasmc_action_bundle const* bundle,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback* feedback)
{
    unsigned char input[8], output[268];
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback next = {0};
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
       roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_result(roswasmc_action_bundle* bundle,
                                                                                      uint64_t id,
                                                                                      uint8_t* kind,
                                                                                      roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result* result)
{
    unsigned char input[8], output[269];
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result next = {0};
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
       roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* id,
                                                                                    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* goal)
{
    unsigned char output[32];
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_feedback(roswasmc_capability const* cap,
                                                                      uint64_t id,
                                                                      roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_encode(value, input + 9, 260, &n))
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
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_result(roswasmc_capability const* cap,
                                                                    uint64_t id,
                                                                    uint8_t kind,
                                                                    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_encode(value, input + 9, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_0 != 0xb48dc527UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_1 != 0xa73b0a90UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_2 != 0xea818e43UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_3 != 0x149474e5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_4 != 0x0b0691baUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_5 != 0x57678259UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_6 != 0x80873978UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_7 != 0x523daa33UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_0 0xb48dc527UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_1 0xa73b0a90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_2 0xea818e43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_3 0x149474e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_4 0x0b0691baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_5 0x57678259UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_6 0x80873978UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_7 0x523daa33UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* request,
                                                                              roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response* response)
{
    unsigned char input[2], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_0 != 0x7e8ce5a0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_1 != 0x40d43382UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_2 != 0x538d51fbUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_3 != 0x78d9a5a8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_4 != 0x7ad730c8UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_5 != 0x8241f138UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_6 != 0xd8086ee0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_7 != 0xb21b4c76UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_0 0x7e8ce5a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_1 0x40d43382UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_2 0x538d51fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_3 0x78d9a5a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_4 0x7ad730c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_5 0x8241f138UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_6 0xd8086ee0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_7 0xb21b4c76UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* request,
                                                                               roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response* response)
{
    unsigned char input[1], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 9 || roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_encode(response, input + 8, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_0 != 0x99a5c4a7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_1 != 0xa1e0618fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_2 != 0x6b74a8d3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_3 != 0x5e9e468aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_4 != 0x1ad7c6cbUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_5 != 0xd7f19a9dUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_6 != 0xbc68115fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_7 != 0x970d5b1fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_0 0x99a5c4a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_1 0xa1e0618fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_2 0x6b74a8d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_3 0x5e9e468aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_4 0x1ad7c6cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_5 0xd7f19a9dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_6 0xbc68115fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_7 0x970d5b1fUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* request,
                                                                                roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
