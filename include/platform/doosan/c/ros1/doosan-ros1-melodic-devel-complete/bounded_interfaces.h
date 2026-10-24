/**
 * @file bounded_interfaces.h
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-melodic-devel-complete.ir.json
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
#include <doosan/c/ros1/doosan-ros1-melodic-devel-complete/bounded_records.h>
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

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlignAxis1_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis1Request const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis1Response* response)
{
    unsigned char input[170], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlignAxis1Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_encode(request, input, 170, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_AlignAxis1_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_AlignAxis1Request* request)
{
    unsigned char output[178];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlignAxis1Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlignAxis1_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_AlignAxis1Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlignAxis2_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis2Request const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis2Response* response)
{
    unsigned char input[50], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlignAxis2Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_AlignAxis2_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_AlignAxis2Request* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlignAxis2Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlignAxis2_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_AlignAxis2Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlterMotion_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_AlterMotionRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_AlterMotionResponse* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlterMotionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_AlterMotion_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_AlterMotionRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_AlterMotionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_AlterMotion_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_AlterMotionResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CalcCoord_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_CalcCoordRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_CalcCoordResponse* response)
{
    unsigned char input[195], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CalcCoordResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_encode(request, input, 195, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CalcCoord_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_CalcCoordRequest* request)
{
    unsigned char output[203];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CalcCoordRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CalcCoord_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_CalcCoordResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckForceCondition_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse* response)
{
    unsigned char input[18], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_encode(request, input, 18, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckForceCondition_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest* request)
{
    unsigned char output[26];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckForceCondition_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckMotion_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckMotionRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckMotionResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckMotionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CheckMotion_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_CheckMotionRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckMotionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckMotion_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_CheckMotionResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request const* request,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response* response)
{
    unsigned char input[99], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_encode(request, input, 99, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request* request)
{
    unsigned char output[107];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request const* request,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response* response)
{
    unsigned char input[67], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_encode(request, input, 67, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request* request)
{
    unsigned char output[75];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest const* request,
                                                                                      roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse* response)
{
    unsigned char input[67], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_encode(request, input, 67, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest* request)
{
    unsigned char output[75];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse* response)
{
    unsigned char input[531], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_encode(request, input, 531, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest* request)
{
    unsigned char output[539];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse* response)
{
    unsigned char input[308], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_encode(request, input, 308, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest* request)
{
    unsigned char output[316];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse* response)
{
    unsigned char input[340], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_encode(request, input, 340, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest* request)
{
    unsigned char output[348];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConnectRTControl_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConnectRTControl_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ConnectRTControl_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CoordTransform_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_CoordTransformRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_CoordTransformResponse* response)
{
    unsigned char input[50], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CoordTransformResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CoordTransform_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_CoordTransformRequest* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_CoordTransformRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_CoordTransform_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_CoordTransformResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DisconnectRTControl_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DrlPause_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlPauseRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlPauseResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlPauseResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_DrlPause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_DrlPauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlPauseRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_DrlPause_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_DrlPauseResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DrlResume_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_DrlResumeRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_DrlResumeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlResumeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_DrlResume_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_DrlResumeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlResumeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DrlResume_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_DrlResumeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DrlStart_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlStartRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlStartResponse* response)
{
    unsigned char input[261], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlStartResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_DrlStartRequest_encode(request, input, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DrlStartResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_DrlStart_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_DrlStartRequest* request)
{
    unsigned char output[269];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlStartRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DrlStartRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_DrlStart_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_DrlStartResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DrlStartResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_DrlStop_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_DrlStopRequest const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_DrlStopResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlStopResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_DrlStopRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_DrlStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_DrlStop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_DrlStopRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_DrlStopRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_DrlStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_DrlStop_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_DrlStopResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_DrlStopResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse* response)
{
    unsigned char input[38], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_encode(request, input, 38, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest* request)
{
    unsigned char output[46];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Fkin_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_dsr_msgs_FkinRequest const* request,
                                                                    roswasmc_bounded_1_dsr_msgs_FkinResponse* response)
{
    unsigned char input[49], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_FkinResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_FkinRequest_encode(request, input, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_FkinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Fkin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_FkinRequest* request)
{
    unsigned char output[57];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_FkinRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_FkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_Fkin_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_FkinResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_FkinResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetControlModeRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetControlModeResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetControlModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlMode_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetControlModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetControlModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlMode_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetControlModeResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlSpace_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlSpace_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetControlSpace_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const* request,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse* response)
{
    unsigned char input[1], output[9];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 9);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 9 || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse const* response)
{
    unsigned char input[17];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_encode(response, input + 8, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest const* request,
                                                                                      roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest const* request,
                                                             roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse* response)
{
    unsigned char input[1], output[2213];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2213);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2213 || roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse const* response)
{
    unsigned char input[2221];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_encode(response, input + 8, 2213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse* response)
{
    unsigned char input[1], output[2213];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2213);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2213 || roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse const* response)
{
    unsigned char input[2221];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_encode(response, input + 8, 2213, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest const* request,
                                                             roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest const* request,
                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDrlState_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetDrlState_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetDrlState_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetJointTorque_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse* response)
{
    unsigned char input[1], output[793];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 793);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 793 || roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse const* response)
{
    unsigned char input[801];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_encode(response, input + 8, 793, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetModbusInput_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse* response)
{
    unsigned char input[260], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetOrientationError_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse* response)
{
    unsigned char input[97], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_encode(request, input, 97, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetOrientationError_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest* request)
{
    unsigned char output[105];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetOrientationError_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest const* request,
                                                               roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataList_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest const* request,
                                                                  roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionList_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest const* request,
                                                                roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataList_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest const* request,
                                                                   roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionList_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotMode_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotState_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetRobotState_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotState_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse* response)
{
    unsigned char input[48], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolForce_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_GetToolForceRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_GetToolForceResponse* response)
{
    unsigned char input[1], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolForceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_GetToolForce_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_GetToolForceRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolForceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetToolForce_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetToolForceResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse* response)
{
    unsigned char input[1], output[50];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 50);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 50 || roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse const* response)
{
    unsigned char input[58];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_encode(response, input + 8, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse* response)
{
    unsigned char input[1], output[5];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 5);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 5 || roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse const* response)
{
    unsigned char input[13];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_encode(response, input + 8, 5, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Ikin_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_dsr_msgs_IkinRequest const* request,
                                                                    roswasmc_bounded_1_dsr_msgs_IkinResponse* response)
{
    unsigned char input[50], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IkinResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_IkinRequest_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_IkinResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Ikin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_IkinRequest* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IkinRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_IkinRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_Ikin_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_IkinResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_IkinResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_IkinEx_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_dsr_msgs_IkinExRequest const* request,
                                                                      roswasmc_bounded_1_dsr_msgs_IkinExResponse* response)
{
    unsigned char input[51], output[50];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IkinExResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_IkinExRequest_encode(request, input, 51, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 50);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 50 || roswasmc_bounded_1_dsr_msgs_IkinExResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_IkinEx_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_IkinExRequest* request)
{
    unsigned char output[59];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IkinExRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_IkinExRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_IkinEx_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_IkinExResponse const* response)
{
    unsigned char input[58];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_IkinExResponse_encode(response, input + 8, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse* response)
{
    unsigned char input[17], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_encode(request, input, 17, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest* request)
{
    unsigned char output[25];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Jog_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_dsr_msgs_JogRequest const* request,
                                                                   roswasmc_bounded_1_dsr_msgs_JogResponse* response)
{
    unsigned char input[10], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_JogResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_JogRequest_encode(request, input, 10, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_JogResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Jog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_JogRequest* request)
{
    unsigned char output[18];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_JogRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_JogRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_Jog_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_JogResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_JogResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_JogMulti_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_JogMultiRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_JogMultiResponse* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_JogMultiResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_JogMultiRequest_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_JogMultiResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_JogMulti_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_JogMultiRequest* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_JogMultiRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_JogMultiRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_JogMulti_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_JogMultiResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_JogMultiResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ManageAccessControl_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ManageAccessControl_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ManageAccessControl_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveBlending_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse* response)
{
    unsigned char input[2256], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_encode(request, input, 2256, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveBlending_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest* request)
{
    unsigned char output[2264];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveBlending_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveCircle_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveCircleRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveCircleResponse* response)
{
    unsigned char input[2280], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveCircleResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_encode(request, input, 2280, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveCircle_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveCircleRequest* request)
{
    unsigned char output[2288];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveCircleRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveCircle_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_MoveCircleResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveHome_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveHomeRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveHomeResponse* response)
{
    unsigned char input[1], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveHomeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveHome_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveHomeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveHomeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_MoveHome_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_MoveHomeResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveJoint_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveJointRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveJointResponse* response)
{
    unsigned char input[83], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveJointResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveJointRequest_encode(request, input, 83, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveJointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveJoint_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveJointRequest* request)
{
    unsigned char output[91];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveJointRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveJointRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveJoint_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveJointResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveJointResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveJointx_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveJointxRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveJointxResponse* response)
{
    unsigned char input[85], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveJointxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_encode(request, input, 85, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveJointx_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveJointxRequest* request)
{
    unsigned char output[93];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveJointxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveJointx_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_MoveJointxResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveLine_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveLineRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveLineResponse* response)
{
    unsigned char input[100], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveLineResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveLineRequest_encode(request, input, 100, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveLineResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveLine_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveLineRequest* request)
{
    unsigned char output[108];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveLineRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveLineRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_MoveLine_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_MoveLineResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveLineResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MovePause_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePauseRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePauseResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MovePauseResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MovePauseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MovePauseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MovePause_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MovePauseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MovePauseRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MovePauseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MovePause_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_MovePauseResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MovePauseResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MovePeriodic_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse* response)
{
    unsigned char input[107], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_encode(request, input, 107, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest* request)
{
    unsigned char output[115];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveResume_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveResumeRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveResumeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveResumeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveResume_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveResumeRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveResumeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveResume_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_MoveResumeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSpiral_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse* response)
{
    unsigned char input[67], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_encode(request, input, 67, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest* request)
{
    unsigned char output[75];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse* response)
{
    unsigned char input[2319], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_encode(request, input, 2319, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest* request)
{
    unsigned char output[2327];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse* response)
{
    unsigned char input[2257], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_encode(request, input, 2257, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest* request)
{
    unsigned char output[2265];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveStop_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveStopRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveStopResponse* response)
{
    unsigned char input[4], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveStopResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_MoveStopRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveStop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveStopRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveStopRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_MoveStop_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_MoveStopResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveStopResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_MoveWait_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveWaitRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveWaitResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveWaitResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_MoveWait_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_MoveWaitRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveWaitRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_MoveWait_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_MoveWaitResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest const* request,
                                                                                      roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse* response)
{
    unsigned char input[50], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_encode(request, input, 50, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest* request)
{
    unsigned char output[58];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ParallelAxis1_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response* response)
{
    unsigned char input[146], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_encode(request, input, 146, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_ParallelAxis1_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request* request)
{
    unsigned char output[154];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ParallelAxis1_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ParallelAxis2_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response* response)
{
    unsigned char input[26], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_encode(request, input, 26, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_ParallelAxis2_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request* request)
{
    unsigned char output[34];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ParallelAxis2_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReadDataRT_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse* response)
{
    unsigned char input[1], output[8154];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8154);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8154 || roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_ReadDataRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReadDataRT_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse const* response)
{
    unsigned char input[8162];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_encode(response, input + 8, 8154, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest const* request,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseForce_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_ReleaseForce_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseForce_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest const* request,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStop_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SerialSendData_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SerialSendData_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SerialSendData_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetAccJRT_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetAccJRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetAccJRT_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetAccXRT_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse* response)
{
    unsigned char input[16], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetAccXRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetAccXRT_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest const* request,
                                                               roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest const* request,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse* response)
{
    unsigned char input[9], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest const* request,
                                                                roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest const* request,
                                                             roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetDesiredForce_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse* response)
{
    unsigned char input[64], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_encode(request, input, 64, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetDesiredForce_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest* request)
{
    unsigned char output[72];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetDesiredForce_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlInput_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse* response)
{
    unsigned char input[272], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlInput_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlInput_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse* response)
{
    unsigned char input[272], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRTControlOutput_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRefCoord_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetRefCoord_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRefCoord_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotControl_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotControl_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotControl_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotMode_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSafetyMode_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetSafetyMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSafetyMode_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest const* request,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetStiffnessx_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetStiffnessx_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetStiffnessx_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetToolShape_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetToolShape_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetToolShape_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response* response)
{
    unsigned char input[49], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_encode(request, input, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request* request)
{
    unsigned char output[57];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response* response)
{
    unsigned char input[193], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_encode(request, input, 193, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request* request)
{
    unsigned char output[201];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response* response)
{
    unsigned char input[97], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_encode(request, input, 97, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request* request)
{
    unsigned char output[105];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetVelJRT_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse* response)
{
    unsigned char input[48], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_encode(request, input, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetVelJRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest* request)
{
    unsigned char output[56];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetVelJRT_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetVelXRT_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse* response)
{
    unsigned char input[16], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_SetVelXRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_SetVelXRT_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_StartRTControl_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_StartRTControlRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_StartRTControlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_StartRTControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_StartRTControl_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_StartRTControlRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_StartRTControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_StartRTControl_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_StartRTControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_StopRTControl_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_StopRTControlRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_StopRTControlResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_StopRTControlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_StopRTControl_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_StopRTControlRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_StopRTControlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_StopRTControl_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_StopRTControlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse* response)
{
    unsigned char input[57], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_encode(request, input, 57, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest* request)
{
    unsigned char output[65];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_Trans_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_TransRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_TransResponse* response)
{
    unsigned char input[98], output[49];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_TransResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_dsr_msgs_TransRequest_encode(request, input, 98, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 49);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 49 || roswasmc_bounded_1_dsr_msgs_TransResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_Trans_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_TransRequest* request)
{
    unsigned char output[106];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_TransRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_TransRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_dsr_msgs_Trans_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_dsr_msgs_TransResponse const* response)
{
    unsigned char input[57];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_TransResponse_encode(response, input + 8, 49, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_WriteDataRT_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse* response)
{
    unsigned char input[152], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_encode(request, input, 152, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_dsr_msgs_WriteDataRT_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest* request)
{
    unsigned char output[160];
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest next = UWVM_VENDOR_ZERO_INITIALIZER;
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_WriteDataRT_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
