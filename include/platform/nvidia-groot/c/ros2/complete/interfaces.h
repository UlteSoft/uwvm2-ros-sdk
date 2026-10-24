/** @file Complete typed custom Service/Action operations over existing C capabilities.
 * Generated canonical components are distinct from Runtime ticket/outcome envelopes.
 * No alias is opened here. For Action clients initialize one existing action_bundle
 * with explicit send/cancel-own/feedback/result aliases (optional cancel-any), and
 * keep its context and goal table stable. Cancel and checked close/revoke use that
 * bundle unchanged. Idle11 is not success; retain owners for caller-driven polling.
 * All outputs commit only after exact framing, matching IDs and component validation. */
#ifndef UWVM_ROS_BOUNDED_INTERFACES_6A2D5CD22E113FAB3DAF5123CAC051A98BB87A196963A0719CF8CE4161A4EF32
#define UWVM_ROS_BOUNDED_INTERFACES_6A2D5CD22E113FAB3DAF5123CAC051A98BB87A196963A0719CF8CE4161A4EF32
#include <nvidia-groot/c/ros2/complete/records.h>
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
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_0 != 0x2fcc7670UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_1 != 0xffa05732UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_2 != 0xe6c7a5fdUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_3 != 0x539ac27cUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_4 != 0x0f19121cUL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_5 != 0x196d4108UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_6 != 0xd1bf1f15UL ||                                                      \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_7 != 0xdb1354daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_0 0x2fcc7670UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_1 0xffa05732UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_2 0xe6c7a5fdUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_3 0x539ac27cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_4 0x0f19121cUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_5 0x196d4108UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_6 0xd1bf1f15UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_7 0xdb1354daUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* request,
                                                              roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response* response)
{
    unsigned char input[10296], output[10929];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_encode(request, input, 10296, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 10929);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 10929 || roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request* request)
{
    unsigned char output[10304];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* response)
{
    unsigned char input[10937];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_encode(response, input + 8, 10929, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_0 != 0x7a47eb0aUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_1 != 0x0a009a78UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_2 != 0x73bd740fUL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_3 != 0xd6cfb112UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_4 != 0x731fc872UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_5 != 0x1cccc269UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_6 != 0xd78d4ac4UL ||                                                 \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_7 != 0xcd9539caUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_0 0x7a47eb0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_1 0x0a009a78UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_2 0x73bd740fUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_3 0xd6cfb112UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_4 0x731fc872UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_5 0x1cccc269UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_6 0xd78d4ac4UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_7 0xcd9539caUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* request,
                                                                   roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response* response)
{
    unsigned char input[276], output[12];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_encode(request, input, 276, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 12);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 12 || roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request* request)
{
    unsigned char output[284];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* response)
{
    unsigned char input[20];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_encode(response, input + 8, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_0 != 0xd0d2e0d8UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_1 != 0x9f1913faUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_2 != 0x0fb3c347UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_3 != 0x7d7dd4edUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_4 != 0x52e1a5bcUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_5 != 0xe7ac5f22UL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_6 != 0x492e8e0aUL ||                                                    \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_7 != 0x05ab61cdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_0 0xd0d2e0d8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_1 0x9f1913faUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_2 0x0fb3c347UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_3 0x7d7dd4edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_4 0x52e1a5bcUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_5 0xe7ac5f22UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_6 0x492e8e0aUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_7 0x05ab61cdUL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* request,
                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response* response)
{
    unsigned char input[852], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_encode(request, input, 852, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request* request)
{
    unsigned char output[860];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_0 != 0xd0619dcbUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_1 != 0x9a3295aeUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_2 != 0x429536feUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_3 != 0x3f567adfUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_4 != 0x96d79103UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_5 != 0x885edd38UL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_6 != 0x7b9cc2edUL ||                                               \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_7 != 0xc8ee4026UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_0 0xd0619dcbUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_1 0x9a3295aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_2 0x429536feUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_3 0x3f567adfUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_4 0x96d79103UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_5 0x885edd38UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_6 0x7b9cc2edUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_7 0xc8ee4026UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* request,
                                                                     roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response* response)
{
    unsigned char input[8], output[12];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 12);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 12 || roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* response)
{
    unsigned char input[20];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_encode(response, input + 8, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#if defined(UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION)
# if UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_0 != 0xfc577751UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_1 != 0xe91c3456UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_2 != 0xe9af16aeUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_3 != 0x9a198a20UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_4 != 0xc156d0a8UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_5 != 0xbbfadd63UL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_6 != 0xa75e812dUL ||                                              \
     UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_7 != 0x21166954UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION 1
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_0 0xfc577751UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_1 0xe91c3456UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_2 0xe9af16aeUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_3 0x9a198a20UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_4 0xc156d0a8UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_5 0xbbfadd63UL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_6 0xa75e812dUL
# define UWVM_ROS_BOUNDED_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_7 0x21166954UL

/** @brief Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* request,
                                                                      roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response* response)
{
    unsigned char input[7720], output[10929];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response);
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_encode(request, input, 7720, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 10929);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 10929 || roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** @brief Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request* request)
{
    unsigned char output[7728];
    roswasmc_result r;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request);
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* response)
{
    unsigned char input[10937];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_encode(response, input + 8, 10929, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
#endif
