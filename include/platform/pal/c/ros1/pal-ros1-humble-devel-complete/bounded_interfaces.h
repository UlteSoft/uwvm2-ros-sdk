/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_F189729A76DE8ABA62B61870C1C3FFA0F452C87044B3940E978144059896290E
#define UWVM_ROS_BOUNDED_INTERFACES_F189729A76DE8ABA62B61870C1C3FFA0F452C87044B3940E978144059896290E
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_0 != 0xb59ad22cUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_1 != 0x21c5abd7UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_2 != 0x817d797dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_3 != 0x21e3ec63UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_4 != 0xb45ccf62UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_5 != 0x404f3f53UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_6 != 0x9576d6eeUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_7 != 0x4f57dd79UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_0 0xb59ad22cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_1 0x21c5abd7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_2 0x817d797dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_3 0x21e3ec63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_4 0xb45ccf62UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_5 0x404f3f53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_6 0x9576d6eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT_7 0x4f57dd79UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_0 != 0xe4e05f51UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_1 != 0x9ef647dbUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_2 != 0x4121c24bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_3 != 0x3826333fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_4 != 0xb5816c99UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_5 != 0x8fec53b4UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_6 != 0x9cf3c06fUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_7 != 0x4e39a374UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_0 0xe4e05f51UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_1 0x9ef647dbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_2 0x4121c24bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_3 0x3826333fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_4 0xb5816c99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_5 0x8fec53b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_6 0x9cf3c06fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK_7 0x4e39a374UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_0 != 0x5bfa4315UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_1 != 0xce2ed1cdUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_2 != 0x7e8f9df8UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_3 != 0xa4fcea10UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_4 != 0xa6766574UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_5 != 0x3229164bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_6 != 0x43394872UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_7 != 0x1c1b054dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_0 0x5bfa4315UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_1 0xce2ed1cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_2 0x7e8f9df8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_3 0xa4fcea10UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_4 0xa6766574UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_5 0x3229164bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_6 0x43394872UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION_7 0x1c1b054dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_0 != 0x2fa69254UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_1 != 0x67f6e875UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_2 != 0x740dc5d6UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_3 != 0x10a7bd03UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_4 != 0xad3cf52cUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_5 != 0x9673fd7dUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_6 != 0x410da5c3UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_7 != 0x41767da3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_0 0x2fa69254UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_1 0x67f6e875UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_2 0x740dc5d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_3 0x10a7bd03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_4 0xad3cf52cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_5 0x9673fd7dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_6 0x410da5c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE_7 0x41767da3UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_0 != 0xd873bb08UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_1 != 0xf3445e49UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_2 != 0x33d5e142UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_3 != 0x89c31873UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_4 != 0x99664967UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_5 != 0x16fdfd1dUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_6 != 0x0db38fddUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_7 != 0x22cd26fcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_0 0xd873bb08UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_1 0xf3445e49UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_2 0x33d5e142UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_3 0x89c31873UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_4 0x99664967UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_5 0x16fdfd1dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_6 0x0db38fddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY_7 0x22cd26fcUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_0 != 0xd6720a37UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_1 != 0xe3cb41edUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_2 != 0x44cdc8e1UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_3 != 0xfd0de077UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_4 != 0xbcc66e55UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_5 != 0x3484a664UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_6 != 0x47755213UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_7 != 0xa714c277UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_0 0xd6720a37UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_1 0xe3cb41edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_2 0x44cdc8e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_3 0xfd0de077UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_4 0xbcc66e55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_5 0x3484a664UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_6 0x47755213UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING_7 0xa714c277UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_0 != 0x3d84f9feUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_1 != 0x7ba3bb90UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_2 != 0x290fc866UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_3 != 0x02c5fb43UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_4 != 0x93d008c7UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_5 != 0x2ad525deUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_6 != 0x2978b7c2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_7 != 0x2e931551UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_0 0x3d84f9feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_1 0x7ba3bb90UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_2 0x290fc866UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_3 0x02c5fb43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_4 0x93d008c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_5 0x2ad525deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_6 0x2978b7c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING_7 0x2e931551UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_0 != 0x989c1792UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_1 != 0xa43d41bdUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_2 != 0x6b8e49d0UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_3 != 0xef9e80cbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_4 != 0x27378db2UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_5 != 0x558d5256UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_6 != 0x21a36ad7UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_7 != 0x2e7f2225UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_0 0x989c1792UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_1 0xa43d41bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_2 0x6b8e49d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_3 0xef9e80cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_4 0x27378db2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_5 0x558d5256UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_6 0x21a36ad7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT_7 0x2e7f2225UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_0 != 0x8ae3ee59UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_1 != 0xf501cb78UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_2 != 0xc18ce6b3UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_3 != 0x5f4ff756UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_4 != 0xd82c5d53UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_5 != 0xc64a5e7bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_6 != 0xc491d66fUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_7 != 0x3c9953b1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_0 0x8ae3ee59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_1 0xf501cb78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_2 0xc18ce6b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_3 0x5f4ff756UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_4 0xd82c5d53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_5 0xc64a5e7bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_6 0xc491d66fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER_7 0x3c9953b1UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_0 != 0x5c06018aUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_1 != 0x7b8269c9UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_2 != 0xec00c93dUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_3 != 0x78907eedUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_4 != 0x529e381cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_5 != 0x55a19f2cUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_6 != 0xb42eefc7UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_7 != 0x1efa1e49UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_0 0x5c06018aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_1 0x7b8269c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_2 0xec00c93dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_3 0x78907eedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_4 0x529e381cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_5 0x55a19f2cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_6 0xb42eefc7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY_7 0x1efa1e49UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_0 != 0xaf7e33d2UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_1 != 0x3efb019fUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_2 != 0x3f6bf34eUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_3 != 0x8542f327UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_4 != 0x69e5d6ebUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_5 != 0x0e87d5e1UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_6 != 0x7594cfe8UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_7 != 0x7d58f073UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_0 0xaf7e33d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_1 0x3efb019fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_2 0x3f6bf34eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_3 0x8542f327UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_4 0x69e5d6ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_5 0x0e87d5e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_6 0x7594cfe8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT_7 0x7d58f073UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_0 != 0x1b0bd5fdUL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_1 != 0xde97d69aUL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_2 != 0x22eaeab2UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_3 != 0x86c19ae7UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_4 != 0xb3d62c6cUL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_5 != 0xa1bdfa52UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_6 != 0x61f518c6UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_7 != 0xf143f94cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_0 0x1b0bd5fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_1 0xde97d69aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_2 0x22eaeab2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_3 0x86c19ae7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_4 0xb3d62c6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_5 0xa1bdfa52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_6 0x61f518c6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL_7 0xf143f94cUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_0 != 0xb10c88f4UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_1 != 0xa7f0e1aeUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_2 != 0x6d8dd022UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_3 != 0xe6efbb18UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_4 != 0x06ec2119UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_5 != 0x3184d3c2UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_6 != 0xd43f14c7UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_7 != 0x5bb1a01bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_0 0xb10c88f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_1 0xa7f0e1aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_2 0x6d8dd022UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_3 0xe6efbb18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_4 0x06ec2119UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_5 0x3184d3c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_6 0xd43f14c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS_7 0x5bb1a01bUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_0 != 0xbc7576e9UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_1 != 0x145f7a41UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_2 != 0x3b2b191cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_3 != 0x9222b17cUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_4 != 0x1f3e3f2eUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_5 != 0x90b36854UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_6 != 0x4ef113d1UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_7 != 0xc6200526UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_0 0xbc7576e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_1 0x145f7a41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_2 0x3b2b191cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_3 0x9222b17cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_4 0x1f3e3f2eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_5 0x90b36854UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_6 0x4ef113d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER_7 0xc6200526UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_0 != 0x8496b727UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_1 != 0xa0b27bf6UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_2 != 0x1e52b89aUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_3 != 0xb95676c3UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_4 != 0x78421488UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_5 != 0x32996eaeUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_6 != 0x1cdca388UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_7 != 0x4e455e84UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_0 0x8496b727UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_1 0xa0b27bf6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_2 0x1e52b89aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_3 0xb95676c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_4 0x78421488UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_5 0x32996eaeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_6 0x1cdca388UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT_7 0x4e455e84UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_0 != 0xabb85f75UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_1 != 0xb26dfa11UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_2 != 0x3332314eUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_3 != 0x3d720b6dUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_4 != 0x75e0a327UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_5 != 0x4ea38ba4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_6 != 0x5b6411f4UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_7 != 0x76b32dabUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_0 0xabb85f75UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_1 0xb26dfa11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_2 0x3332314eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_3 0x3d720b6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_4 0x75e0a327UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_5 0x4ea38ba4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_6 0x5b6411f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE_7 0x76b32dabUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_0 != 0xa5d8dea7UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_1 != 0xf9dd18b1UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_2 != 0x9e90a68cUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_3 != 0x7c2d154fUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_4 != 0x69949c87UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_5 != 0xfa8cab99UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_6 != 0x8f2faaf3UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_7 != 0xf9d1a52eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_0 0xa5d8dea7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_1 0xf9dd18b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_2 0x9e90a68cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_3 0x7c2d154fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_4 0x69949c87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_5 0xfa8cab99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_6 0x8f2faaf3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT_7 0xf9d1a52eUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_0 != 0x50651328UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_1 != 0x46e451a1UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_2 != 0x6066bfc3UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_3 != 0x857cdf32UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_4 != 0x75a32125UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_5 != 0xf3fae319UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_6 != 0xd88dd69dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_7 != 0xfe066492UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_0 0x50651328UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_1 0x46e451a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_2 0x6066bfc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_3 0x857cdf32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_4 0x75a32125UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_5 0xf3fae319UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_6 0xd88dd69dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT_7 0xfe066492UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_0 != 0x3c276a3bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_1 != 0x6fd96227UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_2 != 0x450054cdUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_3 != 0x12e5a864UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_4 != 0x8847cf61UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_5 != 0xbf680912UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_6 != 0x4e79e215UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_7 != 0xe7369b0bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_0 0x3c276a3bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_1 0x6fd96227UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_2 0x450054cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_3 0x12e5a864UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_4 0x8847cf61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_5 0xbf680912UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_6 0x4e79e215UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE_7 0xe7369b0bUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_0 != 0x7b2b19aaUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_1 != 0x9a9190deUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_2 != 0x9bc1dae0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_3 != 0x623e157bUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_4 != 0x671eb6fcUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_5 != 0xac8eece2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_6 != 0xd5dd0678UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_7 != 0x2c047444UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_0 0x7b2b19aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_1 0x9a9190deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_2 0x9bc1dae0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_3 0x623e157bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_4 0x671eb6fcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_5 0xac8eece2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_6 0xd5dd0678UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE_7 0x2c047444UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_0 != 0x19bd06deUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_1 != 0x1f489c0aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_2 != 0x162ae613UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_3 != 0xf35eb18bUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_4 != 0x54207bc8UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_5 != 0xa797a5f7UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_6 != 0x5005436dUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_7 != 0xdf0f0f3eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_0 0x19bd06deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_1 0x1f489c0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_2 0x162ae613UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_3 0xf35eb18bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_4 0x54207bc8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_5 0xa797a5f7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_6 0x5005436dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY_7 0xdf0f0f3eUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_0 != 0x1bb4e74eUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_1 != 0x6c6cf3d8UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_2 != 0x7dd996e1UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_3 != 0xd35655c1UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_4 != 0xa59626abUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_5 != 0xf0b3894cUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_6 != 0xdd6db5b2UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_7 != 0x003d8d7dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_0 0x1bb4e74eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_1 0x6c6cf3d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_2 0x7dd996e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_3 0xd35655c1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_4 0xa59626abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_5 0xf0b3894cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_6 0xdd6db5b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION_7 0x003d8d7dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_0 != 0xeb556c67UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_1 != 0xa11d8773UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_2 != 0x66a40b0cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_3 != 0xf7ddb763UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_4 != 0x06533589UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_5 != 0xbf724a05UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_6 != 0x67d91c53UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_7 != 0xbd962e6dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_0 0xeb556c67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_1 0xa11d8773UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_2 0x66a40b0cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_3 0xf7ddb763UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_4 0x06533589UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_5 0xbf724a05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_6 0x67d91c53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND_7 0xbd962e6dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_0 != 0x109e7d70UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_1 != 0x00c1a33bUL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_2 != 0x07ddd29aUL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_3 != 0x78884b00UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_4 != 0xa1024930UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_5 != 0x205b2230UL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_6 != 0xe3b5b77cUL ||                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_7 != 0xfc317191UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_0 0x109e7d70UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_1 0x00c1a33bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_2 0x07ddd29aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_3 0x78884b00UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_4 0xa1024930UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_5 0x205b2230UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_6 0xe3b5b77cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE_7 0xfc317191UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_0 != 0x9efceb69UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_1 != 0x6890565aUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_2 != 0x47dfefb7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_3 != 0xb17c18a7UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_4 != 0x30dc0455UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_5 != 0xb4ddb182UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_6 != 0x5b585a20UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_7 != 0x406cea56UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_0 0x9efceb69UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_1 0x6890565aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_2 0x47dfefb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_3 0xb17c18a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_4 0x30dc0455UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_5 0xb4ddb182UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_6 0x5b585a20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS_7 0x406cea56UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_0 != 0x5bf52875UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_1 != 0x6e75e535UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_2 != 0xaa7469c7UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_3 != 0xb360aa88UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_4 != 0xb0f92313UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_5 != 0xf076004fUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_6 != 0x448b3046UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_7 != 0x062ac25dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_0 0x5bf52875UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_1 0x6e75e535UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_2 0xaa7469c7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_3 0xb360aa88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_4 0xb0f92313UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_5 0xf076004fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_6 0x448b3046UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE_7 0x062ac25dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_0 != 0x340c3616UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_1 != 0xe374e8abUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_2 != 0xb66a6c10UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_3 != 0x59e83cb9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_4 != 0x6ca20930UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_5 != 0x1580979dUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_6 != 0x69a0ecfcUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_7 != 0x263beae1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_0 0x340c3616UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_1 0xe374e8abUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_2 0xb66a6c10UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_3 0x59e83cb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_4 0x6ca20930UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_5 0x1580979dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_6 0x69a0ecfcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP_7 0x263beae1UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_0 != 0x774dc84bUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_1 != 0xcf5bbd63UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_2 != 0xd1734be5UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_3 != 0xac730ca8UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_4 != 0x4518b6a2UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_5 != 0x3f0130ecUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_6 != 0xc2cbdec7UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_7 != 0xb30096c8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_0 0x774dc84bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_1 0xcf5bbd63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_2 0xd1734be5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_3 0xac730ca8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_4 0x4518b6a2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_5 0x3f0130ecUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_6 0xc2cbdec7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_ACKNOWLEDGMENT_7 0xb30096c8UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_Acknowledgment_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest const* request,
                                                               roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse* response)
{
    unsigned char input[132], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_Acknowledgment_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_Acknowledgment_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_AcknowledgmentResponse_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_0 != 0x189a41f1UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_1 != 0x06095298UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_2 != 0xc2f14760UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_3 != 0xebc098d8UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_4 != 0xf22286d9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_5 != 0x91154bc3UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_6 != 0xa58b28f9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_7 != 0xa0562d2cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_0 0x189a41f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_1 0x06095298UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_2 0xc2f14760UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_3 0xebc098d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_4 0xf22286d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_5 0x91154bc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_6 0xa58b28f9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEBUILDING_7 0xa0562d2cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuilding_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest const* request,
                                                               roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ChangeBuilding_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_ChangeBuilding_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_ChangeBuildingResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_0 != 0xb1ed8016UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_1 != 0x7e62b230UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_2 != 0xb05fa521UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_3 != 0xd1caf636UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_4 != 0x235abc63UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_5 != 0x39890dc9UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_6 != 0x4825f232UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_7 != 0x71ef0b3cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_0 0xb1ed8016UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_1 0x7e62b230UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_2 0xb05fa521UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_3 0xd1caf636UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_4 0x235abc63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_5 0x39890dc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_6 0x4825f232UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGEMAP_7 0x71ef0b3cUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ChangeMap_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest const* request,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse* response)
{
    unsigned char input[480], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_encode(request, input, 480, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ChangeMap_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest* request)
{
    unsigned char output[488];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ChangeMap_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_ChangeMapResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_0 != 0x9e397bdfUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_1 != 0x13f6a447UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_2 != 0x65497028UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_3 != 0x3b6dee63UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_4 != 0x75a6a240UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_5 != 0xd6da5544UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_6 != 0xe1d30c18UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_7 != 0x6a89ee39UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_0 0x9e397bdfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_1 0x13f6a447UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_2 0x65497028UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_3 0x3b6dee63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_4 0x75a6a240UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_5 0xd6da5544UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_6 0xe1d30c18UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_CHANGESYNCMAP_7 0x6a89ee39UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMap_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest const* request,
                                                              roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse* response)
{
    unsigned char input[2728], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_encode(request, input, 2728, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMap_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest* request)
{
    unsigned char output[2736];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMap_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_ChangeSyncMapResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_0 != 0x4eb4953bUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_1 != 0x4afb1192UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_2 != 0x80077816UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_3 != 0x42ff8359UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_4 != 0xe2176669UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_5 != 0x745c887aUL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_6 != 0x4dcbf419UL ||                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_7 != 0xc2a636b4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_0 0x4eb4953bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_1 0x4afb1192UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_2 0x80077816UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_3 0x42ff8359UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_4 0xe2176669UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_5 0x745c887aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_6 0x4dcbf419UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_DISABLEEMERGENCY_7 0xc2a636b4UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergency_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest const* request,
                                                                 roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse* response)
{
    unsigned char input[9], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergency_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergency_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_DisableEmergencyResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_0 != 0x5b16908dUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_1 != 0x669db512UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_2 != 0xcbd30dd4UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_3 != 0xb66ffbbbUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_4 != 0xcbddf667UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_5 != 0x6a729250UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_6 != 0xfce9390cUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_7 != 0x87f1132dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_0 0x5b16908dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_1 0x669db512UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_2 0xcbd30dd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_3 0xb66ffbbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_4 0xcbddf667UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_5 0x6a729250UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_6 0xfce9390cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_EXECUTEPARKING_7 0x87f1132dUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_send(roswasmc_action_bundle* bundle,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal const* goal,
                                                                                         uint64_t* id)
{
    unsigned char input[281], output[8];
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
    if(roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_encode(goal, input, 281, &n))
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
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_feedback(roswasmc_action_bundle const* bundle,
                                                                   uint64_t id,
                                                                   roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_result(roswasmc_action_bundle* bundle,
                                                                                           uint64_t id,
                                                                                           uint8_t* kind,
                                                                                           roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* id,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal* goal)
{
    unsigned char output[289];
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_respond_feedback(roswasmc_capability const* cap,
                                                                           uint64_t id,
                                                                           roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_navigation_msgs_ExecuteParking_respond_result(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         uint8_t kind,
                                                                         roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_ExecuteParkingResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_0 != 0xaa588273UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_1 != 0x296ffdffUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_2 != 0xcbaed3faUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_3 != 0x3e15323aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_4 != 0x134d5c4bUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_5 != 0x5c00ab28UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_6 != 0x967ef4a0UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_7 != 0x3edace50UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_0 0xaa588273UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_1 0x296ffdffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_2 0xcbaed3faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_3 0x3e15323aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_4 0x134d5c4bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_5 0x5c00ab28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_6 0x967ef4a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_FINALAPPROACHPOSE_7 0x3edace50UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPose_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest const* request,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse* response)
{
    unsigned char input[56], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPose_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPose_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_FinalApproachPoseResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_0 != 0x2724cee3UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_1 != 0x784c1486UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_2 != 0x00d47945UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_3 != 0x06a42424UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_4 != 0x665ab28bUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_5 != 0x41cbf8ffUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_6 != 0xe3719657UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_7 != 0x3b0db07fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_0 0x2724cee3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_1 0x784c1486UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_2 0x00d47945UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_3 0x06a42424UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_4 0x665ab28bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_5 0x41cbf8ffUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_6 0xe3719657UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETMAPCONFIGURATION_7 0x3b0db07fUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfiguration_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest const* request,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse* response)
{
    unsigned char input[1], output[15953];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 15953);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 15953 || roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfiguration_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_GetMapConfiguration_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse const* response)
{
    unsigned char input[15961];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_GetMapConfigurationResponse_encode(response, input + 8, 15953, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_0 != 0xc9aae29cUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_1 != 0x97655d07UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_2 != 0x6c5281c8UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_3 != 0xe73d20d6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_4 != 0xeb8c1ef7UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_5 != 0xb9f023beUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_6 != 0xc7695317UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_7 != 0x83bcd70dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_0 0xc9aae29cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_1 0x97655d07UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_2 0x6c5281c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_3 0xe73d20d6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_4 0xeb8c1ef7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_5 0xb9f023beUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_6 0xc7695317UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETNODES_7 0x83bcd70dUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetNodes_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest const* request,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetNodes_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GetNodesRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetNodes_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_GetNodesResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_0 != 0x37d6233bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_1 != 0xda1632ccUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_2 != 0xdbca3f03UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_3 != 0xe58dc42cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_4 != 0x67f01630UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_5 != 0x458ffe4aUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_6 != 0x298e4f39UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_7 != 0x061e0e65UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_0 0x37d6233bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_1 0xda1632ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_2 0xdbca3f03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_3 0xe58dc42cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_4 0x67f01630UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_5 0x458ffe4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_6 0x298e4f39UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETPOI_7 0x061e0e65UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetPOI_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest const* request,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse* response)
{
    unsigned char input[1], output[1664];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1664);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1664 || roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetPOI_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GetPOIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetPOI_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse const* response)
{
    unsigned char input[1672];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_GetPOIResponse_encode(response, input + 8, 1664, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_0 != 0x63b94222UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_1 != 0x541b3abaUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_2 != 0x0bb4382dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_3 != 0x0dcfb750UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_4 != 0x481f62b3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_5 != 0x97c4c721UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_6 != 0x519e0155UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_7 != 0x74805d96UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_0 0x63b94222UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_1 0x541b3abaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_2 0x0bb4382dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_3 0x0dcfb750UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_4 0x481f62b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_5 0x97c4c721UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_6 0x519e0155UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GETSUBMAP_7 0x74805d96UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetSubMap_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest const* request,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetSubMap_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GetSubMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GetSubMap_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_GetSubMapResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_0 != 0x53d2ea99UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_1 != 0xd70336f5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_2 != 0xae15f0a5UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_3 != 0xe68daa3fUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_4 != 0x3db75badUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_5 != 0x5293b98cUL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_6 != 0x61f3b317UL ||                                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_7 != 0x8dae9ca6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_0 0x53d2ea99UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_1 0xd70336f5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_2 0xae15f0a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_3 0xe68daa3fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_4 0x3db75badUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_5 0x5293b98cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_6 0x61f3b317UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTO_7 0x8dae9ca6UL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_GoTo_send(roswasmc_action_bundle* bundle, roswasmc_bounded_1_pal_navigation_msgs_GoToGoal const* goal, uint64_t* id)
{
    unsigned char input[200], output[8];
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
    if(roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_encode(goal, input, 200, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoTo_feedback(roswasmc_action_bundle const* bundle,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback* feedback)
{
    unsigned char input[8], output[208];
    roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoTo_result(roswasmc_action_bundle* bundle,
                                                                                 uint64_t id,
                                                                                 uint8_t* kind,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_GoToResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_GoToResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_GoToResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_GoTo_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_navigation_msgs_GoToGoal* goal)
{
    unsigned char output[208];
    roswasmc_bounded_1_pal_navigation_msgs_GoToGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GoToGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoTo_respond_feedback(roswasmc_capability const* cap,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback const* value)
{
    unsigned char input[209];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_GoToFeedback_encode(value, input + 9, 200, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoTo_respond_result(roswasmc_capability const* cap,
                                                                                         uint64_t id,
                                                                                         uint8_t kind,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_GoToResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_GoToResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_0 != 0xf1cf139fUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_1 != 0xffaa93f2UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_2 != 0x144aac81UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_3 != 0xef1d153eUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_4 != 0x5855c89eUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_5 != 0xec384702UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_6 != 0x9125b953UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_7 != 0x982877fcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_0 0xf1cf139fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_1 0xffaa93f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_2 0x144aac81UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_3 0xef1d153eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_4 0x5855c89eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_5 0xec384702UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_6 0x9125b953UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_GOTOPOI_7 0x982877fcUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_send(roswasmc_action_bundle* bundle,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal const* goal,
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
    if(roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_encode(goal, input, 132, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_feedback(roswasmc_action_bundle const* bundle,
                                                                                      uint64_t id,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback* feedback)
{
    unsigned char input[8], output[208];
    roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_result(roswasmc_action_bundle* bundle,
                                                                                    uint64_t id,
                                                                                    uint8_t* kind,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal* goal)
{
    unsigned char output[140];
    roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_GoToPOIGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_respond_feedback(roswasmc_capability const* cap,
                                                                    uint64_t id,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback const* value)
{
    unsigned char input[209];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_GoToPOIFeedback_encode(value, input + 9, 200, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_GoToPOI_respond_result(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            uint8_t kind,
                                                                                            roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_GoToPOIResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_0 != 0xecbe4901UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_1 != 0x6ce46565UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_2 != 0xafdb1711UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_3 != 0x88ffe6b2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_4 != 0xb92dce29UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_5 != 0xa9826fa0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_6 != 0xa21ccd1fUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_7 != 0x9ae7739bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_0 0xecbe4901UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_1 0x6ce46565UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_2 0xafdb1711UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_3 0x88ffe6b2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_4 0xb92dce29UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_5 0xa9826fa0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_6 0xa21ccd1fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYPRIORITY_7 0x9ae7739bUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_send(roswasmc_action_bundle* bundle,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal const* goal,
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
    if(roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_encode(goal, input, 0, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_feedback(roswasmc_action_bundle const* bundle,
                                                                                          uint64_t id,
                                                                                          roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_result(roswasmc_action_bundle* bundle,
                                                                                        uint64_t id,
                                                                                        uint8_t* kind,
                                                                                        roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* id,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_respond_feedback(roswasmc_capability const* cap,
                                                                        uint64_t id,
                                                                        roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_navigation_msgs_JoyPriority_respond_result(roswasmc_capability const* cap,
                                                                      uint64_t id,
                                                                      uint8_t kind,
                                                                      roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_JoyPriorityResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_0 != 0xbebee520UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_1 != 0x9b0f580dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_2 != 0x139e26c3UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_3 != 0xcfbe06ebUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_4 != 0x8ba2142eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_5 != 0x0d2152bcUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_6 != 0x0f0222bdUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_7 != 0x7686c67dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_0 0xbebee520UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_1 0x9b0f580dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_2 0x139e26c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_3 0xcfbe06ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_4 0x8ba2142eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_5 0x0d2152bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_6 0x0f0222bdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_JOYTURBO_7 0x7686c67dUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_send(roswasmc_action_bundle* bundle,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal const* goal,
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
    if(roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_encode(goal, input, 0, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_feedback(roswasmc_action_bundle const* bundle,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_result(roswasmc_action_bundle* bundle,
                                                                                     uint64_t id,
                                                                                     uint8_t* kind,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* id,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal* goal)
{
    unsigned char output[8];
    roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_JoyTurboGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_respond_feedback(roswasmc_capability const* cap,
                                                                     uint64_t id,
                                                                     roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_JoyTurboFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_JoyTurbo_respond_result(roswasmc_capability const* cap,
                                                                                             uint64_t id,
                                                                                             uint8_t kind,
                                                                                             roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_JoyTurboResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_0 != 0x35160bbaUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_1 != 0xe74b7d5dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_2 != 0x9cac84a1UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_3 != 0x73299a59UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_4 != 0x3ce4a60aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_5 != 0x56172930UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_6 != 0x6f6d00fdUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_7 != 0x6b2b0805UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_0 0x35160bbaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_1 0xe74b7d5dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_2 0x9cac84a1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_3 0x73299a59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_4 0x3ce4a60aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_5 0x56172930UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_6 0x6f6d00fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_LISTMAPS_7 0x6b2b0805UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ListMaps_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest const* request,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse* response)
{
    unsigned char input[1], output[2117];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2117);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2117 || roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ListMaps_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_ListMapsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_ListMaps_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse const* response)
{
    unsigned char input[2125];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_ListMapsResponse_encode(response, input + 8, 2117, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_0 != 0x2c7da1ceUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_1 != 0xc9d5a2e8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_2 != 0xe7433b0dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_3 != 0x219f13faUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_4 != 0x57d3dccbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_5 != 0x3c2a7bedUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_6 != 0xc53a93fbUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_7 != 0x52e01b5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_0 0x2c7da1ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_1 0xc9d5a2e8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_2 0xe7433b0dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_3 0x219f13faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_4 0x57d3dccbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_5 0x3c2a7bedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_6 0xc53a93fbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_RENAMEMAP_7 0x52e01b5dUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_RenameMap_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest const* request,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse* response)
{
    unsigned char input[264], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_RenameMap_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_RenameMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_RenameMap_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_RenameMapResponse_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_0 != 0x5589451aUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_1 != 0x4e360869UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_2 != 0xc8070564UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_3 != 0xae4f7911UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_4 != 0x0fe23decUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_5 != 0x2a6ec5acUL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_6 != 0xde443a94UL ||                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_7 != 0x0b766741UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_0 0x5589451aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_1 0x4e360869UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_2 0xc8070564UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_3 0xae4f7911UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_4 0x0fe23decUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_5 0x2a6ec5acUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_6 0xde443a94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAFETYZONE_7 0x0b766741UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SafetyZone_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest const* request,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse* response)
{
    unsigned char input[28], output[34];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_encode(request, input, 28, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 34);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 34 || roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SafetyZone_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest* request)
{
    unsigned char output[36];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_SafetyZone_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse const* response)
{
    unsigned char input[42];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_SafetyZoneResponse_encode(response, input + 8, 34, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_0 != 0xa4beb862UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_1 != 0xe774aee3UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_2 != 0x7a5447ebUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_3 != 0xcf96e9b8UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_4 != 0x8408bfb4UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_5 != 0x4df6a17aUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_6 != 0x808a53eaUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_7 != 0x1dff3d00UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_0 0xa4beb862UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_1 0xe774aee3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_2 0x7a5447ebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_3 0xcf96e9b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_4 0x8408bfb4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_5 0x4df6a17aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_6 0x808a53eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SAVEMAP_7 0x1dff3d00UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SaveMap_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest const* request,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse* response)
{
    unsigned char input[132], output[397];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 397);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 397 || roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SaveMap_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_SaveMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SaveMap_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse const* response)
{
    unsigned char input[405];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_SaveMapResponse_encode(response, input + 8, 397, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_0 != 0xf419388eUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_1 != 0x82df4541UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_2 != 0x398ff912UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_3 != 0xb65ae4aaUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_4 != 0x41d17d73UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_5 != 0x19447477UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_6 != 0x1e73f991UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_7 != 0x5cc50608UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_0 0xf419388eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_1 0x82df4541UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_2 0x398ff912UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_3 0xb65ae4aaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_4 0x41d17d73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_5 0x19447477UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_6 0x1e73f991UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETMAPCONFIGURATION_7 0x5cc50608UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfiguration_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest const* request,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse* response)
{
    unsigned char input[15953], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_encode(request, input, 15953, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfiguration_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest* request)
{
    unsigned char output[15961];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_SetMapConfiguration_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_SetMapConfigurationResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_0 != 0x3861a256UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_1 != 0x989901d9UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_2 != 0x6b75c9c5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_3 != 0x74c2a19cUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_4 != 0x3a6ef2a5UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_5 != 0x0a24d5e4UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_6 != 0x44c22dc0UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_7 != 0xf54b2160UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_0 0x3861a256UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_1 0x989901d9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_2 0x6b75c9c5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_3 0x74c2a19cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_4 0x3a6ef2a5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_5 0x0a24d5e4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_6 0x44c22dc0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETPOI_7 0xf54b2160UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SetPOI_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest const* request,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse* response)
{
    unsigned char input[1664], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_encode(request, input, 1664, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SetPOI_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest* request)
{
    unsigned char output[1672];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_SetPOIRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SetPOI_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_SetPOIResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_0 != 0xbffc6223UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_1 != 0xf4bc41e1UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_2 != 0x8926754bUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_3 != 0xb28bdfc9UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_4 != 0xcaa007eaUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_5 != 0xabe30043UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_6 != 0x404d8e05UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_7 != 0x5443a808UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_0 0xbffc6223UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_1 0xf4bc41e1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_2 0x8926754bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_3 0xb28bdfc9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_4 0xcaa007eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_5 0xabe30043UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_6 0x404d8e05UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_SETSUBMAPFLOOR_7 0x5443a808UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloor_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest const* request,
                                                               roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloor_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloor_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_SetSubMapFloorResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_0 != 0x0d857d7fUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_1 != 0x12b75bbdUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_2 != 0x14e2ba9fUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_3 != 0x4b719c83UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_4 != 0xa86b4729UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_5 != 0x280c588cUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_6 != 0xa7e98daeUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_7 != 0xdaaf939fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_0 0x0d857d7fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_1 0x12b75bbdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_2 0x14e2ba9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_3 0x4b719c83UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_4 0xa86b4729UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_5 0x280c588cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_6 0xa7e98daeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALLOCRECOGNIZE_7 0xdaaf939fUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognize_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest const* request,
                                                                   roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse* response)
{
    unsigned char input[1], output[497];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 497);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 497 || roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognize_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognize_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse const* response)
{
    unsigned char input[505];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_pal_navigation_msgs_VisualLocRecognizeResponse_encode(response, input + 8, 497, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_0 != 0x3d943eebUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_1 != 0xda1a4563UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_2 != 0xbc909daeUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_3 != 0xf157b27bUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_4 != 0xa38097f4UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_5 != 0x5d5cecf5UL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_6 != 0xb440991dUL ||                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_7 != 0x8245aebfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_0 0x3d943eebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_1 0xda1a4563UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_2 0xbc909daeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_3 0xf157b27bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_4 0xa38097f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_5 0x5d5cecf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_6 0xb440991dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_NAVIGATION_MSGS_VISUALTRAINING_7 0x8245aebfUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_send(roswasmc_action_bundle* bundle,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal const* goal,
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
    if(roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_encode(goal, input, 133, &n))
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
    roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_feedback(roswasmc_action_bundle const* bundle,
                                                                   uint64_t id,
                                                                   roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_result(roswasmc_action_bundle* bundle,
                                                                                           uint64_t id,
                                                                                           uint8_t* kind,
                                                                                           roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult next = {0};
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
       roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_decode(output + 9, (size_t)r.length - 9, &next))
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
static inline roswasmc_result roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* id,
                                                                                         roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal* goal)
{
    unsigned char output[141];
    roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingGoal_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_respond_feedback(roswasmc_capability const* cap,
                                                                           uint64_t id,
                                                                           roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingFeedback_encode(value, input + 9, 0, &n))
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
    roswasmc_bounded_1_pal_navigation_msgs_VisualTraining_respond_result(roswasmc_capability const* cap,
                                                                         uint64_t id,
                                                                         uint8_t kind,
                                                                         roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_navigation_msgs_VisualTrainingResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_0 != 0xd98afbf8UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_1 != 0x1480f304UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_2 != 0xf8217018UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_3 != 0xc2b9ba25UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_4 != 0xd98f2aefUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_5 != 0x0247f719UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_6 != 0x5df21318UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_7 != 0xa00303f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_0 0xd98afbf8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_1 0x1480f304UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_2 0xf8217018UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_3 0xc2b9ba25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_4 0xd98f2aefUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_5 0x0247f719UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_6 0x5df21318UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING_7 0xa00303f5UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_0 != 0x04231b7eUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_1 != 0x50f06ef9UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_2 != 0xface220dUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_3 != 0xb7b4c2f4UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_4 != 0x39590628UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_5 != 0x920bc4c9UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_6 != 0x7f2dfbabUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_7 != 0x1c9cb792UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_0 0x04231b7eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_1 0x50f06ef9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_2 0xface220dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_3 0xb7b4c2f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_4 0x39590628UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_5 0x920bc4c9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_6 0x7f2dfbabUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING_7 0x1c9cb792UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_0 != 0x0ab677e2UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_1 != 0x3e16237cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_2 != 0xe2073bd5UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_3 != 0xa5c30402UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_4 != 0xa2aad840UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_5 != 0xc8a27bc7UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_6 != 0xb073dfa6UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_7 != 0x46291489UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_0 0x0ab677e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_1 0x3e16237cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_2 0xe2073bd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_3 0xa5c30402UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_4 0xa2aad840UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_5 0xc8a27bc7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_6 0xb073dfa6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION_7 0x46291489UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_0 != 0xefb735d3UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_1 != 0xffa1f054UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_2 != 0x0a28c32fUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_3 != 0x7be21b5fUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_4 != 0x8e01272eUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_5 != 0xd95405c8UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_6 != 0x67a3af77UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_7 != 0xba3dab70UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_0 0xefb735d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_1 0xffa1f054UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_2 0x0a28c32fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_3 0x7be21b5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_4 0x8e01272eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_5 0xd95405c8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_6 0x67a3af77UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART_7 0xba3dab70UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_0 != 0x52dd7298UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_1 != 0xdf63342bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_2 != 0x487e5730UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_3 != 0x18d5c76aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_4 != 0xa9856f11UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_5 != 0x296fefd7UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_6 != 0x97e23298UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_7 != 0x6419fb1aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_0 0x52dd7298UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_1 0xdf63342bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_2 0x487e5730UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_3 0x18d5c76aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_4 0xa9856f11UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_5 0x296fefd7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_6 0x97e23298UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP_7 0x6419fb1aUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_0 != 0x75758215UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_1 != 0xdf0753eeUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_2 != 0xa4551ec3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_3 != 0x7b6c3d53UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_4 != 0xcbf4f546UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_5 != 0x9b2cea84UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_6 != 0xaccb6a19UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_7 != 0xf9c8c0ceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_0 0x75758215UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_1 0xdf0753eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_2 0xa4551ec3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_3 0x7b6c3d53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_4 0xcbf4f546UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_5 0x9b2cea84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_6 0xaccb6a19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART_7 0xf9c8c0ceUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_0 != 0x3c6d7bbcUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_1 != 0xfdf94a28UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_2 != 0x5181c431UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_3 != 0xb89c882fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_4 != 0x0d2979eeUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_5 != 0x3bab3b89UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_6 != 0xb6910ee6UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_7 != 0x78b45ab8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_0 0x3c6d7bbcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_1 0xfdf94a28UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_2 0x5181c431UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_3 0xb89c882fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_4 0x0d2979eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_5 0x3bab3b89UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_6 0xb6910ee6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP_7 0x78b45ab8UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_0 != 0xb47389c0UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_1 != 0xf2071959UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_2 != 0x262ee87bUL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_3 != 0xd0d92166UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_4 != 0xaf664e39UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_5 != 0x09335f32UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_6 != 0x32fa7dd4UL ||                                                            \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_7 != 0x087e2363UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_0 0xb47389c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_1 0xf2071959UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_2 0x262ee87bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_3 0xd0d92166UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_4 0xaf664e39UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_5 0x09335f32UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_6 0x32fa7dd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL_7 0x087e2363UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_0 != 0xa9679e43UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_1 != 0x180205b4UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_2 != 0x90d51ad9UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_3 != 0xf1b458f3UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_4 != 0xfc69e37dUL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_5 != 0x7b56b3b5UL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_6 != 0x9031703eUL ||                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_7 != 0x4e8c89c5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_0 0xa9679e43UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_1 0x180205b4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_2 0x90d51ad9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_3 0xf1b458f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_4 0xfc69e37dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_5 0x7b56b3b5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_6 0x9031703eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE_7 0x4e8c89c5UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_0 != 0x5f57e3e7UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_1 != 0x6c6f9b7aUL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_2 != 0x52b29403UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_3 != 0x3e688ae0UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_4 != 0x29815e12UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_5 != 0x9b8327d2UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_6 != 0xd2574313UL ||                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_7 != 0x8894b4b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_0 0x5f57e3e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_1 0x6c6f9b7aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_2 0x52b29403UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_3 0x3e688ae0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_4 0x29815e12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_5 0x9b8327d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_6 0xd2574313UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE_7 0x8894b4b8UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_0 != 0xc3f86477UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_1 != 0xae246328UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_2 != 0x82749708UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_3 != 0xbc33c64dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_4 != 0xe2c4471eUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_5 != 0x8ec5c742UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_6 != 0xc2e58b86UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_7 != 0x54587741UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_0 0xc3f86477UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_1 0xae246328UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_2 0x82749708UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_3 0xbc33c64dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_4 0xe2c4471eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_5 0x8ec5c742UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_6 0xc2e58b86UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET_7 0x54587741UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_0 != 0x5f3473d5UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_1 != 0x1a4460a0UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_2 != 0x4475feceUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_3 != 0x3dcc2384UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_4 != 0x46043d3dUL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_5 != 0x088d6ff9UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_6 != 0x0dfb0015UL ||                                                                   \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_7 != 0x16a2ed83UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_0 0x5f3473d5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_1 0x1a4460a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_2 0x4475feceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_3 0x3dcc2384UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_4 0x46043d3dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_5 0x088d6ff9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_6 0x0dfb0015UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT_7 0x16a2ed83UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_0 != 0xc8cc5fc3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_1 != 0xc293f2deUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_2 != 0xddb74297UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_3 != 0xa1de9e9fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_4 != 0xd66b06e5UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_5 != 0x6c8d1924UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_6 != 0x18ad2b54UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_7 != 0x239d0704UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_0 0xc8cc5fc3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_1 0xc293f2deUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_2 0xddb74297UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_3 0xa1de9e9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_4 0xd66b06e5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_5 0x6c8d1924UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_6 0x18ad2b54UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER_7 0x239d0704UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_0 != 0x2b116746UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_1 != 0xa4cbc8caUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_2 != 0x4a986126UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_3 != 0x3d737a52UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_4 != 0x048c450fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_5 != 0x397ec7daUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_6 != 0xf55688c2UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_7 != 0x4178d8e1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_0 0x2b116746UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_1 0xa4cbc8caUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_2 0x4a986126UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_3 0x3d737a52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_4 0x048c450fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_5 0x397ec7daUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_6 0xf55688c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS_7 0x4178d8e1UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_0 != 0xaeca4c9aUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_1 != 0x9635aab5UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_2 != 0x133681f2UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_3 != 0x456c6ef3UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_4 != 0x331dc911UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_5 != 0xf20feeddUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_6 != 0x1b02beb9UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_7 != 0x17b587adUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_0 0xaeca4c9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_1 0x9635aab5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_2 0x133681f2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_3 0x456c6ef3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_4 0x331dc911UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_5 0xf20feeddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_6 0x1b02beb9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WEB_MSGS_GETUSERINPUT_7 0x17b587adUL

/** @brief Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result roswasmc_bounded_1_pal_web_msgs_GetUserInput_send(roswasmc_action_bundle* bundle,
                                                                                roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal const* goal,
                                                                                uint64_t* id)
{
    unsigned char input[7167], output[8];
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
    if(roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_encode(goal, input, 7167, &n))
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
static inline roswasmc_result roswasmc_bounded_1_pal_web_msgs_GetUserInput_feedback(roswasmc_action_bundle const* bundle,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback next = {0};
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
       roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** @brief A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result roswasmc_bounded_1_pal_web_msgs_GetUserInput_result(roswasmc_action_bundle* bundle,
                                                                                  uint64_t id,
                                                                                  uint8_t* kind,
                                                                                  roswasmc_bounded_1_pal_web_msgs_GetUserInputResult* result)
{
    unsigned char input[8], output[1201];
    roswasmc_bounded_1_pal_web_msgs_GetUserInputResult next = {0};
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
       roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_decode(output + 9, (size_t)r.length - 9, &next))
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
    roswasmc_bounded_1_pal_web_msgs_GetUserInput_poll(roswasmc_capability const* cap, uint64_t* id, roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal* goal)
{
    unsigned char output[7175];
    roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_pal_web_msgs_GetUserInputGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** @brief Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_web_msgs_GetUserInput_respond_feedback(roswasmc_capability const* cap,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_pal_web_msgs_GetUserInputFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_pal_web_msgs_GetUserInput_respond_result(roswasmc_capability const* cap,
                                                                                          uint64_t id,
                                                                                          uint8_t kind,
                                                                                          roswasmc_bounded_1_pal_web_msgs_GetUserInputResult const* value)
{
    unsigned char input[1201];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_pal_web_msgs_GetUserInputResult_encode(value, input + 9, 1192, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_0 != 0xf76d4b3eUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_1 != 0x57108eedUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_2 != 0x53e838aeUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_3 != 0xece29cf5UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_4 != 0xb2d64d33UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_5 != 0x4940e0d0UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_6 != 0x6468f995UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_7 != 0x364e10cfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_0 0xf76d4b3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_1 0x57108eedUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_2 0x53e838aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_3 0xece29cf5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_4 0xb2d64d33UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_5 0x4940e0d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_6 0x6468f995UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP_7 0x364e10cfUL

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
#endif
