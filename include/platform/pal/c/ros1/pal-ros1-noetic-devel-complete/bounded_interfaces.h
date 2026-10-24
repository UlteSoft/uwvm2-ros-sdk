/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_BOUNDED_INTERFACES_H
#define UWVM_BOUNDED_INTERFACES_H
#include <platform/pal/c/ros1/pal-ros1-noetic-devel-complete/bounded_records.h>
#include <platform/ros/c/roswasm/action_bundle.h>

/** @brief Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller responsibility. */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest const* request,
                                                              roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse* response)
{
    unsigned char input[1192], output[132];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_encode(request, input, 1192, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 132);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 132 || roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest* request)
{
    unsigned char output[1200];
    roswasmc_result r;
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse const* response)
{
    unsigned char input[140];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_encode(response, input + 8, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal const* goal,
                                                                                       uint64_t* id)
{
    unsigned char input[1192], output[8];
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
    if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_encode(goal, input, 1192, &n))
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
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_feedback(roswasmc_action_bundle const* bundle,
                                                                 uint64_t id,
                                                                 roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback next = {0};
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
       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult next = {0};
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
       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal* goal)
{
    unsigned char output[1200];
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_feedback(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_result(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       uint8_t kind,
                                                                       roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_Presentation_send(roswasmc_action_bundle* bundle,
                                                                                      roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal const* goal,
                                                                                      uint64_t* id)
{
    unsigned char input[132], output[8];
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
    if(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_encode(goal, input, 132, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_Presentation_feedback(roswasmc_action_bundle const* bundle,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback next = {0};
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
       roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_Presentation_result(roswasmc_action_bundle* bundle,
                                                                                        uint64_t id,
                                                                                        uint8_t* kind,
                                                                                        roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult next = {0};
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
       roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_behaviour_msgs_Presentation_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* id,
                                                                                      roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal* goal)
{
    unsigned char output[140];
    roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_feedback(roswasmc_capability const* cap,
                                                                        uint64_t id,
                                                                        roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_result(roswasmc_capability const* cap,
                                                                      uint64_t id,
                                                                      uint8_t kind,
                                                                      roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_common_msgs_Disable_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_pal_common_msgs_DisableGoal const* goal, uint64_t* id)
{
    unsigned char input[4], output[8];
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
    if(roswasmc_bounded_1_pal_common_msgs_DisableGoal_encode(goal, input, 4, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Disable_feedback(roswasmc_action_bundle const* bundle,
                                                                                  uint64_t id,
                                                                                  roswasmc_bounded_1_pal_common_msgs_DisableFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_common_msgs_DisableFeedback next = {0};
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
       roswasmc_bounded_1_pal_common_msgs_DisableFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Disable_result(roswasmc_action_bundle* bundle,
                                                                                uint64_t id,
                                                                                uint8_t* kind,
                                                                                roswasmc_bounded_1_pal_common_msgs_DisableResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_common_msgs_DisableResult next = {0};
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
       roswasmc_bounded_1_pal_common_msgs_DisableResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_common_msgs_Disable_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_common_msgs_DisableGoal* goal)
{
    unsigned char output[12];
    roswasmc_bounded_1_pal_common_msgs_DisableGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_common_msgs_DisableGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Disable_respond_feedback(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_1_pal_common_msgs_DisableFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_common_msgs_DisableFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Disable_respond_result(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        uint8_t kind,
                                                                                        roswasmc_bounded_1_pal_common_msgs_DisableResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_common_msgs_DisableResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_common_msgs_Empty_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_pal_common_msgs_EmptyGoal const* goal, uint64_t* id)
{
    unsigned char input[1], output[8];
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
    if(roswasmc_bounded_1_pal_common_msgs_EmptyGoal_encode(goal, input, 0, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Empty_feedback(roswasmc_action_bundle const* bundle,
                                                                                uint64_t id,
                                                                                roswasmc_bounded_1_pal_common_msgs_EmptyFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_common_msgs_EmptyFeedback next = {0};
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
       roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Empty_result(roswasmc_action_bundle* bundle,
                                                                              uint64_t id,
                                                                              uint8_t* kind,
                                                                              roswasmc_bounded_1_pal_common_msgs_EmptyResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_common_msgs_EmptyResult next = {0};
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
       roswasmc_bounded_1_pal_common_msgs_EmptyResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_common_msgs_Empty_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_common_msgs_EmptyGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_pal_common_msgs_EmptyGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_common_msgs_EmptyGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Empty_respond_feedback(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_1_pal_common_msgs_EmptyFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_Empty_respond_result(roswasmc_capability const* cap,
                                                                                      uint64_t id,
                                                                                      uint8_t kind,
                                                                                      roswasmc_bounded_1_pal_common_msgs_EmptyResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_common_msgs_EmptyResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_GetString_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_pal_common_msgs_GetStringRequest const* request,
                                                                                roswasmc_bounded_1_pal_common_msgs_GetStringResponse* response)
{
    unsigned char input[1], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_common_msgs_GetStringResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_common_msgs_GetStringRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_1_pal_common_msgs_GetStringResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_GetString_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_pal_common_msgs_GetStringRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_common_msgs_GetStringRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_common_msgs_GetStringRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_GetString_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_pal_common_msgs_GetStringResponse const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_common_msgs_GetStringResponse_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_SetString_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_pal_common_msgs_SetStringRequest const* request,
                                                                                roswasmc_bounded_1_pal_common_msgs_SetStringResponse* response)
{
    unsigned char input[132], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_common_msgs_SetStringResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_common_msgs_SetStringRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_common_msgs_SetStringResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_SetString_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_pal_common_msgs_SetStringRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_pal_common_msgs_SetStringRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_common_msgs_SetStringRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_common_msgs_SetString_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_pal_common_msgs_SetStringResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_common_msgs_SetStringResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_CurrentLimit_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest const* request,
                                                                                    roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse* response)
{
    unsigned char input[140], output[132];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 132);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 132 || roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_CurrentLimit_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_CurrentLimit_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse const* response)
{
    unsigned char input[140];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_encode(response, input + 8, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_MotionManager_send(roswasmc_action_bundle* bundle,
                                                                                     roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal const* goal,
                                                                                     uint64_t* id)
{
    unsigned char input[140], output[8];
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
    if(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_encode(goal, input, 140, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_MotionManager_feedback(roswasmc_action_bundle const* bundle,
                                                                                         uint64_t id,
                                                                                         roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback next = {0};
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
       roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_MotionManager_result(roswasmc_action_bundle* bundle,
                                                                                       uint64_t id,
                                                                                       uint8_t* kind,
                                                                                       roswasmc_bounded_1_pal_control_msgs_MotionManagerResult* result)
{
    unsigned char input[8], output[141];
    roswasmc_bounded_1_pal_control_msgs_MotionManagerResult next = {0};
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
       roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_MotionManager_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* id,
                                                                                     roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal* goal)
{
    unsigned char output[148];
    roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_feedback(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_result(roswasmc_capability const* cap,
                                                                     uint64_t id,
                                                                     uint8_t kind,
                                                                     roswasmc_bounded_1_pal_control_msgs_MotionManagerResult const* value)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_encode(value, input + 9, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_send(roswasmc_action_bundle* bundle,
                                                                 roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal const* goal,
                                                                 uint64_t* id)
{
    unsigned char input[789], output[8];
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
    if(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_encode(goal, input, 789, &n))
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
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_feedback(roswasmc_action_bundle const* bundle,
                                                                     uint64_t id,
                                                                     roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback next = {0};
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
       roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_result(roswasmc_action_bundle* bundle,
                                                                   uint64_t id,
                                                                   uint8_t* kind,
                                                                   roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult* result)
{
    unsigned char input[8], output[141];
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult next = {0};
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
       roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_poll(roswasmc_capability const* cap,
                                                                                           uint64_t* id,
                                                                                           roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal* goal)
{
    unsigned char output[797];
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_feedback(roswasmc_capability const* cap,
                                                                             uint64_t id,
                                                                             roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_result(roswasmc_capability const* cap,
                                                                           uint64_t id,
                                                                           uint8_t kind,
                                                                           roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult const* value)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_encode(value, input + 9, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest const* request,
                                                                 roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse* response)
{
    unsigned char input[4521], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_encode(request, input, 4521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest* request)
{
    unsigned char output[4529];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest const* request,
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse* response)
{
    unsigned char input[133], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_encode(request, input, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest* request)
{
    unsigned char output[141];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_send(roswasmc_action_bundle* bundle,
                                                                roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal const* goal,
                                                                uint64_t* id)
{
    unsigned char input[4376], output[8];
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
    if(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_encode(goal, input, 4376, &n))
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
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_feedback(roswasmc_action_bundle const* bundle,
                                                                    uint64_t id,
                                                                    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback next = {0};
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
       roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_result(roswasmc_action_bundle* bundle,
                                                                  uint64_t id,
                                                                  uint8_t* kind,
                                                                  roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult* result)
{
    unsigned char input[8], output[5147];
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult next = {0};
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
       roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* id,
                                                                                          roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal* goal)
{
    unsigned char output[4384];
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_feedback(roswasmc_capability const* cap,
                                                                            uint64_t id,
                                                                            roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_result(roswasmc_capability const* cap,
                                                                          uint64_t id,
                                                                          uint8_t kind,
                                                                          roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult const* value)
{
    unsigned char input[5147];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_encode(value, input + 9, 5138, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_Recognizer_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest const* request,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse* response)
{
    unsigned char input[5], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_encode(request, input, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_Recognizer_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest* request)
{
    unsigned char output[13];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_Recognizer_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest const* request,
                                                                    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse* response)
{
    unsigned char input[148], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_encode(request, input, 148, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest* request)
{
    unsigned char output[156];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_SetDatabase_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest const* request,
                                                                                     roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse* response)
{
    unsigned char input[133], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_encode(request, input, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_SetDatabase_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest* request)
{
    unsigned char output[141];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_SetDatabase_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest const* request,
                                                               roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse* response)
{
    unsigned char input[132], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest const* request,
                                                              roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse* response)
{
    unsigned char input[1], output[137];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 137);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 137 || roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse const* response)
{
    unsigned char input[145];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_encode(response, input + 8, 137, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_CancelEffect_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest const* request,
                                                                                   roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse* response)
{
    unsigned char input[4], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_CancelEffect_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_CancelEffect_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal const* goal,
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
    if(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_encode(goal, input, 472, &n))
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
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_feedback(roswasmc_action_bundle const* bundle,
                                                                 uint64_t id,
                                                                 roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback next = {0};
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
       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult next = {0};
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
       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal* goal)
{
    unsigned char output[480];
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_feedback(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_result(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       uint8_t kind,
                                                                       roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest const* request,
                                                                   roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest const* request,
                                                             roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse* response)
{
    unsigned char input[61], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_encode(request, input, 61, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest* request)
{
    unsigned char output[69];
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest const* request,
                                                              roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse* response)
{
    unsigned char input[29], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_encode(request, input, 29, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest* request)
{
    unsigned char output[37];
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest const* request,
                                                                                      roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse* response)
{
    unsigned char input[54], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_encode(request, input, 54, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest* request)
{
    unsigned char output[62];
    roswasmc_result r;
    roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse const* response)
{
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_encode(response, input + 8, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRFile_send(roswasmc_action_bundle* bundle,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal const* goal,
                                                                                   uint64_t* id)
{
    unsigned char input[396], output[8];
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
    if(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_encode(goal, input, 396, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRFile_feedback(roswasmc_action_bundle const* bundle,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback* feedback)
{
    unsigned char input[8], output[1217];
    roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRFile_result(roswasmc_action_bundle* bundle,
                                                                                     uint64_t id,
                                                                                     uint8_t* kind,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult* result)
{
    unsigned char input[8], output[5113];
    roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRFile_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* id,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal* goal)
{
    unsigned char output[404];
    roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_feedback(roswasmc_capability const* cap,
                                                                     uint64_t id,
                                                                     roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback const* value)
{
    unsigned char input[1218];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_encode(value, input + 9, 1209, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_result(roswasmc_capability const* cap,
                                                                                             uint64_t id,
                                                                                             uint8_t kind,
                                                                                             roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult const* value)
{
    unsigned char input[5113];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_encode(value, input + 9, 5104, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRService_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest const* request,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse* response)
{
    unsigned char input[526], output[802];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_encode(request, input, 526, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 802);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 802 || roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_ASRService_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest* request)
{
    unsigned char output[534];
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_ASRService_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse const* response)
{
    unsigned char input[810];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_encode(response, input + 8, 802, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_send(roswasmc_action_bundle* bundle,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal const* goal,
                                                                                     uint64_t* id)
{
    unsigned char input[133], output[8];
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
    if(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_encode(goal, input, 133, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_feedback(roswasmc_action_bundle const* bundle,
                                                                                         uint64_t id,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_result(roswasmc_action_bundle* bundle,
                                                                                       uint64_t id,
                                                                                       uint8_t* kind,
                                                                                       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* id,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal* goal)
{
    unsigned char output[141];
    roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_feedback(roswasmc_capability const* cap,
                                                                       uint64_t id,
                                                                       roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_result(roswasmc_capability const* cap,
                                                                     uint64_t id,
                                                                     uint8_t kind,
                                                                     roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest const* request,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse* response)
{
    unsigned char input[2248], output[2249];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_encode(request, input, 2248, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2249);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2249 || roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest* request)
{
    unsigned char output[2256];
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse const* response)
{
    unsigned char input[2257];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_encode(response, input + 8, 2249, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Sound_send(roswasmc_action_bundle* bundle,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_SoundGoal const* goal,
                                                                                 uint64_t* id)
{
    unsigned char input[272], output[8];
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
    if(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_encode(goal, input, 272, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Sound_feedback(roswasmc_action_bundle const* bundle,
                                                                                     uint64_t id,
                                                                                     roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Sound_result(roswasmc_action_bundle* bundle,
                                                                                   uint64_t id,
                                                                                   uint8_t* kind,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_SoundResult* result)
{
    unsigned char input[8], output[141];
    roswasmc_bounded_1_pal_interaction_msgs_SoundResult next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_SoundResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_Sound_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_interaction_msgs_SoundGoal* goal)
{
    unsigned char output[280];
    roswasmc_bounded_1_pal_interaction_msgs_SoundGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_feedback(roswasmc_capability const* cap,
                                                                                             uint64_t id,
                                                                                             roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_result(roswasmc_capability const* cap,
                                                                                           uint64_t id,
                                                                                           uint8_t kind,
                                                                                           roswasmc_bounded_1_pal_interaction_msgs_SoundResult const* value)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_interaction_msgs_SoundResult_encode(value, input + 9, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest const* request,
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_Tts_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_pal_interaction_msgs_TtsGoal const* goal, uint64_t* id)
{
    unsigned char input[2388], output[8];
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
    if(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_encode(goal, input, 2388, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Tts_feedback(roswasmc_action_bundle const* bundle,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback* feedback)
{
    unsigned char input[8], output[4778];
    roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Tts_result(roswasmc_action_bundle* bundle,
                                                                                 uint64_t id,
                                                                                 uint8_t* kind,
                                                                                 roswasmc_bounded_1_pal_interaction_msgs_TtsResult* result)
{
    unsigned char input[8], output[273];
    roswasmc_bounded_1_pal_interaction_msgs_TtsResult next = {0};
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
       roswasmc_bounded_1_pal_interaction_msgs_TtsResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_Tts_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_interaction_msgs_TtsGoal* goal)
{
    unsigned char output[2396];
    roswasmc_bounded_1_pal_interaction_msgs_TtsGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_feedback(roswasmc_capability const* cap,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback const* value)
{
    unsigned char input[4779];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_encode(value, input + 9, 4770, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_result(roswasmc_capability const* cap,
                                                                                         uint64_t id,
                                                                                         uint8_t kind,
                                                                                         roswasmc_bounded_1_pal_interaction_msgs_TtsResult const* value)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_interaction_msgs_TtsResult_encode(value, input + 9, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_recognizerService_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest const* request,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse* response)
{
    unsigned char input[529], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_encode(request, input, 529, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_interaction_msgs_recognizerService_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest* request)
{
    unsigned char output[537];
    roswasmc_result r;
    roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_interaction_msgs_recognizerService_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest const* request,
                                                               roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse* response)
{
    unsigned char input[1], output[624];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 624);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 624 || roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse const* response)
{
    unsigned char input[632];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_encode(response, input + 8, 624, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest const* request,
                                                                    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest const* request,
                                                                   roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_send(roswasmc_action_bundle* bundle,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal const* goal,
                                                                                      uint64_t* id)
{
    unsigned char input[133], output[8];
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
    if(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_encode(goal, input, 133, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_feedback(roswasmc_action_bundle const* bundle,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback* feedback)
{
    unsigned char input[8], output[2193];
    roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback next = {0};
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
       roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_result(roswasmc_action_bundle* bundle,
                                                                                        uint64_t id,
                                                                                        uint8_t* kind,
                                                                                        roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult* result)
{
    unsigned char input[8], output[2194];
    roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult next = {0};
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
       roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* id,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal* goal)
{
    unsigned char output[141];
    roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_feedback(roswasmc_capability const* cap,
                                                                        uint64_t id,
                                                                        roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback const* value)
{
    unsigned char input[2194];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_encode(value, input + 9, 2185, &n))
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
    roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_result(roswasmc_capability const* cap,
                                                                      uint64_t id,
                                                                      uint8_t kind,
                                                                      roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult const* value)
{
    unsigned char input[2194];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_encode(value, input + 9, 2185, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest const* request,
                                                              roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest const* request,
                                                             roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest const* request,
                                                                                    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse* response)
{
    unsigned char input[4], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest const* request,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_LookToPixel_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest const* request,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_LookToPixel_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_vision_msgs_LookToPixel_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_send(roswasmc_action_bundle* bundle,
                                                                           roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal const* goal,
                                                                           uint64_t* id)
{
    unsigned char input[1], output[8];
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
    if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_encode(goal, input, 0, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_feedback(
    roswasmc_action_bundle const* bundle,
    uint64_t id,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback next = {0};
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
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_result(roswasmc_action_bundle* bundle,
                                                                             uint64_t id,
                                                                             uint8_t* kind,
                                                                             roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult* result)
{
    unsigned char input[8], output[10];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult next = {0};
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
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_poll(roswasmc_capability const* cap,
                                                                           uint64_t* id,
                                                                           roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_result(
    roswasmc_capability const* cap,
    uint64_t id,
    uint8_t kind,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult const* value)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_encode(value, input + 9, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_send(roswasmc_action_bundle* bundle,
                                                                            roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal const* goal,
                                                                            uint64_t* id)
{
    unsigned char input[1], output[8];
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
    if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_encode(goal, input, 0, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_feedback(
    roswasmc_action_bundle const* bundle,
    uint64_t id,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback next = {0};
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
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_result(roswasmc_action_bundle* bundle,
                                                                              uint64_t id,
                                                                              uint8_t* kind,
                                                                              roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult* result)
{
    unsigned char input[8], output[506];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult next = {0};
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
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_poll(roswasmc_capability const* cap,
                                                                            uint64_t* id,
                                                                            roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_result(
    roswasmc_capability const* cap,
    uint64_t id,
    uint8_t kind,
    roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult const* value)
{
    unsigned char input[506];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_encode(value, input + 9, 497, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest const* request,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse* response)
{
    unsigned char input[1248], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_encode(request, input, 1248, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest* request)
{
    unsigned char output[1256];
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_Sit_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_pal_walking_msgs_SitRequest const* request,
                                                                           roswasmc_bounded_1_pal_walking_msgs_SitResponse* response)
{
    unsigned char input[9], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_SitResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_walking_msgs_SitRequest_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_walking_msgs_SitResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_walking_msgs_Sit_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_pal_walking_msgs_SitRequest* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_SitRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_walking_msgs_SitRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_Sit_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_pal_walking_msgs_SitResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_walking_msgs_SitResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_StepOver_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_pal_walking_msgs_StepOverRequest const* request,
                                                                                roswasmc_bounded_1_pal_walking_msgs_StepOverResponse* response)
{
    unsigned char input[32], output[132];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_StepOverResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 132);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 132 || roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_StepOver_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_pal_walking_msgs_StepOverRequest* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_StepOverRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_StepOver_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_pal_walking_msgs_StepOverResponse const* response)
{
    unsigned char input[140];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_encode(response, input + 8, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_WalkSteps_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest const* request,
                                                                                 roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse* response)
{
    unsigned char input[20], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_encode(request, input, 20, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_WalkSteps_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest* request)
{
    unsigned char output[28];
    roswasmc_result r;
    roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_walking_msgs_WalkSteps_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest const* request,
                                                                  roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse* response)
{
    unsigned char input[1], output[2548];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2548);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2548 || roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse const* response)
{
    unsigned char input[2556];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_encode(response, input + 8, 2548, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
