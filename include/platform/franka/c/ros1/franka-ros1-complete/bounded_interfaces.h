/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_867B63250B3CA80B459357E5FA28382F68CAE39C0AD92CE6D538014AE919CFE9
#define UWVM_ROS_BOUNDED_INTERFACES_867B63250B3CA80B459357E5FA28382F68CAE39C0AD92CE6D538014AE919CFE9
#include <franka/c/ros1/franka-ros1-complete/bounded_records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_0 != 0xe8c18cd4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_1 != 0xe954a293UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_2 != 0x5b710463UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_3 != 0x5d555bb4UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_4 != 0x84614403UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_5 != 0x710b585eUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_6 != 0x76b73156UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_7 != 0xb333eecdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_0 0xe8c18cd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_1 0xe954a293UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_2 0x5b710463UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_3 0x5d555bb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_4 0x84614403UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_5 0x710b585eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_6 0x76b73156UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP_7 0xb333eecdUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_gripper_Grasp_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_franka_gripper_GraspGoal const* goal, uint64_t* id)
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
    if(roswasmc_bounded_1_franka_gripper_GraspGoal_encode(goal, input, 40, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Grasp_feedback(roswasmc_action_bundle const* bundle,
                                                                               uint64_t id,
                                                                               roswasmc_bounded_1_franka_gripper_GraspFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_franka_gripper_GraspFeedback next = {0};
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
       roswasmc_bounded_1_franka_gripper_GraspFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Grasp_result(roswasmc_action_bundle* bundle,
                                                                             uint64_t id,
                                                                             uint8_t* kind,
                                                                             roswasmc_bounded_1_franka_gripper_GraspResult* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_1_franka_gripper_GraspResult next = {0};
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
       roswasmc_bounded_1_franka_gripper_GraspResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_franka_gripper_Grasp_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_franka_gripper_GraspGoal* goal)
{
    unsigned char output[48];
    roswasmc_bounded_1_franka_gripper_GraspGoal next = {0};
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
       roswasmc_bounded_1_franka_gripper_GraspGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Grasp_respond_feedback(roswasmc_capability const* cap,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_1_franka_gripper_GraspFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_franka_gripper_GraspFeedback_encode(value, input + 9, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Grasp_respond_result(roswasmc_capability const* cap,
                                                                                     uint64_t id,
                                                                                     uint8_t kind,
                                                                                     roswasmc_bounded_1_franka_gripper_GraspResult const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_franka_gripper_GraspResult_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_0 != 0xa9138e78UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_1 != 0x8efcd909UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_2 != 0xcbed164bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_3 != 0x7b02807bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_4 != 0xd0343ae5UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_5 != 0x36e1df1eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_6 != 0x6129d83dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_7 != 0x26bcf0bcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_0 0xa9138e78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_1 0x8efcd909UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_2 0xcbed164bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_3 0x7b02807bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_4 0xd0343ae5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_5 0x36e1df1eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_6 0x6129d83dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING_7 0x26bcf0bcUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_gripper_Homing_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_franka_gripper_HomingGoal const* goal, uint64_t* id)
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
    if(roswasmc_bounded_1_franka_gripper_HomingGoal_encode(goal, input, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Homing_feedback(roswasmc_action_bundle const* bundle,
                                                                                uint64_t id,
                                                                                roswasmc_bounded_1_franka_gripper_HomingFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_franka_gripper_HomingFeedback next = {0};
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
       roswasmc_bounded_1_franka_gripper_HomingFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Homing_result(roswasmc_action_bundle* bundle,
                                                                              uint64_t id,
                                                                              uint8_t* kind,
                                                                              roswasmc_bounded_1_franka_gripper_HomingResult* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_1_franka_gripper_HomingResult next = {0};
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
       roswasmc_bounded_1_franka_gripper_HomingResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_franka_gripper_Homing_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_franka_gripper_HomingGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_franka_gripper_HomingGoal next = {0};
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
       roswasmc_bounded_1_franka_gripper_HomingGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Homing_respond_feedback(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_1_franka_gripper_HomingFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_franka_gripper_HomingFeedback_encode(value, input + 9, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Homing_respond_result(roswasmc_capability const* cap,
                                                                                      uint64_t id,
                                                                                      uint8_t kind,
                                                                                      roswasmc_bounded_1_franka_gripper_HomingResult const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_franka_gripper_HomingResult_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_0 != 0x9e349e06UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_1 != 0xcbb44e21UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_2 != 0xedf776b5UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_3 != 0xdf2df7a2UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_4 != 0x95e38af9UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_5 != 0x88c19bf1UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_6 != 0x2a162736UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_7 != 0x53d79a75UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_0 0x9e349e06UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_1 0xcbb44e21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_2 0xedf776b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_3 0xdf2df7a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_4 0x95e38af9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_5 0x88c19bf1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_6 0x2a162736UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE_7 0x53d79a75UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_gripper_Move_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_franka_gripper_MoveGoal const* goal, uint64_t* id)
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
    if(roswasmc_bounded_1_franka_gripper_MoveGoal_encode(goal, input, 16, &n))
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
    roswasmc_bounded_1_franka_gripper_Move_feedback(roswasmc_action_bundle const* bundle, uint64_t id, roswasmc_bounded_1_franka_gripper_MoveFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_franka_gripper_MoveFeedback next = {0};
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
       roswasmc_bounded_1_franka_gripper_MoveFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Move_result(roswasmc_action_bundle* bundle,
                                                                            uint64_t id,
                                                                            uint8_t* kind,
                                                                            roswasmc_bounded_1_franka_gripper_MoveResult* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_1_franka_gripper_MoveResult next = {0};
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
       roswasmc_bounded_1_franka_gripper_MoveResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_franka_gripper_Move_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_franka_gripper_MoveGoal* goal)
{
    unsigned char output[24];
    roswasmc_bounded_1_franka_gripper_MoveGoal next = {0};
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
       roswasmc_bounded_1_franka_gripper_MoveGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Move_respond_feedback(roswasmc_capability const* cap,
                                                                                      uint64_t id,
                                                                                      roswasmc_bounded_1_franka_gripper_MoveFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_franka_gripper_MoveFeedback_encode(value, input + 9, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Move_respond_result(roswasmc_capability const* cap,
                                                                                    uint64_t id,
                                                                                    uint8_t kind,
                                                                                    roswasmc_bounded_1_franka_gripper_MoveResult const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_franka_gripper_MoveResult_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_0 != 0x2baffb9eUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_1 != 0xe8b0caa3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_2 != 0x7512c1d7UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_3 != 0x2830c3f4UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_4 != 0xfdb9ab45UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_5 != 0x4c9f3d87UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_6 != 0xa7adbc3bUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_7 != 0x9097ea3cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_0 0x2baffb9eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_1 0xe8b0caa3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_2 0x7512c1d7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_3 0x2830c3f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_4 0xfdb9ab45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_5 0x4c9f3d87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_6 0xa7adbc3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP_7 0x9097ea3cUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_gripper_Stop_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_franka_gripper_StopGoal const* goal, uint64_t* id)
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
    if(roswasmc_bounded_1_franka_gripper_StopGoal_encode(goal, input, 0, &n))
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
    roswasmc_bounded_1_franka_gripper_Stop_feedback(roswasmc_action_bundle const* bundle, uint64_t id, roswasmc_bounded_1_franka_gripper_StopFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_franka_gripper_StopFeedback next = {0};
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
       roswasmc_bounded_1_franka_gripper_StopFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Stop_result(roswasmc_action_bundle* bundle,
                                                                            uint64_t id,
                                                                            uint8_t* kind,
                                                                            roswasmc_bounded_1_franka_gripper_StopResult* result)
{
    unsigned char input[8], output[270];
    roswasmc_bounded_1_franka_gripper_StopResult next = {0};
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
       roswasmc_bounded_1_franka_gripper_StopResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_franka_gripper_Stop_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_franka_gripper_StopGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_franka_gripper_StopGoal next = {0};
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
       roswasmc_bounded_1_franka_gripper_StopGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Stop_respond_feedback(roswasmc_capability const* cap,
                                                                                      uint64_t id,
                                                                                      roswasmc_bounded_1_franka_gripper_StopFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_franka_gripper_StopFeedback_encode(value, input + 9, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_gripper_Stop_respond_result(roswasmc_capability const* cap,
                                                                                    uint64_t id,
                                                                                    uint8_t kind,
                                                                                    roswasmc_bounded_1_franka_gripper_StopResult const* value)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_franka_gripper_StopResult_encode(value, input + 9, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_0 != 0x73b4446eUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_1 != 0xf2254c59UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_2 != 0x15d49324UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_3 != 0xa0088f42UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_4 != 0xc20d47d2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_5 != 0x96438ac0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_6 != 0xb4df6741UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_7 != 0x27f33f24UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_0 0x73b4446eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_1 0xf2254c59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_2 0x15d49324UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_3 0xa0088f42UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_4 0xc20d47d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_5 0x96438ac0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_6 0xb4df6741UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY_7 0x27f33f24UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_ErrorRecovery_send(roswasmc_action_bundle* bundle,
                                                                                roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const* goal,
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
    if(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode(goal, input, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_ErrorRecovery_feedback(roswasmc_action_bundle const* bundle,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback next = {0};
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
       roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_ErrorRecovery_result(roswasmc_action_bundle* bundle,
                                                                                  uint64_t id,
                                                                                  uint8_t* kind,
                                                                                  roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult next = {0};
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
       roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_franka_msgs_ErrorRecovery_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal next = {0};
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
       roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_feedback(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode(value, input + 9, 0, &n))
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
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_result(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          uint8_t kind,
                                                                                          roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode(value, input + 9, 0, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_0 != 0xca419893UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_1 != 0x129a1631UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_2 != 0x433b81c0UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_3 != 0xe9b9d36fUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_4 != 0xca9958a3UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_5 != 0x8f43ae84UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_6 != 0x988f1bf6UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_7 != 0x9ff3d1f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_0 0xca419893UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_1 0x129a1631UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_2 0x433b81c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_3 0xe9b9d36fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_4 0xca9958a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_5 0x8f43ae84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_6 0x988f1bf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE_7 0x9ff3d1f0UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const* request,
                                                              roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse* response)
{
    unsigned char input[48], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode(request, input, 48, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_0 != 0xa2968873UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_1 != 0xc784ef36UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_2 != 0x25046bb4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_3 != 0x351fcbddUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_4 != 0x9e3776c7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_5 != 0xa3358b25UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_6 != 0x3ac285a7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_7 != 0xdf31abc5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_0 0xa2968873UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_1 0xc784ef36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_2 0x25046bb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_3 0x351fcbddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_4 0x9e3776c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_5 0xa3358b25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_6 0x3ac285a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME_7 0xdf31abc5UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetEEFrame_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const* request,
                                                                             roswasmc_bounded_1_franka_msgs_SetEEFrameResponse* response)
{
    unsigned char input[128], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetEEFrameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode(request, input, 128, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetEEFrame_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_franka_msgs_SetEEFrameRequest* request)
{
    unsigned char output[136];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetEEFrameRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetEEFrame_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_0 != 0x8bac4e36UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_1 != 0xc876e989UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_2 != 0xf7247f96UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_3 != 0x696a4ae5UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_4 != 0x237ef019UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_5 != 0xf8218685UL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_6 != 0x1b61c4afUL ||                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_7 != 0x90c92b7aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_0 0x8bac4e36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_1 0xc876e989UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_2 0xf7247f96UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_3 0x696a4ae5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_4 0x237ef019UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_5 0xf8218685UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_6 0x1b61c4afUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR_7 0x90c92b7aUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const* request,
                                                                        roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse* response)
{
    unsigned char input[208], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode(request, input, 208, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest* request)
{
    unsigned char output[216];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_0 != 0xf5c85230UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_1 != 0x05062b41UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_2 != 0x3df88a01UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_3 != 0xfa145232UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_4 != 0x61438e45UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_5 != 0x9b8cb607UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_6 != 0x5009e45aUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_7 != 0x6891fa80UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_0 0xf5c85230UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_1 0x05062b41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_2 0x3df88a01UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_3 0xfa145232UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_4 0x61438e45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_5 0x9b8cb607UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_6 0x5009e45aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR_7 0x6891fa80UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const* request,
                                                                 roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse* response)
{
    unsigned char input[416], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode(request, input, 416, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest* request)
{
    unsigned char output[424];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_0 != 0x80c4be57UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_1 != 0xde3e363cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_2 != 0x34ea93f3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_3 != 0xd50b5ba5UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_4 != 0x1a3254f3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_5 != 0x8552ce94UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_6 != 0x5f16bba3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_7 != 0xdf8a685dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_0 0x80c4be57UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_1 0xde3e363cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_2 0x34ea93f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_3 0xd50b5ba5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_4 0x1a3254f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_5 0x8552ce94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_6 0x5f16bba3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE_7 0xdf8a685dUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetJointImpedance_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const* request,
                                                                                    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse* response)
{
    unsigned char input[56], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode(request, input, 56, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetJointImpedance_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetJointImpedance_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_0 != 0x422dd8d0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_1 != 0x24cb00d0UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_2 != 0x68c11094UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_3 != 0xbb0c2a68UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_4 != 0x325fa404UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_5 != 0x9abce935UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_6 != 0x05c1ccadUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_7 != 0x3a8d807cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_0 0x422dd8d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_1 0x24cb00d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_2 0x68c11094UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_3 0xbb0c2a68UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_4 0x325fa404UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_5 0x9abce935UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_6 0x05c1ccadUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME_7 0x3a8d807cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetKFrame_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_franka_msgs_SetKFrameRequest const* request,
                                                                            roswasmc_bounded_1_franka_msgs_SetKFrameResponse* response)
{
    unsigned char input[128], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetKFrameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode(request, input, 128, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetKFrameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetKFrame_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_franka_msgs_SetKFrameRequest* request)
{
    unsigned char output[136];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetKFrameRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetKFrameRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetKFrame_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_franka_msgs_SetKFrameResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode(response, input + 8, 261, &n))
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_0 != 0x8ab92702UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_1 != 0xf5d02953UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_2 != 0xd70bb22dUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_3 != 0xffaa912aUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_4 != 0x9d35d5c0UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_5 != 0xd991c27cUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_6 != 0x7c367761UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_7 != 0x917b492bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_0 0x8ab92702UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_1 0xf5d02953UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_2 0xd70bb22dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_3 0xffaa912aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_4 0x9d35d5c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_5 0xd991c27cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_6 0x7c367761UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD_7 0x917b492bUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetLoad_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_franka_msgs_SetLoadRequest const* request,
                                                                          roswasmc_bounded_1_franka_msgs_SetLoadResponse* response)
{
    unsigned char input[104], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetLoadResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode(request, input, 104, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_franka_msgs_SetLoadResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_1_franka_msgs_SetLoad_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_franka_msgs_SetLoadRequest* request)
{
    unsigned char output[112];
    roswasmc_result r;
    roswasmc_bounded_1_franka_msgs_SetLoadRequest next = {0};
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
       roswasmc_bounded_1_franka_msgs_SetLoadRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_1_franka_msgs_SetLoad_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_franka_msgs_SetLoadResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode(response, input + 8, 261, &n))
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
