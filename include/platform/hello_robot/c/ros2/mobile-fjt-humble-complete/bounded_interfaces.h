/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_E3A1B1B8F670BCB695361119FDB94D074971E19BE4AB0BB3A7FFC89372AFEFD6
#define UWVM_ROS_BOUNDED_INTERFACES_E3A1B1B8F670BCB695361119FDB94D074971E19BE4AB0BB3A7FFC89372AFEFD6
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_0 != 0xa8e8b269UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_1 != 0xaf660a2dUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_2 != 0x0d8f0703UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_3 != 0xc6e76c21UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_4 != 0x38df42c1UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_5 != 0x773256d8UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_6 != 0x6ad0ca74UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_7 != 0x0ee11b3dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_0 0xa8e8b269UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_1 0xaf660a2dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_2 0x0d8f0703UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_3 0xc6e76c21UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_4 0x38df42c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_5 0x773256d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_6 0x6ad0ca74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_7 0x0ee11b3dUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(roswasmc_action_bundle* bundle,
                                                                      roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal,
                                                                      uint64_t* id)
{
    unsigned char input[8580], output[8];
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
    if(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(goal, input, 8580, &n))
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(roswasmc_action_bundle const* bundle,
                                                                          uint64_t id,
                                                                          roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* feedback)
{
    unsigned char input[8], output[4716];
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback next = {0};
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
       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(roswasmc_action_bundle* bundle,
                                                                        uint64_t id,
                                                                        uint8_t* kind,
                                                                        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* result)
{
    unsigned char input[8], output[273];
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result next = {0};
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
       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(roswasmc_capability const* cap,
                                                                      uint64_t* id,
                                                                      roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* goal)
{
    unsigned char output[8588];
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    unsigned char input[4717];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(value, input + 9, 4708, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(
    roswasmc_capability const* cap,
    uint64_t id,
    uint8_t kind,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(value, input + 9, 264, &n))
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
