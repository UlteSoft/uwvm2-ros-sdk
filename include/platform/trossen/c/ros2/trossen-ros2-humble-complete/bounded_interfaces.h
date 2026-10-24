/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_C6A28F12922A6B25D930DAF1BF07CF825956F08CC541A5B93FCB55CBBD2F6BF2
#define UWVM_ROS_BOUNDED_INTERFACES_C6A28F12922A6B25D930DAF1BF07CF825956F08CC541A5B93FCB55CBBD2F6BF2
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_0 != 0xf4a0de27UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_1 != 0xc10fbe79UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_2 != 0x89b1700bUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_3 != 0x4dba6be5UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_4 != 0x850bdb1dUL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_5 != 0x08486bc6UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_6 != 0x2ebb0d53UL ||                                                \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_7 != 0x7d9ced42UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_0 0xf4a0de27UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_1 0xc10fbe79UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_2 0x89b1700bUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_3 0x4dba6be5UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_4 0x850bdb1dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_5 0x08486bc6UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_6 0x2ebb0d53UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETLIGHTSTATE_7 0x7d9ced42UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_0 != 0x1500d18eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_1 != 0x84961defUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_2 != 0x02a3ec94UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_3 != 0x751ff7e7UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_4 != 0x08560c1aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_5 != 0x1b7d7252UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_6 != 0x65fc5a87UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_7 != 0x35f7dd24UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_0 0x1500d18eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_1 0x84961defUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_2 0x02a3ec94UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_3 0x751ff7e7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_4 0x08560c1aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_5 0x1b7d7252UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_6 0x65fc5a87UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_SLATE_MSGS_SRV_SETSTRING_7 0x35f7dd24UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_0 != 0xfed49e3eUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_1 != 0xa968fa60UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_2 != 0x9ead9afbUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_3 != 0x3590a7d0UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_4 != 0xd43fb101UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_5 != 0x7ca686f1UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_6 != 0xf9afc9b3UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_7 != 0x51ea9490UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_0 0xfed49e3eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_1 0xa968fa60UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_2 0x9ead9afbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_3 0x3590a7d0UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_4 0xd43fb101UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_5 0x7ca686f1UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_6 0xf9afc9b3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_7 0x51ea9490UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_0 != 0x74ed3c35UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_1 != 0x2cf2ec8aUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_2 != 0x057148faUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_3 != 0xb579a37cUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_4 != 0xb1e46dacUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_5 != 0x29b62ab3UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_6 != 0x2fccac9fUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_7 != 0x931478b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_0 0x74ed3c35UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_1 0x2cf2ec8aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_2 0x057148faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_3 0xb579a37cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_4 0xb1e46dacUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_5 0x29b62ab3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_6 0x2fccac9fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_7 0x931478b5UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_0 != 0xa0f75395UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_1 != 0x1cb0534dUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_2 != 0x21ea23a8UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_3 != 0xb8006853UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_4 != 0x2ed833ddUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_5 != 0x63e584d3UL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_6 != 0x13ef143aUL ||                                                          \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_7 != 0x15faca39UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_0 0xa0f75395UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_1 0x1cb0534dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_2 0x21ea23a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_3 0xb8006853UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_4 0x2ed833ddUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_5 0x63e584d3UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_6 0x13ef143aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_7 0x15faca39UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_0 != 0xa2437141UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_1 != 0x2d249d03UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_2 != 0x106caf2dUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_3 != 0xfb088487UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_4 != 0x4705de55UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_5 != 0xcd8688dcUL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_6 != 0x1e12d680UL ||                                                  \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_7 != 0x79ac6a93UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_0 0xa2437141UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_1 0x2d249d03UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_2 0x106caf2dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_3 0xfb088487UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_4 0x4705de55UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_5 0xcd8688dcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_6 0x1e12d680UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_7 0x79ac6a93UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_0 != 0x777ed5eaUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_1 != 0xbb46936aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_2 != 0x562882a7UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_3 != 0xa6957c09UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_4 != 0x5df48123UL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_5 != 0x51fb832aUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_6 != 0xb22679cdUL ||                                                       \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_7 != 0x278810f8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_0 0x777ed5eaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_1 0xbb46936aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_2 0x562882a7UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_3 0xa6957c09UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_4 0x5df48123UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_5 0x51fb832aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_6 0xb22679cdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_7 0x278810f8UL

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
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_0 != 0x470cfdaaUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_1 != 0xca2bac61UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_2 != 0xe2327c67UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_3 != 0xabad876eUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_4 != 0x147aecbbUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_5 != 0x6d8426faUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_6 != 0xe2d3e973UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_7 != 0x63d5da07UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_0 0x470cfdaaUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_1 0xca2bac61UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_2 0xe2327c67UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_3 0xabad876eUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_4 0x147aecbbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_5 0x6d8426faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_6 0xe2d3e973UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_7 0x63d5da07UL

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
#endif
