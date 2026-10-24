/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_A2B67D0F62EABB8B29F44759FA7B40F023E7A1E8B7E0F578DDBA07AC0531B772
#define UWVM_ROS_BOUNDED_INTERFACES_A2B67D0F62EABB8B29F44759FA7B40F023E7A1E8B7E0F578DDBA07AC0531B772
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_0 != 0x0b7b4fc2UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_1 != 0xc4e7fc0fUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_2 != 0x211e2b24UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_3 != 0xb42c1761UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_4 != 0x37d0ac3fUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_5 != 0x2609b1c0UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_6 != 0x31f9479dUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_7 != 0x751be504UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_0 0x0b7b4fc2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_1 0xc4e7fc0fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_2 0x211e2b24UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_3 0xb42c1761UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_4 0x37d0ac3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_5 0x2609b1c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_6 0x31f9479dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_7 0x751be504UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_send(roswasmc_action_bundle* bundle,
                                                                    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* goal,
                                                                    uint64_t* id)
{
    unsigned char input[472], output[8];
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
    if(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_encode(goal, input, 472, &n))
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
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_feedback(roswasmc_action_bundle const* bundle,
                                                                        uint64_t id,
                                                                        roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback next = {0};
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
       roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_result(roswasmc_action_bundle* bundle,
                                                                      uint64_t id,
                                                                      uint8_t* kind,
                                                                      roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result next = {0};
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
       roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_poll(roswasmc_capability const* cap,
                                                                    uint64_t* id,
                                                                    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal* goal)
{
    unsigned char output[480];
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_respond_result(roswasmc_capability const* cap,
                                                                              uint64_t id,
                                                                              uint8_t kind,
                                                                              roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_0 != 0x1b960450UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_1 != 0x5bb23fa1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_2 != 0x228f4a82UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_3 != 0x0983baeaUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_4 != 0xb659dcadUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_5 != 0x069c321aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_6 != 0x95b27a90UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_7 != 0x2c0d5912UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_0 0x1b960450UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_1 0x5bb23fa1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_2 0x228f4a82UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_3 0x0983baeaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_4 0xb659dcadUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_5 0x069c321aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_6 0x95b27a90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_7 0x2c0d5912UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* request,
                                                             roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response* response)
{
    unsigned char input[4], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_0 != 0xaa41cb58UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_1 != 0x1152d76fUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_2 != 0x8b517e85UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_3 != 0xe77a53abUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_4 != 0x1245da09UL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_5 != 0x6e44845bUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_6 != 0x98ce609eUL ||                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_7 != 0x9bd7863cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_0 0xaa41cb58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_1 0x1152d76fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_2 0x8b517e85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_3 0xe77a53abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_4 0x1245da09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_5 0x6e44845bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_6 0x98ce609eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_7 0x9bd7863cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* request,
                                                                       roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_0 != 0x94bfb6aaUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_1 != 0xc151de84UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_2 != 0x10be1c6cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_3 != 0x4b6a8a97UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_4 != 0xe8b40d42UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_5 != 0x6ecc4492UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_6 != 0x4de93e44UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_7 != 0xb2c19008UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_0 0x94bfb6aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_1 0xc151de84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_2 0x10be1c6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_3 0x4b6a8a97UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_4 0xe8b40d42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_5 0x6ecc4492UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_6 0x4de93e44UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_7 0xb2c19008UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* request,
                                                                 roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response* response)
{
    unsigned char input[61], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_encode(request, input, 61, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request* request)
{
    unsigned char output[69];
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_0 != 0x73499ae4UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_1 != 0x117bfec2UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_2 != 0x8a77539cUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_3 != 0x9a64b080UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_4 != 0xc95c0a9fUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_5 != 0x98b432c6UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_6 != 0xe159746bUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_7 != 0x8f864dc6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_0 0x73499ae4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_1 0x117bfec2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_2 0x8a77539cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_3 0x9a64b080UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_4 0xc95c0a9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_5 0x98b432c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_6 0xe159746bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_7 0x8f864dc6UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* request,
                                                                  roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response* response)
{
    unsigned char input[29], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_encode(request, input, 29, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request* request)
{
    unsigned char output[37];
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_0 != 0x728291e0UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_1 != 0xe6b3d1faUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_2 != 0xcfe14d06UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_3 != 0xa4260afaUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_4 != 0xcbf94f21UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_5 != 0x228b6c25UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_6 != 0x314498a8UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_7 != 0x6f4ed8b9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_0 0x728291e0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_1 0xe6b3d1faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_2 0xcfe14d06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_3 0xa4260afaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_4 0xcbf94f21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_5 0x228b6c25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_6 0x314498a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_7 0x6f4ed8b9UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* request,
                                                                roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response* response)
{
    unsigned char input[54], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_encode(request, input, 54, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request* request)
{
    unsigned char output[62];
    roswasmc_result r;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
