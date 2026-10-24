/**
 * @file bounded_interfaces.h
 * @brief Full fourier c codecs and original record metadata.
 * @details Complete fourier ros1_aurora_bridge_v1 values in c. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
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
#include <platform/fourier/c/ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_records.h>
#include <platform/ros/c/roswasm/action_bundle.h>

/** Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller
 * responsibility. */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse* response)
{
    unsigned char input[9372], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_encode(request, input, 9372, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest* request)
{
    unsigned char output[9380];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMove_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse* response)
{
    unsigned char input[140], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseData_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const* request,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianState_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const* request,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse* response)
{
    unsigned char input[140], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactData_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const* request,
                                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmName_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmState_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const* request,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse* response)
{
    unsigned char input[140], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionState_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const* request,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfg_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const* request,
                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupState_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse* response)
{
    unsigned char input[8], output[14536];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 14536);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 14536 || roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshot_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const* response)
{
    unsigned char input[14544];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_encode(response, input + 8, 14536, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const* request,
                                                             roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse* response)
{
    unsigned char input[8], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPose_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const* request,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmName_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const* request,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmState_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const* request,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySource_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const* request,
                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceName_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmState_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const* request,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse* response)
{
    unsigned char input[15572], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_encode(request, input, 15572, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest* request)
{
    unsigned char output[15580];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommand_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const* request,
                                                              roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse* response)
{
    unsigned char input[10384], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_encode(request, input, 10384, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest* request)
{
    unsigned char output[10392];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPd_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const* request,
                                                             roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse* response)
{
    unsigned char input[32], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPose_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const* request,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmState_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const* request,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse* response)
{
    unsigned char input[40], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_encode(request, input, 40, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest* request)
{
    unsigned char output[48];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocity_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const* request,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySource_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const* request,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse* response)
{
    unsigned char input[1084], output[137];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_encode(request, input, 1084, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 137);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 137 || roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest* request)
{
    unsigned char output[1092];
    roswasmc_result r;
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionComplete_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const* response)
{
    unsigned char input[145];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_encode(response, input + 8, 137, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
