/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_E088EFA15E6269D37C25E9F67EED3D8FF517C96B20D1CC97E96401BF2AA85FD3
#define UWVM_ROS_BOUNDED_INTERFACES_E088EFA15E6269D37C25E9F67EED3D8FF517C96B20D1CC97E96401BF2AA85FD3
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v1-complete/bounded_records.h>
#include <roswasm/action_bundle.h>
#ifndef UWVM_ROS_BOUNDED_CAP_DESTINATION
# define UWVM_ROS_BOUNDED_CAP_DESTINATION

/** @brief Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller responsibility. */
inline static int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_0 != 0x19c34e89UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_1 != 0x0920b7c3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_2 != 0x24550082UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_3 != 0x8e062895UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_4 != 0xa31a0f4bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_5 != 0x17df62d8UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_6 != 0x444b95d3UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_7 != 0x0a136745UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_0 0x19c34e89UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_1 0x0920b7c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_2 0x24550082UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_3 0x8e062895UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_4 0xa31a0f4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_5 0x17df62d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_6 0x444b95d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_7 0x0a136745UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const* goal,
                                                                                       uint64_t* id)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    uint64_t next;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, id, sizeof *id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(bundle->count == bundle->capacity)
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_TOO_LARGE);
    }
    if(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode(goal, input, 1, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_action_send_goal(&bundle->cap[0], input, n, output, sizeof output);
    if(r.error)
    {
        return r;
    }
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
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback(roswasmc_action_bundle const* bundle,
                                                                 uint64_t id,
                                                                 roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback* feedback)
{
    unsigned char input[8], output[273];
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback next = {0};
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, feedback, sizeof *feedback))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_feedback(&bundle->cap[2], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id ||
       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result* result)
{
    unsigned char input[8], output[272];
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result next = {0};
    size_t i;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, kind, sizeof *kind) || !roswasmc_action_bundle_destination(bundle, result, sizeof *result) ||
       uwvm_bounded_overlap(kind, sizeof *kind, result, sizeof *result))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_result(&bundle->cap[3], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 9 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id || output[8] < 2 || output[8] > 4 ||
       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_decode(output + 9, (size_t)r.length - 9, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    for(i = 0; i < bundle->count; ++i)
    {
        if(bundle->goals[i] == id)
        {
            --bundle->count;
            bundle->goals[i] = bundle->goals[bundle->count];
            bundle->goals[bundle->count] = 0;
            break;
        }
    }
    *kind = output[8];
    *result = next;
    return r;
}

/** @brief Poll one incoming custom Goal under an independently activated advertise alias. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal* goal)
{
    unsigned char output[9];
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_feedback(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const* value)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode(value, input + 9, 265, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_result(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       uint8_t kind,
                                                                       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const* value)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode(value, input + 9, 263, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_0 != 0x878c54e9UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_1 != 0xd46a82c0UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_2 != 0x7e860e68UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_3 != 0x8a4a92adUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_4 != 0x8791df61UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_5 != 0x624da367UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_6 != 0xf3a92d55UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_7 != 0x11139ceeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_0 0x878c54e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_1 0xd46a82c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_2 0x7e860e68UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_3 0x8a4a92adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_4 0x8791df61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_5 0x624da367UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_6 0xf3a92d55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_7 0x11139ceeUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_send(roswasmc_action_bundle* bundle, roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const* goal, uint64_t* id)
{
    unsigned char input[8], output[8];
    size_t n = 0;
    uint64_t next;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, id, sizeof *id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(bundle->count == bundle->capacity)
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_TOO_LARGE);
    }
    if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode(goal, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_action_send_goal(&bundle->cap[0], input, n, output, sizeof output);
    if(r.error)
    {
        return r;
    }
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
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback(roswasmc_action_bundle const* bundle,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback* feedback)
{
    unsigned char input[8], output[25];
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback next = {0};
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, feedback, sizeof *feedback))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_feedback(&bundle->cap[2], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id ||
       roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_result(roswasmc_action_bundle* bundle,
                                                                                 uint64_t id,
                                                                                 uint8_t* kind,
                                                                                 roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result next = {0};
    size_t i;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, kind, sizeof *kind) || !roswasmc_action_bundle_destination(bundle, result, sizeof *result) ||
       uwvm_bounded_overlap(kind, sizeof *kind, result, sizeof *result))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_result(&bundle->cap[3], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 9 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id || output[8] < 2 || output[8] > 4 ||
       roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode(output + 9, (size_t)r.length - 9, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    for(i = 0; i < bundle->count; ++i)
    {
        if(bundle->goals[i] == id)
        {
            --bundle->count;
            bundle->goals[i] = bundle->goals[bundle->count];
            bundle->goals[bundle->count] = 0;
            break;
        }
    }
    *kind = output[8];
    *result = next;
    return r;
}

/** @brief Poll one incoming custom Goal under an independently activated advertise alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal* goal)
{
    unsigned char output[16];
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_feedback(roswasmc_capability const* cap,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const* value)
{
    unsigned char input[26];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode(value, input + 9, 17, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_result(roswasmc_capability const* cap,
                                                                                         uint64_t id,
                                                                                         uint8_t kind,
                                                                                         roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode(value, input + 9, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_0 != 0x28ceeadfUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_1 != 0x6f1966a6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_2 != 0x24a5c667UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_3 != 0xb3ebe4edUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_4 != 0x93101b9aUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_5 != 0x824df3bdUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_6 != 0x9c350220UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_7 != 0x38577ab7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_0 0x28ceeadfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_1 0x6f1966a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_2 0x24a5c667UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_3 0xb3ebe4edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_4 0x93101b9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_5 0x824df3bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_6 0x9c350220UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_7 0x38577ab7UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_Move_send(roswasmc_action_bundle* bundle, roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const* goal, uint64_t* id)
{
    unsigned char input[24], output[8];
    size_t n = 0;
    uint64_t next;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, id, sizeof *id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(bundle->count == bundle->capacity)
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_TOO_LARGE);
    }
    if(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode(goal, input, 24, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_action_send_goal(&bundle->cap[0], input, n, output, sizeof output);
    if(r.error)
    {
        return r;
    }
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
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Move_feedback(roswasmc_action_bundle const* bundle,
                                                                                  uint64_t id,
                                                                                  roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback* feedback)
{
    unsigned char input[8], output[25];
    roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback next = {0};
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, feedback, sizeof *feedback))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_feedback(&bundle->cap[2], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id ||
       roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Move_result(roswasmc_action_bundle* bundle,
                                                                                uint64_t id,
                                                                                uint8_t* kind,
                                                                                roswasmc_bounded_2_flexiv_msgs_action_Move_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_flexiv_msgs_action_Move_Result next = {0};
    size_t i;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
    {
        return roswasmc_action_bundle_failure(error);
    }
    if(!roswasmc_action_bundle_destination(bundle, kind, sizeof *kind) || !roswasmc_action_bundle_destination(bundle, result, sizeof *result) ||
       uwvm_bounded_overlap(kind, sizeof *kind, result, sizeof *result))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    if(!roswasmc_action_bundle_owns(bundle, id))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    }
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_result(&bundle->cap[3], input, 8, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 9 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id || output[8] < 2 || output[8] > 4 ||
       roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode(output + 9, (size_t)r.length - 9, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    for(i = 0; i < bundle->count; ++i)
    {
        if(bundle->goals[i] == id)
        {
            --bundle->count;
            bundle->goals[i] = bundle->goals[bundle->count];
            bundle->goals[bundle->count] = 0;
            break;
        }
    }
    *kind = output[8];
    *result = next;
    return r;
}

/** @brief Poll one incoming custom Goal under an independently activated advertise alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_action_Move_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_flexiv_msgs_action_Move_Goal* goal)
{
    unsigned char output[32];
    roswasmc_bounded_2_flexiv_msgs_action_Move_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Move_respond_feedback(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const* value)
{
    unsigned char input[26];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode(value, input + 9, 17, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_action_Move_respond_result(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        uint8_t kind,
                                                                                        roswasmc_bounded_2_flexiv_msgs_action_Move_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode(value, input + 9, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_0 != 0xaa1db155UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_1 != 0xe0dd0c15UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_2 != 0x8c8c3481UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_3 != 0xdad09aaaUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_4 != 0xa804f692UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_5 != 0xde6013d0UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_6 != 0x51ce1b58UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_7 != 0x1151fcbeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_0 0xaa1db155UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_1 0xe0dd0c15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_2 0x8c8c3481UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_3 0xdad09aaaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_4 0xa804f692UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_5 0xde6013d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_6 0x51ce1b58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_7 0x1151fcbeUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* request,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response* response)
{
    unsigned char input[1], output[17650];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 17650);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 17650 || roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const* response)
{
    unsigned char input[17658];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode(response, input + 8, 17650, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_0 != 0x5758b57eUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_1 != 0xdffc0bccUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_2 != 0x458ee1b6UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_3 != 0x953f57e2UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_4 != 0x96e2c934UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_5 != 0x7b6f7bf0UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_6 != 0xa25b7fdeUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_7 != 0x1b9fe80eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_0 0x5758b57eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_1 0xdffc0bccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_2 0x458ee1b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_3 0x953f57e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_4 0x96e2c934UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_5 0x7b6f7bf0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_6 0xa25b7fdeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_7 0x1b9fe80eUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* request,
                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response* response)
{
    unsigned char input[520], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode(request, input, 520, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_encode(response, input + 8, 521, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_0 != 0xe2954cd3UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_1 != 0xb63b56a0UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_2 != 0x4de93599UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_3 != 0xcc85c18bUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_4 != 0x6230cb79UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_5 != 0x0aa33934UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_6 != 0x1c2b4e16UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_7 != 0x4b6ebc3cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_0 0xe2954cd3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_1 0xb63b56a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_2 0x4de93599UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_3 0xcc85c18bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_4 0x6230cb79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_5 0x0aa33934UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_6 0x1c2b4e16UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_7 0x4b6ebc3cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* request,
                                                                     roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response* response)
{
    unsigned char input[1040], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode(request, input, 1040, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request* request)
{
    unsigned char output[1048];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_0 != 0xb1e093c0UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_1 != 0x13fa7a28UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_2 != 0xe228c629UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_3 != 0x31bd0314UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_4 != 0xfc0e6dc8UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_5 != 0xcfbbe101UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_6 != 0x77eec7c3UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_7 != 0x14cbf6b7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_0 0xb1e093c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_1 0x13fa7a28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_2 0xe228c629UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_3 0x31bd0314UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_4 0xfc0e6dc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_5 0xcfbbe101UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_6 0x77eec7c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_7 0x14cbf6b7UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* request,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response* response)
{
    unsigned char input[296], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode(request, input, 296, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request* request)
{
    unsigned char output[304];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_0 != 0x35f88c58UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_1 != 0xb45a1a85UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_2 != 0x4f4bbc42UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_3 != 0xce72e946UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_4 != 0xc080d91dUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_5 != 0x088cef5bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_6 != 0x74a8f582UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_7 != 0xb9288ed0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_0 0x35f88c58UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_1 0xb45a1a85UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_2 0x4f4bbc42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_3 0xce72e946UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_4 0xc080d91dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_5 0x088cef5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_6 0x74a8f582UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_7 0xb9288ed0UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* request,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response* response)
{
    unsigned char input[296], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode(request, input, 296, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request* request)
{
    unsigned char output[304];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_0 != 0xb9795055UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_1 != 0x9d22d26dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_2 != 0x726676c9UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_3 != 0x37a86b1bUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_4 != 0xcaba06e5UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_5 != 0x447c70c4UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_6 != 0x2ead7662UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_7 != 0x45857752UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_0 0xb9795055UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_1 0x9d22d26dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_2 0x726676c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_3 0x37a86b1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_4 0xcaba06e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_5 0x447c70c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_6 0x2ead7662UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_7 0x45857752UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* request,
                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response* response)
{
    unsigned char input[520], output[9634];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode(request, input, 520, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 9634);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 9634 || roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const* response)
{
    unsigned char input[9642];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode(response, input + 8, 9634, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_0 != 0x150a1860UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_1 != 0x17ef268eUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_2 != 0x9d2ad794UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_3 != 0xd877b452UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_4 != 0x1e7d6ffcUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_5 != 0x1b544c53UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_6 != 0x9199ff49UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_7 != 0x2c7df3d2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_0 0x150a1860UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_1 0x17ef268eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_2 0x9d2ad794UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_3 0xd877b452UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_4 0x1e7d6ffcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_5 0x1b544c53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_6 0x9199ff49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_7 0x2c7df3d2UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* request,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response* response)
{
    unsigned char input[260], output[9114];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode(request, input, 260, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 9114);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 9114 || roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const* response)
{
    unsigned char input[9122];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode(response, input + 8, 9114, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_0 != 0x2d7a9215UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_1 != 0x9eb6508dUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_2 != 0x4eeb3b55UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_3 != 0x7455a506UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_4 != 0x5790c897UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_5 != 0xd9ae11e3UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_6 != 0x08f17efbUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_7 != 0x0d9abf16UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_0 0x2d7a9215UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_1 0x9eb6508dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_2 0x4eeb3b55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_3 0x7455a506UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_4 0x5790c897UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_5 0xd9ae11e3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_6 0x08f17efbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_7 0x0d9abf16UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* request,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response* response)
{
    unsigned char input[260], output[9374];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode(request, input, 260, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 9374);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 9374 || roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const* response)
{
    unsigned char input[9382];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode(response, input + 8, 9374, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_0 != 0x9cc4833bUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_1 != 0xc002bba5UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_2 != 0x0aab1bc9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_3 != 0xce2c0166UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_4 != 0xef7bfaceUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_5 != 0xc85ea110UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_6 != 0x3a671858UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_7 != 0x61a04416UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_0 0x9cc4833bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_1 0xc002bba5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_2 0x0aab1bc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_3 0xce2c0166UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_4 0xef7bfaceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_5 0xc85ea110UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_6 0x3a671858UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_7 0x61a04416UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* request,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode(request, input, 260, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_0 != 0xfa7e4871UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_1 != 0x17e2d148UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_2 != 0xd17e515aUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_3 != 0xbc40feb5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_4 != 0x3f212c0aUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_5 != 0xae0571a1UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_6 != 0x515d6ffeUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_7 != 0xebe9dd17UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_0 0xfa7e4871UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_1 0x17e2d148UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_2 0xd17e515aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_3 0xbc40feb5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_4 0x3f212c0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_5 0xae0571a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_6 0x515d6ffeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_7 0xebe9dd17UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* request,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response* response)
{
    unsigned char input[780], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode(request, input, 780, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request* request)
{
    unsigned char output[788];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_0 != 0x5fc7934eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_1 != 0x6eb69735UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_2 != 0xa56035baUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_3 != 0x16af3befUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_4 != 0x1a53506eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_5 != 0x60ca37fcUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_6 != 0x45e1af75UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_7 != 0x3bc9f0eeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_0 0x5fc7934eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_1 0x6eb69735UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_2 0xa56035baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_3 0x16af3befUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_4 0x1a53506eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_5 0x60ca37fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_6 0x45e1af75UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_7 0x3bc9f0eeUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* request,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode(request, input, 260, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_0 != 0xb581667eUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_1 != 0x85815cdfUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_2 != 0xe38c78f5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_3 != 0xad6499b5UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_4 != 0xaff807abUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_5 != 0x11513080UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_6 != 0xf3600c81UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_7 != 0x2dfc89d8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_0 0xb581667eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_1 0x85815cdfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_2 0xe38c78f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_3 0xad6499b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_4 0xaff807abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_5 0x11513080UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_6 0xf3600c81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_7 0x2dfc89d8UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* request,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response* response)
{
    unsigned char input[36], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode(request, input, 36, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request* request)
{
    unsigned char output[44];
    roswasmc_result r;
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_encode(response, input + 8, 261, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}
#endif
#endif
