/**
 * @file bounded_interfaces.h
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros2-humble-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_BOUNDED_INTERFACES_H
#define UWVM_BOUNDED_INTERFACES_H
#include <doosan/c/ros2/doosan-ros2-humble-complete/bounded_records.h>
#include <ros/c/roswasm/action_bundle.h>

/** Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller
 * responsibility. */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}

/** Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_action_JogH2r_send(roswasmc_action_bundle* bundle, roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal const* goal, uint64_t* id)
{
    unsigned char input[10], output[8];
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
    if(roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_encode(goal, input, 10, &n))
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

/** Read custom feedback only for a locally owned exact Goal ID; idle leaves output untouched. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_JogH2r_feedback(roswasmc_action_bundle const* bundle,
                                                                                  uint64_t id,
                                                                                  roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback* feedback)
{
    unsigned char input[8], output[56];
    roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_JogH2r_result(roswasmc_action_bundle* bundle,
                                                                                uint64_t id,
                                                                                uint8_t* kind,
                                                                                roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result* result)
{
    unsigned char input[8], output[10];
    roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_decode(output + 9, (size_t)r.length - 9, &next))
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

/** Poll one incoming custom Goal under an independently activated advertise alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_action_JogH2r_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal* goal)
{
    unsigned char output[18];
    roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_feedback(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback const* value)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_encode(value, input + 9, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_JogH2r_respond_result(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        uint8_t kind,
                                                                                        roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result const* value)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_encode(value, input + 9, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_send(roswasmc_action_bundle* bundle,
                                                                                roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal const* goal,
                                                                                uint64_t* id)
{
    unsigned char input[144], output[8];
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
    if(roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_encode(goal, input, 144, &n))
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

/** Read custom feedback only for a locally owned exact Goal ID; idle leaves output untouched. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_feedback(roswasmc_action_bundle const* bundle,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback* feedback)
{
    unsigned char input[8], output[56];
    roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_result(roswasmc_action_bundle* bundle,
                                                                                  uint64_t id,
                                                                                  uint8_t* kind,
                                                                                  roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result* result)
{
    unsigned char input[8], output[10];
    roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_decode(output + 9, (size_t)r.length - 9, &next))
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

/** Poll one incoming custom Goal under an independently activated advertise alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal* goal)
{
    unsigned char output[152];
    roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_feedback(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback const* value)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_encode(value, input + 9, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_respond_result(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          uint8_t kind,
                                                                                          roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result const* value)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_encode(value, input + 9, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_send(roswasmc_action_bundle* bundle,
                                                                                roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal const* goal,
                                                                                uint64_t* id)
{
    unsigned char input[80], output[8];
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
    if(roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_encode(goal, input, 80, &n))
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

/** Read custom feedback only for a locally owned exact Goal ID; idle leaves output untouched. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_feedback(roswasmc_action_bundle const* bundle,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback* feedback)
{
    unsigned char input[8], output[56];
    roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_result(roswasmc_action_bundle* bundle,
                                                                                  uint64_t id,
                                                                                  uint8_t* kind,
                                                                                  roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result* result)
{
    unsigned char input[8], output[10];
    roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result next = UWVM_VENDOR_ZERO_INITIALIZER;
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
       roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_decode(output + 9, (size_t)r.length - 9, &next))
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

/** Poll one incoming custom Goal under an independently activated advertise alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal* goal)
{
    unsigned char output[88];
    roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_feedback(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback const* value)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_encode(value, input + 9, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_respond_result(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          uint8_t kind,
                                                                                          roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result const* value)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_encode(value, input + 9, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response* response)
{
    unsigned char input[170], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_encode(request, input, 170, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request* request)
{
    unsigned char output[178];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response* response)
{
    unsigned char input[50], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request const* request,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response* response)
{
    unsigned char input[195], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_encode(request, input, 195, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request* request)
{
    unsigned char output[203];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request const* request,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response* response)
{
    unsigned char input[18], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_encode(request, input, 18, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request* request)
{
    unsigned char output[26];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request const* request,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request const* request,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response* response)
{
    unsigned char input[99], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_encode(request, input, 99, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request* request)
{
    unsigned char output[107];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request const* request,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response* response)
{
    unsigned char input[67], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_encode(request, input, 67, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request* request)
{
    unsigned char output[75];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response* response)
{
    unsigned char input[67], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_encode(request, input, 67, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request* request)
{
    unsigned char output[75];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response* response)
{
    unsigned char input[531], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_encode(request, input, 531, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request* request)
{
    unsigned char output[539];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response* response)
{
    unsigned char input[308], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_encode(request, input, 308, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request* request)
{
    unsigned char output[316];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response* response)
{
    unsigned char input[340], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_encode(request, input, 340, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request* request)
{
    unsigned char output[348];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response* response)
{
    unsigned char input[50], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response* response)
{
    unsigned char input[261], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_encode(request, input, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request* request)
{
    unsigned char output[269];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request const* request,
                                                                            roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response* response)
{
    unsigned char input[38], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_encode(request, input, 38, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request* request)
{
    unsigned char output[46];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Fkin_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request const* request,
                                                                         roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response* response)
{
    unsigned char input[49], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_encode(request, input, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_Fkin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request* request)
{
    unsigned char output[57];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Fkin_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request const* request,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response* response)
{
    unsigned char input[1], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 9 || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_encode(response, input + 8, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request const* request,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response* response)
{
    unsigned char input[1], output[2213];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2213);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2213 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response const* response)
{
    unsigned char input[2221];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_encode(response, input + 8, 2213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response* response)
{
    unsigned char input[1], output[2213];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2213);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2213 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response const* response)
{
    unsigned char input[2221];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_encode(response, input + 8, 2213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request const* request,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request const* request,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request const* request,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response* response)
{
    unsigned char input[6], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request const* request,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response* response)
{
    unsigned char input[6], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 9 || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_encode(response, input + 8, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response* response)
{
    unsigned char input[6], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response* response)
{
    unsigned char input[1], output[793];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 793);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 793 || roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response const* response)
{
    unsigned char input[801];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_encode(response, input + 8, 793, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response* response)
{
    unsigned char input[260], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response* response)
{
    unsigned char input[97], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_encode(request, input, 97, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request* request)
{
    unsigned char output[105];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response* response)
{
    unsigned char input[6], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response* response)
{
    unsigned char input[6], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 9 || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_encode(response, input + 8, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response* response)
{
    unsigned char input[6], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response* response)
{
    unsigned char input[1], output[129];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 129);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 129 || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response const* response)
{
    unsigned char input[137];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_encode(response, input + 8, 129, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request const* request,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request const* request,
                                                                       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request const* request,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request const* request,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response* response)
{
    unsigned char input[48], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request const* request,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request const* request,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response* response)
{
    unsigned char input[1], output[50];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 50);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 50 || roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response const* response)
{
    unsigned char input[58];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_encode(response, input + 8, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response* response)
{
    unsigned char input[1], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Ikin_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request const* request,
                                                                         roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response* response)
{
    unsigned char input[50], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_Ikin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Ikin_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response* response)
{
    unsigned char input[17], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Jog_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request const* request,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response* response)
{
    unsigned char input[10], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_encode(request, input, 10, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_Jog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request* request)
{
    unsigned char output[18];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_Jog_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response* response)
{
    unsigned char input[2256], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_encode(request, input, 2256, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request* request)
{
    unsigned char output[2264];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response* response)
{
    unsigned char input[2280], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_encode(request, input, 2280, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request* request)
{
    unsigned char output[2288];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response* response)
{
    unsigned char input[83], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_encode(request, input, 83, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request* request)
{
    unsigned char output[91];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response* response)
{
    unsigned char input[85], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_encode(request, input, 85, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request* request)
{
    unsigned char output[93];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response* response)
{
    unsigned char input[100], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_encode(request, input, 100, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request* request)
{
    unsigned char output[108];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePause_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePause_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePause_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response* response)
{
    unsigned char input[107], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_encode(request, input, 107, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request* request)
{
    unsigned char output[115];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response* response)
{
    unsigned char input[94], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_encode(request, input, 94, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request* request)
{
    unsigned char output[102];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response* response)
{
    unsigned char input[2319], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_encode(request, input, 2319, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request* request)
{
    unsigned char output[2327];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response* response)
{
    unsigned char input[2257], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_encode(request, input, 2257, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request* request)
{
    unsigned char output[2265];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response* response)
{
    unsigned char input[4], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response* response)
{
    unsigned char input[50], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response* response)
{
    unsigned char input[146], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_encode(request, input, 146, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request* request)
{
    unsigned char output[154];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request const* request,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response* response)
{
    unsigned char input[1], output[8154];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8154);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8154 || roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response const* response)
{
    unsigned char input[8162];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_encode(response, input + 8, 8154, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request const* request,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request const* request,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response* response)
{
    unsigned char input[16], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request const* request,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response* response)
{
    unsigned char input[9], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request const* request,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request const* request,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response* response)
{
    unsigned char input[64], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_encode(request, input, 64, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request* request)
{
    unsigned char output[72];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response* response)
{
    unsigned char input[6], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response* response)
{
    unsigned char input[10], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_encode(request, input, 10, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request* request)
{
    unsigned char output[18];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response* response)
{
    unsigned char input[6], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_encode(request, input, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request* request)
{
    unsigned char output[14];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request const* request,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request const* request,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response* response)
{
    unsigned char input[272], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response* response)
{
    unsigned char input[272], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request const* request,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request const* request,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request const* request,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request const* request,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response* response)
{
    unsigned char input[49], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_encode(request, input, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request* request)
{
    unsigned char output[57];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response* response)
{
    unsigned char input[193], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_encode(request, input, 193, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request* request)
{
    unsigned char output[201];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request const* request,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response* response)
{
    unsigned char input[97], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_encode(request, input, 97, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request* request)
{
    unsigned char output[105];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request const* request,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response* response)
{
    unsigned char input[16], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request const* request,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request const* request,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request const* request,
                                                             roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Trans_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request const* request,
                                                                          roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response* response)
{
    unsigned char input[98], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_encode(request, input, 98, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_dsr_msgs2_srv_Trans_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request* request)
{
    unsigned char output[106];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_Trans_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request const* request,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response* response)
{
    unsigned char input[152], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_encode(request, input, 152, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request* request)
{
    unsigned char output[160];
    roswasmc_result r;
    roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
