/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_C047D7B1E2C3FD37586EBA61A3FDDBEFCC019465B0D31436E868E1FE2B650564
#define UWVM_ROS_BOUNDED_INTERFACES_C047D7B1E2C3FD37586EBA61A3FDDBEFCC019465B0D31436E868E1FE2B650564
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-complete/bounded_records.h>
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
#endif
