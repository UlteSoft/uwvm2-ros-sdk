/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_BOUNDED_INTERFACES_H
#define UWVM_BOUNDED_INTERFACES_H
#include <platform/trossen/c/ros2/trossen-ros2-iron-complete/bounded_records.h>
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
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* request,
                                                                    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response* response)
{
    unsigned char input[4], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* request,
                                                                roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response* response)
{
    unsigned char input[132], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* request,
                                                              roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response* response)
{
    unsigned char input[292], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_encode(request, input, 292, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request* request)
{
    unsigned char output[300];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* request,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response* response)
{
    unsigned char input[536], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_encode(request, input, 536, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request* request)
{
    unsigned char output[544];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* request,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response* response)
{
    unsigned char input[266], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_encode(request, input, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request* request)
{
    unsigned char output[274];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_respond(roswasmc_capability const* cap,
                                                             uint64_t ticket,
                                                             roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* request,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response* response)
{
    unsigned char input[400], output[68];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_encode(request, input, 400, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 68);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 68 || roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request* request)
{
    unsigned char output[408];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* response)
{
    unsigned char input[76];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_encode(response, input + 8, 68, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* request,
                                                             roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response* response)
{
    unsigned char input[264], output[18474];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 18474);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 18474 || roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* response)
{
    unsigned char input[18482];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_encode(response, input + 8, 18474, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* request,
                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response* response)
{
    unsigned char input[265], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_encode(request, input, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request* request)
{
    unsigned char output[273];
    roswasmc_result r;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
