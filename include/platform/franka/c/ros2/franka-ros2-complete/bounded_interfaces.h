/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_26FFD14F5FD795498265D70AF2A62B038729264D3D56B430B5D3A99C616924C4
#define UWVM_ROS_BOUNDED_INTERFACES_26FFD14F5FD795498265D70AF2A62B038729264D3D56B430B5D3A99C616924C4
#include <franka/c/ros2/franka-ros2-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_0 != 0xcbf96513UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_1 != 0xa2f471edUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_2 != 0xd18c718eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_3 != 0x39f1d129UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_4 != 0xa3bbe9cfUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_5 != 0x2ada6f3bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_6 != 0xe399d624UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_7 != 0xa8734c17UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_0 0xcbf96513UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_1 0xa2f471edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_2 0xd18c718eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_3 0x39f1d129UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_4 0xa3bbe9cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_5 0x2ada6f3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_6 0xe399d624UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_7 0xa8734c17UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const* goal,
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
    if(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode(goal, input, 0, &n))
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
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_feedback(roswasmc_action_bundle const* bundle,
                                                                 uint64_t id,
                                                                 roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_feedback(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_result(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       uint8_t kind,
                                                                       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode(value, input + 9, 0, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_0 != 0x9fe14f8cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_1 != 0xe831682dUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_2 != 0x58866211UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_3 != 0x8a0ada90UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_4 != 0x1dd927ceUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_5 != 0xadafbf09UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_6 != 0x677427f4UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_7 != 0xb1175ee0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_0 0x9fe14f8cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_1 0xe831682dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_2 0x58866211UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_3 0x8a0ada90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_4 0x1dd927ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_5 0xadafbf09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_6 0x677427f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_7 0xb1175ee0UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_action_Grasp_send(roswasmc_action_bundle* bundle, roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const* goal, uint64_t* id)
{
    unsigned char input[40], output[8];
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
    if(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode(goal, input, 40, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Grasp_feedback(roswasmc_action_bundle const* bundle,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback* feedback)
{
    unsigned char input[8], output[16];
    roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Grasp_result(roswasmc_action_bundle* bundle,
                                                                                 uint64_t id,
                                                                                 uint8_t* kind,
                                                                                 roswasmc_bounded_2_franka_msgs_action_Grasp_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_franka_msgs_action_Grasp_Result next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Grasp_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_2_franka_msgs_action_Grasp_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_franka_msgs_action_Grasp_Goal* goal)
{
    unsigned char output[48];
    roswasmc_bounded_2_franka_msgs_action_Grasp_Goal next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Grasp_respond_feedback(roswasmc_capability const* cap,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const* value)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode(value, input + 9, 8, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Grasp_respond_result(roswasmc_capability const* cap,
                                                                                         uint64_t id,
                                                                                         uint8_t kind,
                                                                                         roswasmc_bounded_2_franka_msgs_action_Grasp_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_0 != 0xda8f0863UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_1 != 0x7520668bUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_2 != 0x1cb9aa8fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_3 != 0x1be5447cUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_4 != 0x3fe818f3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_5 != 0x1a93b804UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_6 != 0xad54a7faUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_7 != 0xed47f866UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_0 0xda8f0863UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_1 0x7520668bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_2 0x1cb9aa8fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_3 0x1be5447cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_4 0x3fe818f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_5 0x1a93b804UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_6 0xad54a7faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_7 0xed47f866UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Homing_send(roswasmc_action_bundle* bundle,
                                                                                roswasmc_bounded_2_franka_msgs_action_Homing_Goal const* goal,
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
    if(roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode(goal, input, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Homing_feedback(roswasmc_action_bundle const* bundle,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback* feedback)
{
    unsigned char input[8], output[16];
    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Homing_result(roswasmc_action_bundle* bundle,
                                                                                  uint64_t id,
                                                                                  uint8_t* kind,
                                                                                  roswasmc_bounded_2_franka_msgs_action_Homing_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_franka_msgs_action_Homing_Result next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Homing_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_2_franka_msgs_action_Homing_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_franka_msgs_action_Homing_Goal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_2_franka_msgs_action_Homing_Goal next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Homing_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Homing_respond_feedback(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const* value)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode(value, input + 9, 8, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Homing_respond_result(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          uint8_t kind,
                                                                                          roswasmc_bounded_2_franka_msgs_action_Homing_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_0 != 0xccadc2a6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_1 != 0x62241701UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_2 != 0xdf202b6fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_3 != 0x12f9c7c0UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_4 != 0xccf84aeaUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_5 != 0xb7e78459UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_6 != 0x97f6d8a3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_7 != 0xcfea544cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_0 0xccadc2a6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_1 0x62241701UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_2 0xdf202b6fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_3 0x12f9c7c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_4 0xccf84aeaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_5 0xb7e78459UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_6 0x97f6d8a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_7 0xcfea544cUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_action_Move_send(roswasmc_action_bundle* bundle, roswasmc_bounded_2_franka_msgs_action_Move_Goal const* goal, uint64_t* id)
{
    unsigned char input[16], output[8];
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
    if(roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode(goal, input, 16, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Move_feedback(roswasmc_action_bundle const* bundle,
                                                                                  uint64_t id,
                                                                                  roswasmc_bounded_2_franka_msgs_action_Move_Feedback* feedback)
{
    unsigned char input[8], output[16];
    roswasmc_bounded_2_franka_msgs_action_Move_Feedback next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Move_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Move_result(roswasmc_action_bundle* bundle,
                                                                                uint64_t id,
                                                                                uint8_t* kind,
                                                                                roswasmc_bounded_2_franka_msgs_action_Move_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_franka_msgs_action_Move_Result next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Move_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_2_franka_msgs_action_Move_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_franka_msgs_action_Move_Goal* goal)
{
    unsigned char output[24];
    roswasmc_bounded_2_franka_msgs_action_Move_Goal next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_Move_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Move_respond_feedback(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_2_franka_msgs_action_Move_Feedback const* value)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode(value, input + 9, 8, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_Move_respond_result(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        uint8_t kind,
                                                                                        roswasmc_bounded_2_franka_msgs_action_Move_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_msgs_action_Move_Result_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_0 != 0x22ccd4fbUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_1 != 0xada5816fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_2 != 0x89bdad02UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_3 != 0x5c33b4d6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_4 != 0x7b6153bfUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_5 != 0x920993a3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_6 != 0xe0807d52UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_7 != 0xc7799b30UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_0 0x22ccd4fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_1 0xada5816fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_2 0x89bdad02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_3 0x5c33b4d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_4 0x7b6153bfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_5 0x920993a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_6 0xe0807d52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_7 0xc7799b30UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_PTPMotion_send(roswasmc_action_bundle* bundle,
                                                                                   roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const* goal,
                                                                                   uint64_t* id)
{
    unsigned char input[128], output[8];
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
    if(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode(goal, input, 128, &n))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_PTPMotion_feedback(roswasmc_action_bundle const* bundle,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback* feedback)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_PTPMotion_result(roswasmc_action_bundle* bundle,
                                                                                     uint64_t id,
                                                                                     uint8_t* kind,
                                                                                     roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_action_PTPMotion_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* id,
                                                                                   roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal* goal)
{
    unsigned char output[136];
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal next = {0};
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
       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_feedback(roswasmc_capability const* cap,
                                                                     uint64_t id,
                                                                     roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const* value)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode(value, input + 9, 1, &n))
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
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_result(roswasmc_capability const* cap,
                                                                   uint64_t id,
                                                                   uint8_t kind,
                                                                   roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_0 != 0x37aff65fUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_1 != 0x9f8da724UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_2 != 0x4c73f331UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_3 != 0xf0bbe300UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_4 != 0xd5f622c0UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_5 != 0xbe7e56caUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_6 != 0x2f45d2caUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_7 != 0x0265e941UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_0 0x37aff65fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_1 0x9f8da724UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_2 0x4c73f331UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_3 0xf0bbe300UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_4 0xd5f622c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_5 0xbe7e56caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_6 0x2f45d2caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_7 0x0265e941UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const* request,
                                                                  roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response* response)
{
    unsigned char input[48], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode(request, input, 48, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_0 != 0x2177b1eeUL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_1 != 0x7096dea2UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_2 != 0x9bece6e4UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_3 != 0x4c5b4806UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_4 != 0x8f65f13eUL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_5 != 0xbea61dcdUL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_6 != 0xf152cb65UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_7 != 0xcba4fb7eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_0 0x2177b1eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_1 0x7096dea2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_2 0x9bece6e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_3 0x4c5b4806UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_4 0x8f65f13eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_5 0xbea61dcdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_6 0xf152cb65UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_7 0xcba4fb7eUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const* request,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response* response)
{
    unsigned char input[208], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode(request, input, 208, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request* request)
{
    unsigned char output[216];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_0 != 0x781bd8a7UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_1 != 0x3f847479UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_2 != 0x44c7c795UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_3 != 0x82d2ccbaUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_4 != 0xbda05136UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_5 != 0x88a913f6UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_6 != 0x2565fa3eUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_7 != 0x2c4114a4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_0 0x781bd8a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_1 0x3f847479UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_2 0x44c7c795UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_3 0x82d2ccbaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_4 0xbda05136UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_5 0x88a913f6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_6 0x2565fa3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_7 0x2c4114a4UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const* request,
                                                                     roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response* response)
{
    unsigned char input[416], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode(request, input, 416, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request* request)
{
    unsigned char output[424];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_0 != 0x95c43953UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_1 != 0x040c8e43UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_2 != 0x2a264580UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_3 != 0xfd37bb99UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_4 != 0x88e28ff1UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_5 != 0xc0eaa237UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_6 != 0xfc56fddaUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_7 != 0x347c8781UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_0 0x95c43953UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_1 0x040c8e43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_2 0x2a264580UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_3 0xfd37bb99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_4 0x88e28ff1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_5 0xc0eaa237UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_6 0xfc56fddaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_7 0x347c8781UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const* request,
                                                              roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response* response)
{
    unsigned char input[56], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode(request, input, 56, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_0 != 0x1e6ba070UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_1 != 0x7f261593UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_2 != 0x8a3141a7UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_3 != 0x7ab4bbbcUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_4 != 0x5022b61cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_5 != 0x5e895876UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_6 != 0x3a7c8c4fUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_7 != 0x0a09d688UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_0 0x1e6ba070UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_1 0x7f261593UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_2 0x8a3141a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_3 0x7ab4bbbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_4 0x5022b61cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_5 0x5e895876UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_6 0x3a7c8c4fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_7 0x0a09d688UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetLoad_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const* request,
                                                                              roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response* response)
{
    unsigned char input[104], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode(request, input, 104, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetLoad_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request* request)
{
    unsigned char output[112];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetLoad_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_0 != 0xb12986d4UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_1 != 0xd77ea334UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_2 != 0xffafc27fUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_3 != 0x9b95b1d2UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_4 != 0x445c7599UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_5 != 0x6823c993UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_6 != 0x2cf4d03bUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_7 != 0xa20d52b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_0 0xb12986d4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_1 0xd77ea334UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_2 0xffafc27fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_3 0x9b95b1d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_4 0x445c7599UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_5 0x6823c993UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_6 0x2cf4d03bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_7 0xa20d52b8UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const* request,
                                                              roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response* response)
{
    unsigned char input[128], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode(request, input, 128, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request* request)
{
    unsigned char output[136];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_0 != 0x318e904dUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_1 != 0x7fc79600UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_2 != 0x9726f8f9UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_3 != 0xb84f5423UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_4 != 0xcb3ab4b6UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_5 != 0x53cdce4cUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_6 != 0x806e2f49UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_7 != 0x16acc50cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_0 0x318e904dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_1 0x7fc79600UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_2 0x9726f8f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_3 0xb84f5423UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_4 0xcb3ab4b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_5 0x53cdce4cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_6 0x806e2f49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_7 0x16acc50cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const* request,
                                                                                  roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response* response)
{
    unsigned char input[128], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode(request, input, 128, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request* request)
{
    unsigned char output[136];
    roswasmc_result r;
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request next = {0};
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
       roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_0 != 0xa96e8e18UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_1 != 0x5c420785UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_2 != 0x91104f02UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_3 != 0x57466239UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_4 != 0x902095d6UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_5 != 0x64ce505cUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_6 != 0x8e2f0365UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_7 != 0xd3e40664UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_0 0xa96e8e18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_1 0x5c420785UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_2 0x91104f02UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_3 0x57466239UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_4 0x902095d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_5 0x64ce505cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_6 0x8e2f0365UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_7 0xd3e40664UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_send(roswasmc_action_bundle* bundle,
                                                                  roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const* goal,
                                                                  uint64_t* id)
{
    unsigned char input[32], output[8];
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
    if(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode(goal, input, 32, &n))
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
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_feedback(roswasmc_action_bundle const* bundle,
                                                                      uint64_t id,
                                                                      roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback* feedback)
{
    unsigned char input[8], output[16];
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_result(roswasmc_action_bundle* bundle,
                                                                    uint64_t id,
                                                                    uint8_t* kind,
                                                                    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result* result)
{
    unsigned char input[8], output[530];
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_poll(roswasmc_capability const* cap,
                                                                                            uint64_t* id,
                                                                                            roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal* goal)
{
    unsigned char output[40];
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_feedback(roswasmc_capability const* cap,
                                                                              uint64_t id,
                                                                              roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const* value)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode(value, input + 9, 8, &n))
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
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_result(roswasmc_capability const* cap,
                                                                            uint64_t id,
                                                                            uint8_t kind,
                                                                            roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const* value)
{
    unsigned char input[530];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode(value, input + 9, 521, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_0 != 0x706a7252UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_1 != 0x1c834b9aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_2 != 0x3ac8f0faUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_3 != 0x6ad076d9UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_4 != 0x843affbcUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_5 != 0xe6bd3034UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_6 != 0x0b3bb74fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_7 != 0xbc8268abUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_0 0x706a7252UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_1 0x1c834b9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_2 0x3ac8f0faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_3 0x6ad076d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_4 0x843affbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_5 0xe6bd3034UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_6 0x0b3bb74fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_7 0xbc8268abUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const* request,
                                                             roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response* response)
{
    unsigned char input[1], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode(response, input + 8, 521, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_0 != 0x4738b5ccUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_1 != 0x2ac419bbUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_2 != 0x7ca84b23UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_3 != 0x669c6fbdUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_4 != 0x1609c545UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_5 != 0xe2c169adUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_6 != 0x025efb12UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_7 != 0x74bb80c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_0 0x4738b5ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_1 0x2ac419bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_2 0x7ca84b23UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_3 0x669c6fbdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_4 0x1609c545UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_5 0xe2c169adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_6 0x025efb12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_7 0x74bb80c1UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const* request,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response* response)
{
    unsigned char input[1], output[277];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 277);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 277 || roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const* response)
{
    unsigned char input[285];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode(response, input + 8, 277, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_0 != 0x23a17d56UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_1 != 0x36a90aa4UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_2 != 0x33046e69UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_3 != 0xc864ce36UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_4 != 0x84ca7b79UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_5 != 0x43d8db13UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_6 != 0xf2b38366UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_7 != 0x37657cd5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_0 0x23a17d56UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_1 0x36a90aa4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_2 0x33046e69UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_3 0xc864ce36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_4 0x84ca7b79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_5 0x43d8db13UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_6 0xf2b38366UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_7 0x37657cd5UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const* request,
                                                              roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response* response)
{
    unsigned char input[1], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 9 || roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode(response, input + 8, 9, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_0 != 0xa147baf5UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_1 != 0x99040749UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_2 != 0x51d3d3f9UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_3 != 0x7424aea6UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_4 != 0xb2bb957cUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_5 != 0x4d468969UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_6 != 0x8a71e89aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_7 != 0x3a039ad0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_0 0xa147baf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_1 0x99040749UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_2 0x51d3d3f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_3 0x7424aea6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_4 0xb2bb957cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_5 0x4d468969UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_6 0x8a71e89aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_7 0x3a039ad0UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const* request,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response* response)
{
    unsigned char input[1], output[781];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 781);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 781 || roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const* response)
{
    unsigned char input[789];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode(response, input + 8, 781, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_0 != 0xcd0cb57cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_1 != 0x3e45368bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_2 != 0xfb380befUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_3 != 0xc5abc38fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_4 != 0xccf4c57fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_5 != 0x904f3312UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_6 != 0xf29f003bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_7 != 0xd903a4c4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_0 0xcd0cb57cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_1 0x3e45368bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_2 0xfb380befUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_3 0xc5abc38fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_4 0xccf4c57fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_5 0x904f3312UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_6 0xf29f003bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_7 0xd903a4c4UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_Halt_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const* request,
                                                                                 roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response* response)
{
    unsigned char input[1], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_Halt_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_Halt_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode(response, input + 8, 521, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_0 != 0xbdb8c07aUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_1 != 0xea676991UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_2 != 0x5a1338ebUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_3 != 0xdb55dbb9UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_4 != 0xde9175a8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_5 != 0xb944f04dUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_6 != 0xbf85941eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_7 != 0x51f53d04UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_0 0xbdb8c07aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_1 0xea676991UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_2 0x5a1338ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_3 0xdb55dbb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_4 0xde9175a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_5 0xb944f04dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_6 0xbf85941eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_7 0x51f53d04UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const* request,
                                                                                      roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response* response)
{
    unsigned char input[1], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode(response, input + 8, 521, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_0 != 0x3b040cbfUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_1 != 0xfc655dd4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_2 != 0xf80cbc47UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_3 != 0x12a11725UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_4 != 0x863a7eb2UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_5 != 0x3aad1a9fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_6 != 0x98aa6cfbUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_7 != 0x03f43939UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_0 0x3b040cbfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_1 0xfc655dd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_2 0xf80cbc47UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_3 0x12a11725UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_4 0x863a7eb2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_5 0x3aad1a9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_6 0x98aa6cfbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_7 0x03f43939UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const* request,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response* response)
{
    unsigned char input[1], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode(request, input, 0, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 521 || roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request next = {0};
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
       roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode(response, input + 8, 521, &n))
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
