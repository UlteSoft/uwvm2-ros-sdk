/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_410D3D32822C567262E0041EFE038811672C163FD33F12177969453D0BDF7BA1
#define UWVM_ROS_BOUNDED_INTERFACES_410D3D32822C567262E0041EFE038811672C163FD33F12177969453D0BDF7BA1
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_0 != 0xe98f9542UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_1 != 0xa60215a3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_2 != 0x6dd5ad6eUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_3 != 0xbf0ac6c3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_4 != 0xd0057693UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_5 != 0x2a1b7a73UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_6 != 0x2cd535c4UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_7 != 0xe1ff815dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_0 0xe98f9542UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_1 0xa60215a3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_2 0x6dd5ad6eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_3 0xbf0ac6c3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_4 0xd0057693UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_5 0x2a1b7a73UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_6 0x2cd535c4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS_7 0xe1ff815dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_0 != 0x99406479UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_1 != 0xa10860e9UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_2 != 0x7a702276UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_3 != 0x88060c9eUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_4 != 0x67b8284cUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_5 != 0xd8863b6dUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_6 != 0x8d459859UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_7 != 0x281444a5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_0 0x99406479UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_1 0xa10860e9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_2 0x7a702276UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_3 0x88060c9eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_4 0x67b8284cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_5 0xd8863b6dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_6 0x8d459859UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES_7 0x281444a5UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_0 != 0x09327d5fUL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_1 != 0xa137d919UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_2 != 0xd7f4d404UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_3 != 0x132568b0UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_4 != 0x48cc0585UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_5 != 0xca3bf742UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_6 != 0xc485b580UL ||                                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_7 != 0xeb370f72UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_0 0x09327d5fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_1 0xa137d919UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_2 0xd7f4d404UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_3 0x132568b0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_4 0x48cc0585UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_5 0xca3bf742UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_6 0xc485b580UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT_7 0xeb370f72UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_0 != 0xf66b4631UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_1 != 0x46873c9bUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_2 != 0x28e79414UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_3 != 0x067a3c84UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_4 != 0xd74af851UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_5 != 0x60ea7baeUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_6 != 0x171c2f41UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_7 != 0x20cead2cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_0 0xf66b4631UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_1 0x46873c9bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_2 0x28e79414UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_3 0x067a3c84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_4 0xd74af851UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_5 0x60ea7baeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_6 0x171c2f41UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES_7 0x20cead2cUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_0 != 0x17d1b35dUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_1 != 0x1f5c9a9bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_2 != 0x02db425fUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_3 != 0xdbac3c30UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_4 != 0xabe1f923UL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_5 != 0x663f7e2bUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_6 != 0x88533b8aUL ||                                                           \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_7 != 0xd208e4daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_0 0x17d1b35dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_1 0x1f5c9a9bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_2 0x02db425fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_3 0xdbac3c30UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_4 0xabe1f923UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_5 0x663f7e2bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_6 0x88533b8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO_7 0xd208e4daUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_0 != 0x0bfdd759UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_1 != 0x8101c4eeUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_2 != 0xa6f35302UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_3 != 0xd6578cd5UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_4 != 0x75691f9eUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_5 != 0xb8869f6cUL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_6 != 0xda21b8c0UL ||                                                        \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_7 != 0x2d0b440dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_0 0x0bfdd759UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_1 0x8101c4eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_2 0xa6f35302UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_3 0xd6578cd5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_4 0x75691f9eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_5 0xb8869f6cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_6 0xda21b8c0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE_7 0x2d0b440dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_0 != 0x549ae14bUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_1 != 0xee26abfeUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_2 != 0xde57b850UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_3 != 0x9fe948ccUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_4 != 0xea10afa2UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_5 != 0x7a5a719fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_6 != 0x3555c92fUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_7 != 0xa06927a5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_0 0x549ae14bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_1 0xee26abfeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_2 0xde57b850UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_3 0x9fe948ccUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_4 0xea10afa2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_5 0x7a5a719fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_6 0x3555c92fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR_7 0xa06927a5UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_0 != 0x18d6e6b8UL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_1 != 0x79af1e0dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_2 != 0x719a666fUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_3 != 0xb45ea34bUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_4 != 0x4cca164dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_5 != 0x95b193eeUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_6 != 0x5392f57dUL ||                                                             \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_7 != 0x27865454UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_0 0x18d6e6b8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_1 0x79af1e0dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_2 0x719a666fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_3 0xb45ea34bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_4 0x4cca164dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_5 0x95b193eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_6 0x5392f57dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS_7 0x27865454UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_0 != 0x5cfb78bcUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_1 != 0xb5343b04UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_2 != 0x90d4294bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_3 != 0x664bd594UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_4 != 0x319534f3UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_5 != 0x8a71f24eUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_6 != 0xbdeb1df6UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_7 != 0xcec9ff89UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_0 0x5cfb78bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_1 0xb5343b04UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_2 0x90d4294bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_3 0x664bd594UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_4 0x319534f3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_5 0x8a71f24eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_6 0xbdeb1df6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO_7 0xcec9ff89UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_0 != 0xddddfb53UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_1 != 0x7fbccd9aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_2 != 0x15db910cUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_3 != 0xefa9a5e2UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_4 != 0xc86a801eUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_5 != 0x34df0d5bUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_6 != 0x203d86b1UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_7 != 0x3e7d22c3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_0 0xddddfb53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_1 0x7fbccd9aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_2 0x15db910cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_3 0xefa9a5e2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_4 0xc86a801eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_5 0x34df0d5bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_6 0x203d86b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO_7 0x3e7d22c3UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_0 != 0xd5ea1db9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_1 != 0x945decf7UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_2 != 0x9695e0b6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_3 != 0x3279aa80UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_4 != 0x22c616a0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_5 != 0xf41a95b3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_6 != 0xa0c1992dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_7 != 0x6cc58e3fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_0 0xd5ea1db9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_1 0x945decf7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_2 0x9695e0b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_3 0x3279aa80UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_4 0x22c616a0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_5 0xf41a95b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_6 0xa0c1992dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO_7 0x6cc58e3fUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_0 != 0xeca0341eUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_1 != 0xfa11da36UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_2 != 0x35b99ee6UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_3 != 0xb713f887UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_4 != 0x2174b03bUL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_5 != 0x3b0151f4UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_6 != 0x188b5e19UL ||                                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_7 != 0x11bd82c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_0 0xeca0341eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_1 0xfa11da36UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_2 0x35b99ee6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_3 0xb713f887UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_4 0x2174b03bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_5 0x3b0151f4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_6 0x188b5e19UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR_7 0x11bd82c1UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_0 != 0xb7b53147UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_1 != 0xcaef2db4UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_2 != 0xa69a3b59UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_3 != 0x825359d1UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_4 != 0xb9599a12UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_5 != 0x219824d5UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_6 != 0xa7cb1289UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_7 != 0x7ed9592fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_0 0xb7b53147UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_1 0xcaef2db4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_2 0xa69a3b59UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_3 0x825359d1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_4 0xb9599a12UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_5 0x219824d5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_6 0xa7cb1289UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG_7 0x7ed9592fUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_0 != 0xb2361d88UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_1 != 0x6bb9affeUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_2 != 0x8051c965UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_3 != 0x1a22a980UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_4 != 0xa85a1bb7UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_5 != 0x3a60059bUL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_6 != 0xe71bdff9UL ||                                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_7 != 0xc9d56d32UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_0 0xb2361d88UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_1 0x6bb9affeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_2 0x8051c965UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_3 0x1a22a980UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_4 0xa85a1bb7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_5 0x3a60059bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_6 0xe71bdff9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE_7 0xc9d56d32UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_0 != 0x0d2c26bbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_1 != 0xfccf4ae6UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_2 != 0xfae447faUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_3 != 0x97b2eee9UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_4 != 0xaae2c5b3UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_5 != 0xf99fe92dUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_6 != 0x707a1399UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_7 != 0xf4258eefUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_0 0x0d2c26bbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_1 0xfccf4ae6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_2 0xfae447faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_3 0x97b2eee9UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_4 0xaae2c5b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_5 0xf99fe92dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_6 0x707a1399UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE_7 0xf4258eefUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_0 != 0xd9f72a84UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_1 != 0x32b8ff4aUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_2 != 0xae3b1fcfUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_3 != 0x9fa2af61UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_4 != 0x0141bfe6UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_5 != 0x8a3af90bUL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_6 != 0x6a1e8995UL ||                                                                         \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_7 != 0xd345c998UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_0 0xd9f72a84UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_1 0x32b8ff4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_2 0xae3b1fcfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_3 0x9fa2af61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_4 0x0141bfe6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_5 0x8a3af90bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_6 0x6a1e8995UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE_7 0xd345c998UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_0 != 0x8bd5b92dUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_1 != 0xec79dc03UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_2 != 0x5642a6c2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_3 != 0xab8936d2UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_4 != 0x6336ee4aUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_5 != 0x5564cbbfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_6 != 0xbd8455bcUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_7 != 0xb1150a81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_0 0x8bd5b92dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_1 0xec79dc03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_2 0x5642a6c2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_3 0xab8936d2UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_4 0x6336ee4aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_5 0x5564cbbfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_6 0xbd8455bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS_7 0xb1150a81UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_0 != 0x274d2499UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_1 != 0x135767f0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_2 != 0x373bf997UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_3 != 0x48585aebUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_4 != 0x8fb3f4cbUL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_5 != 0x5de66fd4UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_6 != 0x47f689d0UL ||                                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_7 != 0xc430665dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_0 0x274d2499UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_1 0x135767f0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_2 0x373bf997UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_3 0x48585aebUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_4 0x8fb3f4cbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_5 0x5de66fd4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_6 0x47f689d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO_7 0xc430665dUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_0 != 0x29d8c446UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_1 != 0xb198b4adUL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_2 != 0x3fba6908UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_3 != 0xc55495b1UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_4 != 0x122fa774UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_5 != 0x9398d6b3UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_6 != 0xcb10f969UL ||                                                                     \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_7 != 0x52fe6431UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_0 0x29d8c446UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_1 0xb198b4adUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_2 0x3fba6908UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_3 0xc55495b1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_4 0x122fa774UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_5 0x9398d6b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_6 0xcb10f969UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16_7 0x52fe6431UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_0 != 0x700c7dfcUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_1 != 0x0cdc3778UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_2 != 0xc93c102fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_3 != 0x5032c12fUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_4 != 0xcb50d9ceUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_5 != 0x3c36b3cfUL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_6 != 0xc35f8de7UL ||                                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_7 != 0x0bf4792cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_0 0x700c7dfcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_1 0x0cdc3778UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_2 0xc93c102fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_3 0x5032c12fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_4 0xcb50d9ceUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_5 0x3c36b3cfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_6 0xc35f8de7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD_7 0x0bf4792cUL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_0 != 0x32318bdbUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_1 != 0x850102baUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_2 != 0x97c55538UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_3 != 0x521ede74UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_4 != 0x009efe25UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_5 != 0xf452fc1bUL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_6 != 0xe76a1453UL ||                                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_7 != 0x84b5ec40UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_0 0x32318bdbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_1 0x850102baUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_2 0x97c55538UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_3 0x521ede74UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_4 0x009efe25UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_5 0xf452fc1bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_6 0xe76a1453UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS_7 0x84b5ec40UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_0 != 0x1a4c10d3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_1 != 0x0e94dd66UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_2 != 0x49f124eeUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_3 != 0xe1248d65UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_4 != 0xf1249eddUL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_5 != 0x22532ba3UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_6 != 0xfd2d79b6UL ||                                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_7 != 0x49fde8fbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_0 0x1a4c10d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_1 0x0e94dd66UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_2 0x49f124eeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_3 0xe1248d65UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_4 0xf1249eddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_5 0x22532ba3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_6 0xfd2d79b6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET_7 0x49fde8fbUL

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
#endif
