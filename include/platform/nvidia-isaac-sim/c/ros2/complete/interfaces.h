/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_81276ECCB31D83CDB26D44C984F1B10D7323FDDD09A55E282E037B5DB5BAF4C6
#define UWVM_ROS_BOUNDED_INTERFACES_81276ECCB31D83CDB26D44C984F1B10D7323FDDD09A55E282E037B5DB5BAF4C6
#include <nvidia-isaac-sim/c/ros2/complete/records.h>
#include <roswasm/action_bundle.h>
#ifndef UWVM_ROS_BOUNDED_CAP_DESTINATION
# define UWVM_ROS_BOUNDED_CAP_DESTINATION

/** @brief Caller destinations cannot overwrite the stable owner/context/backend. Live C object storage remains caller
 * responsibility. */
static inline int uwvm_bounded_cap_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    roswasmc_context const* context = cap ? cap->context : NULL;
    return cap && roswasmc_action_bundle_range(out, size) && !roswasmc_action_bundle_overlap(out, size, cap, sizeof *cap) &&
           (!context || (!roswasmc_action_bundle_overlap(out, size, context, sizeof *context) &&
                         (!context->backend || !roswasmc_action_bundle_overlap(out, size, context->backend, sizeof *context->backend))));
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_0 != 0xc2407d52UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_1 != 0x162f5463UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_2 != 0x4541f1e2UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_3 != 0x56bc14eeUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_4 != 0x9e4c5f45UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_5 != 0x49407a40UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_6 != 0x3ed10358UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_7 != 0x16542a44UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_0 0xc2407d52UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_1 0x162f5463UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_2 0x4541f1e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_3 0x56bc14eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_4 0x9e4c5f45UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_5 0x49407a40UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_6 0x3ed10358UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_7 0x16542a44UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* request,
                                                                   roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response* response)
{
    unsigned char input[22], output[48];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(request, input, 22, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 48);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 48 || roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request* request)
{
    unsigned char output[30];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* response)
{
    unsigned char input[56];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(response, input + 8, 48, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
