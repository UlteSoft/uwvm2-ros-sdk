/**
 * @file bounded_interfaces.h
 * @brief Full agibot c codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v0_8_1_main values in c. 72 original records retain 227 fields and 55 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/agibot/en_US/catalog/.
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
#include <platform/agibot/c/ros2/agibot-ros2-sdk-v0-8-1-main-complete/bounded_records.h>
#include <platform/ros/c/roswasm/action_bundle.h>

/** Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller
 * responsibility. */
inline static int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const* request,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response* response)
{
    unsigned char input[8], output[2712];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 2712);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 2712 || roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const* response)
{
    unsigned char input[2720];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_encode(response, input + 8, 2712, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const* request,
                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response* response)
{
    unsigned char input[8], output[168];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 168);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 168 || roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const* response)
{
    unsigned char input[176];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_encode(response, input + 8, 168, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const* request,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response* response)
{
    unsigned char input[8], output[154];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 154);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 154 || roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const* response)
{
    unsigned char input[162];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_encode(response, input + 8, 154, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const* request,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response* response)
{
    unsigned char input[8], output[156];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 156);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 156 || roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* response)
{
    unsigned char input[164];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_encode(response, input + 8, 156, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetMute_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const* request,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response* response)
{
    unsigned char input[8], output[153];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 153);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 153 || roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetMute_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const* response)
{
    unsigned char input[161];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_encode(response, input + 8, 153, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const* request,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response* response)
{
    unsigned char input[8], output[156];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_encode(request, input, 8, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 156);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 156 || roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const* response)
{
    unsigned char input[164];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_encode(response, input + 8, 156, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const* request,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response* response)
{
    unsigned char input[12], output[18];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_encode(request, input, 12, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 18);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 18 || roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const* response)
{
    unsigned char input[26];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_encode(response, input + 8, 18, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const* request,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response* response)
{
    unsigned char input[14], output[285];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_encode(request, input, 14, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 285);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 285 || roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request* request)
{
    unsigned char output[22];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const* response)
{
    unsigned char input[293];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_encode(response, input + 8, 285, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const* request,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response* response)
{
    unsigned char input[414], output[690];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_encode(request, input, 414, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 690);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 690 || roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request* request)
{
    unsigned char output[422];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const* response)
{
    unsigned char input[698];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_encode(response, input + 8, 690, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const* request,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response* response)
{
    unsigned char input[410], output[690];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_encode(request, input, 410, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 690);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 690 || roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request* request)
{
    unsigned char output[418];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const* response)
{
    unsigned char input[698];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_encode(response, input + 8, 690, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const* request,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response* response)
{
    unsigned char input[145], output[285];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_encode(request, input, 145, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 285);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 285 || roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request* request)
{
    unsigned char output[153];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const* response)
{
    unsigned char input[293];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_encode(response, input + 8, 285, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const* request,
                                                                     roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response* response)
{
    unsigned char input[544], output[152];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_encode(request, input, 544, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 152);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 152 || roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request* request)
{
    unsigned char output[552];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const* response)
{
    unsigned char input[160];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_encode(response, input + 8, 152, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const* request,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response* response)
{
    unsigned char input[144], output[152];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_encode(request, input, 144, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 152);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 152 || roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request* request)
{
    unsigned char output[152];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const* response)
{
    unsigned char input[160];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_encode(response, input + 8, 152, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const* request,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response* response)
{
    unsigned char input[152], output[28];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_encode(request, input, 152, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 28);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 28 || roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request* request)
{
    unsigned char output[160];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const* response)
{
    unsigned char input[36];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_encode(response, input + 8, 28, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const* request,
                                                             roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response* response)
{
    unsigned char input[149], output[28];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_encode(request, input, 149, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 28);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 28 || roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request* request)
{
    unsigned char output[157];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const* response)
{
    unsigned char input[36];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_encode(response, input + 8, 28, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMute_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const* request,
                                                                             roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response* response)
{
    unsigned char input[9], output[153];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_encode(request, input, 9, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 153);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 153 || roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetMute_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const* response)
{
    unsigned char input[161];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_encode(response, input + 8, 153, &n))
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const* request,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response* response)
{
    unsigned char input[12], output[156];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_encode(request, input, 12, &n))
    {
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    }
    r = roswasmc_service_call(cap, input, n, output, 156);
    if(r.error)
    {
        return r;
    }
    if(!r.has_length || r.length > 156 || roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request next = {0};
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
       roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
inline static roswasmc_result roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const* response)
{
    unsigned char input[164];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_encode(response, input + 8, 156, &n))
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
