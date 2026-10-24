/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_BOUNDED_INTERFACES_H
#define UWVM_BOUNDED_INTERFACES_H
#include <platform/trossen/c/ros1/trossen-ros1-noetic-complete/bounded_records.h>
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
static inline roswasmc_result roswasmc_bounded_1_interbotix_slate_msgs_SetString_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest const* request,
                                                                                      roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse* response)
{
    unsigned char input[132], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_slate_msgs_SetString_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_interbotix_slate_msgs_SetString_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* request,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse* response)
{
    unsigned char input[292], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_encode(request, input, 292, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest* request)
{
    unsigned char output[300];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* request,
                                                              roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse* response)
{
    unsigned char input[536], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_encode(request, input, 536, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest* request)
{
    unsigned char output[544];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_Reboot_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* request,
                                                                                roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse* response)
{
    unsigned char input[266], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_encode(request, input, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_Reboot_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest* request)
{
    unsigned char output[274];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_Reboot_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* request,
                                                              roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse* response)
{
    unsigned char input[400], output[68];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_encode(request, input, 400, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 68);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 68 || roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest* request)
{
    unsigned char output[408];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* response)
{
    unsigned char input[76];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_encode(response, input + 8, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* request,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse* response)
{
    unsigned char input[264], output[18474];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 18474);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 18474 || roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* response)
{
    unsigned char input[18482];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_encode(response, input + 8, 18474, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* request,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse* response)
{
    unsigned char input[265], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_encode(request, input, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest* request)
{
    unsigned char output[273];
    roswasmc_result r;
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_ClearErr_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* request,
                                                                         roswasmc_bounded_1_xarm_msgs_ClearErrResponse* response)
{
    unsigned char input[1], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_ClearErr_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_ClearErrRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_ClearErr_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* request,
                                                                                 roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* response)
{
    unsigned char input[8], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* request,
                                                                            roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* response)
{
    unsigned char input[2], output[138];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 138);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 138 || roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GetAnalogIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetAnalogIO_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* response)
{
    unsigned char input[146];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(response, input + 8, 138, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* request,
                                                             roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* response)
{
    unsigned char input[2], output[136];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 136);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 136 || roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* response)
{
    unsigned char input[144];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(response, input + 8, 136, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* request,
                                                                             roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* response)
{
    unsigned char input[1], output[142];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 142);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 142 || roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GetDigitalIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetDigitalIO_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* response)
{
    unsigned char input[150];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(response, input + 8, 142, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GetErr_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_xarm_msgs_GetErrRequest const* request,
                                                                       roswasmc_bounded_1_xarm_msgs_GetErrResponse* response)
{
    unsigned char input[1], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetErrResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GetErr_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_GetErrRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GetErrRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_xarm_msgs_GetErr_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_xarm_msgs_GetErrResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperConfig_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* request,
                                                                              roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* response)
{
    unsigned char input[4], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperConfigResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperConfig_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_xarm_msgs_GripperConfigRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperConfigRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperConfig_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperMove_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* request,
                                                                            roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* response)
{
    unsigned char input[4], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperMoveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GripperMove_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_GripperMoveRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperMoveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperMove_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperState_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* request,
                                                                             roswasmc_bounded_1_xarm_msgs_GripperStateResponse* response)
{
    unsigned char input[1], output[6];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 6);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 6 || roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_GripperState_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_GripperStateRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_GripperStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_GripperState_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* response)
{
    unsigned char input[14];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(response, input + 8, 6, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_Move_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_xarm_msgs_MoveRequest const* request,
                                                                     roswasmc_bounded_1_xarm_msgs_MoveResponse* response)
{
    unsigned char input[84], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_MoveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(request, input, 84, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_Move_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_MoveRequest* request)
{
    unsigned char output[92];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_MoveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_xarm_msgs_Move_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_xarm_msgs_MoveResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetAxis_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* request,
                                                                        roswasmc_bounded_1_xarm_msgs_SetAxisResponse* response)
{
    unsigned char input[4], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) || roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_SetAxis_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_SetAxisRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_xarm_msgs_SetAxis_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* request,
                                                                             roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* response)
{
    unsigned char input[4], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_SetDigitalIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetDigitalIO_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetInt16_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_xarm_msgs_SetInt16Request const* request,
                                                                         roswasmc_bounded_1_xarm_msgs_SetInt16Response* response)
{
    unsigned char input[2], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetInt16Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_SetInt16_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_SetInt16Request* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetInt16Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetInt16_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_xarm_msgs_SetInt16Response const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetLoad_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* request,
                                                                        roswasmc_bounded_1_xarm_msgs_SetLoadResponse* response)
{
    unsigned char input[16], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_SetLoad_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_SetLoadRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetLoadRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_xarm_msgs_SetLoad_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetToolModbus_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* request,
                                                                              roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* response)
{
    unsigned char input[262], output[262];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(request, input, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 262);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 262 || roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetToolModbus_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest* request)
{
    unsigned char output[270];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_SetToolModbus_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* response)
{
    unsigned char input[270];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(response, input + 8, 262, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_TCPOffset_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* request,
                                                                          roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* response)
{
    unsigned char input[24], output[134];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 134);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 134 || roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_xarm_msgs_TCPOffset_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** @brief Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_xarm_msgs_TCPOffset_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* response)
{
    unsigned char input[142];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(response, input + 8, 134, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
