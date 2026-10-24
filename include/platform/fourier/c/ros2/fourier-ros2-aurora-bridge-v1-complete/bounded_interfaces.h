/**
 * @file bounded_interfaces.h
 * @brief Full fourier c codecs and original record metadata.
 * @details Complete fourier ros2_aurora_bridge_v1 values in c. 51 original records retain 138 fields and 28
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
#include <platform/fourier/c/ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_records.h>
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
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response* response)
{
    unsigned char input[9372], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_encode(request, input, 9372, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request* request)
{
    unsigned char output[9380];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response* response)
{
    unsigned char input[140], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const* request,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const* request,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response* response)
{
    unsigned char input[140], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const* request,
                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const* request,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response* response)
{
    unsigned char input[140], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_encode(request, input, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request* request)
{
    unsigned char output[148];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const* request,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const* request,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response* response)
{
    unsigned char input[272], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response* response)
{
    unsigned char input[8], output[14536];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 14536);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 14536 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const* response)
{
    unsigned char input[14544];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_encode(response, input + 8, 14536, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const* request,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response* response)
{
    unsigned char input[8], output[652];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 652);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 652 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const* response)
{
    unsigned char input[660];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_encode(response, input + 8, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const* request,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const* request,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const* request,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response* response)
{
    unsigned char input[8], output[140];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 140);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 140 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const* response)
{
    unsigned char input[148];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_encode(response, input + 8, 140, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const* request,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response* response)
{
    unsigned char input[8], output[268];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 268);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 268 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const* response)
{
    unsigned char input[276];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_encode(response, input + 8, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const* request,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response* response)
{
    unsigned char input[15572], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_encode(request, input, 15572, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request* request)
{
    unsigned char output[15580];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const* request,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response* response)
{
    unsigned char input[10384], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_encode(request, input, 10384, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request* request)
{
    unsigned char output[10392];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const* request,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response* response)
{
    unsigned char input[32], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_encode(request, input, 32, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request* request)
{
    unsigned char output[40];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const* request,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const* request,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response* response)
{
    unsigned char input[40], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_encode(request, input, 40, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request* request)
{
    unsigned char output[48];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const* request,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response* response)
{
    unsigned char input[12], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const* request,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response* response)
{
    unsigned char input[1084], output[137];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_encode(request, input, 1084, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 137);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 137 || roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request* request)
{
    unsigned char output[1092];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const* response)
{
    unsigned char input[145];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_encode(response, input + 8, 137, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
