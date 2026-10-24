/**
 * @file bounded_interfaces.h
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
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
#include <doosan/c/ros1/doosan-ros1-aws-robot-complete/bounded_records.h>
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
static inline roswasmc_result roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const* request,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse* response)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 8);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 8 || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[16];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_encode(response, input + 8, 8, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[48];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 48);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 48 || roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[56];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_encode(response, input + 8, 48, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_encode(response, input + 8, 260, &n))
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
    unsigned char input[1], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_encode(response, input + 8, 260, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[48];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 48);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 48 || roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[56];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_encode(response, input + 8, 48, &n))
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
    unsigned char input[1], output[48];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 48);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 48 || roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[56];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_encode(response, input + 8, 48, &n))
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
    unsigned char input[1], output[792];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 792);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 792 || roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[800];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_encode(response, input + 8, 792, &n))
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
    unsigned char input[260], output[4];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4 || roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[12];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_encode(response, input + 8, 4, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_encode(response, input + 8, 1, &n))
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
    unsigned char input[1], output[48];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_GetToolForceResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 48);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 48 || roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_decode(output, (size_t)r.length, &next))
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
    unsigned char output[8];
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
    unsigned char input[56];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_encode(response, input + 8, 48, &n))
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
    unsigned char input[2239], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_encode(request, input, 2239, &n))
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
    unsigned char output[2247];
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
#endif
