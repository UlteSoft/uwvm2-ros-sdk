/**
 * @file bounded_interfaces.h
 * @brief Full leju c codecs and original record metadata.
 * @details Complete leju ros1_beta_platform values in c. 532 original records retain 1587 fields and 378 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/leju/en_US/catalog/.
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
#include <platform/leju/c/ros1/leju-ros1-beta-platform-complete/bounded_records.h>
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
    roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest const* request,
                                                                roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse* response)
{
    unsigned char input[1], output[2965];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2965);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2965 || roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPose_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse const* response)
{
    unsigned char input[2973];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_CheckStartingPoseResponse_encode(response, input + 8, 2965, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest const* request,
                                                                 roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse* response)
{
    unsigned char input[1], output[590];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 590);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 590 || roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibration_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse const* response)
{
    unsigned char input[598];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_ComputeCalibrationResponse_encode(response, input + 8, 590, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest const* request,
                                                                   roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse* response)
{
    unsigned char input[1], output[2964];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2964);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2964 || roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPoses_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse const* response)
{
    unsigned char input[2972];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_EnumerateTargetPosesResponse_encode(response, input + 8, 2964, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest const* request,
                                                                                    roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_ExecutePlan_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_ExecutePlanResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest const* request,
                                                             roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse* response)
{
    unsigned char input[1], output[4424];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4424);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4424 || roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithms_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse const* response)
{
    unsigned char input[4432];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_ListAlgorithmsResponse_encode(response, input + 8, 4424, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest const* request,
                                                                       roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPose_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_PlanToSelectedTargetPoseResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest const* request,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse* response)
{
    unsigned char input[1], output[904];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 904);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 904 || roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_RemoveSample_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse const* response)
{
    unsigned char input[912];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_RemoveSampleResponse_encode(response, input + 8, 904, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest const* request,
                                                               roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse* response)
{
    unsigned char input[8], output[2965];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2965);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2965 || roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPose_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse const* response)
{
    unsigned char input[2973];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_SelectTargetPoseResponse_encode(response, input + 8, 2965, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest const* request,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithm_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_SetAlgorithmResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_TakeSample_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest const* request,
                                                                                   roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse* response)
{
    unsigned char input[1], output[904];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 904);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 904 || roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_TakeSample_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_easy_handeye_msgs_TakeSampleRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_easy_handeye_msgs_TakeSample_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse const* response)
{
    unsigned char input[912];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_easy_handeye_msgs_TakeSampleResponse_encode(response, input + 8, 904, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMap_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest const* request,
                                                                               roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse* response)
{
    unsigned char input[4456], output[11696];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest_encode(request, input, 4456, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 11696);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 11696 || roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMap_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest* request)
{
    unsigned char output[4464];
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_grid_map_msgs_GetGridMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMap_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse const* response)
{
    unsigned char input[11704];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_grid_map_msgs_GetGridMapResponse_encode(response, input + 8, 11696, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest const* request,
                                                                                   roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse* response)
{
    unsigned char input[1], output[352];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 352);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 352 || roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_GetGridMapInfo_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse const* response)
{
    unsigned char input[360];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_grid_map_msgs_GetGridMapInfoResponse_encode(response, input + 8, 352, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_ProcessFile_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest const* request,
                                                                                roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse* response)
{
    unsigned char input[520], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_ProcessFile_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_grid_map_msgs_ProcessFileRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_ProcessFile_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_grid_map_msgs_ProcessFileResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_SetGridMap_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest const* request,
                                                                               roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse* response)
{
    unsigned char input[11696], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest_encode(request, input, 11696, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_SetGridMap_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest* request)
{
    unsigned char output[11704];
    roswasmc_result r;
    roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_grid_map_msgs_SetGridMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_grid_map_msgs_SetGridMap_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_grid_map_msgs_SetGridMapResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest const* request,
                                                                    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_ExecuteArmAction_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_ExecuteArmActionResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest const* request,
                                                                       roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlMode_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_changeAMBACCtrlModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest const* request,
                                                                     roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlMode_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_changeArmCtrlModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest const* request,
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 ||
       roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigName_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_changeHandArmPosesByConfigNameResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_playmusic_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_h12pro_controller_node_playmusicRequest const* request,
                                                             roswasmc_bounded_1_h12pro_controller_node_playmusicResponse* response)
{
    unsigned char input[268], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_playmusicResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_playmusicRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_h12pro_controller_node_playmusicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_h12pro_controller_node_playmusic_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_h12pro_controller_node_playmusicRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_playmusicRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_playmusicRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_playmusic_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_h12pro_controller_node_playmusicResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_playmusicResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest const* request,
                                                                   roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse* response)
{
    unsigned char input[521], output[2];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest_encode(request, input, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2 || roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest* request)
{
    unsigned char output[529];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_srvChangePhases_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse const* response)
{
    unsigned char input[10];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_srvChangePhasesResponse_encode(response, input + 8, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest const* request,
                                                                       roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMD_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_srvClearPositionCMDResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest const* request,
                                                                    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse* response)
{
    unsigned char input[2], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlMode_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_h12pro_controller_node_srvchangeCtlModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest const* request,
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingMode_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_handcontrollerdemorosnode_changeHandTrackingModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest const* request,
                                                                     roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse* response)
{
    unsigned char input[520], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHand_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_handcontrollerdemorosnode_controlEndHandResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest const* request,
                                                               roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse* response)
{
    unsigned char input[264], output[12064];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 12064);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 12064 || roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIK_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse const* response)
{
    unsigned char input[12072];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_handcontrollerdemorosnode_srvArmIKResponse_encode(response, input + 8, 12064, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_arm_control_armControl_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_humanoid_arm_control_armControlRequest const* request,
                                                                                      roswasmc_bounded_1_humanoid_arm_control_armControlResponse* response)
{
    unsigned char input[16], output[16];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_arm_control_armControlResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_humanoid_arm_control_armControlRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 16);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 16 || roswasmc_bounded_1_humanoid_arm_control_armControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_arm_control_armControl_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_humanoid_arm_control_armControlRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_arm_control_armControlRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_humanoid_arm_control_armControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_humanoid_arm_control_armControl_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_humanoid_arm_control_armControlResponse const* response)
{
    unsigned char input[24];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_humanoid_arm_control_armControlResponse_encode(response, input + 8, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest const* request,
                                                               roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse* response)
{
    unsigned char input[8], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_humanoid_arm_control_handUpAndGrab_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_humanoid_arm_control_handUpAndGrabResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest const* request,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmAction_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_humanoid_plan_arm_trajectory_ExecuteArmActionResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest const* request,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse* response)
{
    unsigned char input[29560], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest_encode(request, input, 29560, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest* request)
{
    unsigned char output[29568];
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurve_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryBezierCurveResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest const* request,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse* response)
{
    unsigned char input[8728], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest_encode(request, input, 8728, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest* request)
{
    unsigned char output[8736];
    roswasmc_result r;
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSpline_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_humanoid_plan_arm_trajectory_planArmTrajectoryCubicSplineResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_audio_player_audio_status_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest const* request,
                                                                                      roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_audio_player_audio_status_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_audio_player_audio_statusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_audio_player_audio_status_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_audio_player_audio_statusResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_audio_player_playmusic_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_audio_player_playmusicRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_audio_player_playmusicResponse* response)
{
    unsigned char input[268], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_audio_player_playmusicResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_audio_player_playmusicRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_audio_player_playmusicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_audio_player_playmusic_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_audio_player_playmusicRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_audio_player_playmusicRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_audio_player_playmusicRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_audio_player_playmusic_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_audio_player_playmusicResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_audio_player_playmusicResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_DeleteMap_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest const* request,
                                                                              roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse* response)
{
    unsigned char input[260], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_DeleteMap_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_DeleteMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_DeleteMap_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_DeleteMapResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_EditMap_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_mapping_EditMapRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_mapping_EditMapResponse* response)
{
    unsigned char input[652], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_EditMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_EditMapRequest_encode(request, input, 652, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_kuavo_mapping_EditMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_EditMap_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_mapping_EditMapRequest* request)
{
    unsigned char output[660];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_EditMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_EditMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_EditMap_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_mapping_EditMapResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_EditMapResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetAllMaps_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse* response)
{
    unsigned char input[1], output[4164];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4164);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4164 || roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetAllMaps_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_GetAllMapsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetAllMaps_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse const* response)
{
    unsigned char input[4172];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_GetAllMapsResponse_encode(response, input + 8, 4164, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse* response)
{
    unsigned char input[1], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_GetCurrentMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_GetCurrentMap_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse const* response)
{
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_GetCurrentMapResponse_encode(response, input + 8, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest const* request,
                                                                   roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPoint_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_InitialPoseWithTaskPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_LoadMap_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_mapping_LoadMapRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_mapping_LoadMapResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_LoadMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_LoadMapRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_mapping_LoadMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_LoadMap_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_mapping_LoadMapRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_LoadMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_LoadMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_LoadMap_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_mapping_LoadMapResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_LoadMapResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest const* request,
                                                              roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPoint_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_NavigateToTaskPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_RenameMap_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_kuavo_mapping_RenameMapRequest const* request,
                                                                              roswasmc_bounded_1_kuavo_mapping_RenameMapResponse* response)
{
    unsigned char input[520], output[781];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_RenameMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_RenameMapRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 781);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 781 || roswasmc_bounded_1_kuavo_mapping_RenameMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_RenameMap_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_kuavo_mapping_RenameMapRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_RenameMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_RenameMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_RenameMap_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_kuavo_mapping_RenameMapResponse const* response)
{
    unsigned char input[789];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_RenameMapResponse_encode(response, input + 8, 781, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_SaveMap_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_mapping_SaveMapRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_mapping_SaveMapResponse* response)
{
    unsigned char input[260], output[1301];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_SaveMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_SaveMapRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1301);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1301 || roswasmc_bounded_1_kuavo_mapping_SaveMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_SaveMap_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_mapping_SaveMapRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_SaveMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_SaveMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_SaveMap_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_mapping_SaveMapResponse const* response)
{
    unsigned char input[1309];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_SaveMapResponse_encode(response, input + 8, 1301, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_SetInitialPose_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse* response)
{
    unsigned char input[616], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest_encode(request, input, 616, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_SetInitialPose_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest* request)
{
    unsigned char output[624];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_SetInitialPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_SetInitialPose_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_SetInitialPoseResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StartMapping_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_mapping_StartMappingRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_mapping_StartMappingResponse* response)
{
    unsigned char input[520], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_StartMappingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_StartMappingRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_kuavo_mapping_StartMappingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StartMapping_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_mapping_StartMappingRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_StartMappingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_StartMappingRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StartMapping_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_mapping_StartMappingResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_StartMappingResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StopMapping_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_mapping_StopMappingRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_mapping_StopMappingResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_StopMappingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_StopMappingRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_mapping_StopMappingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StopMapping_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_mapping_StopMappingRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_StopMappingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_StopMappingRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_StopMapping_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_mapping_StopMappingResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_StopMappingResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest const* request,
                                                             roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse* response)
{
    unsigned char input[578], output[2793];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest_encode(request, input, 578, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2793);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2793 || roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest* request)
{
    unsigned char output[586];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_mapping_TaskPointOperationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_mapping_TaskPointOperation_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse const* response)
{
    unsigned char input[2801];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_mapping_TaskPointOperationResponse_encode(response, input + 8, 2793, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_CreatePath_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_msgs_CreatePathRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_msgs_CreatePathResponse* response)
{
    unsigned char input[301], output[3161];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_CreatePathResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_CreatePathRequest_encode(request, input, 301, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 3161);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 3161 || roswasmc_bounded_1_kuavo_msgs_CreatePathResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_CreatePath_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_CreatePathRequest* request)
{
    unsigned char output[309];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_CreatePathRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_CreatePathRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_CreatePath_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_CreatePathResponse const* response)
{
    unsigned char input[3169];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_CreatePathResponse_encode(response, input + 8, 3161, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_ExecuteArmAction_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_ExecuteArmActionResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_FallStandCommand_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_FallStandCommand_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_FallStandCommandRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_FallStandCommand_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_FallStandCommandResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetAllMaps_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse* response)
{
    unsigned char input[1], output[4164];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4164);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4164 || roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_GetAllMaps_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetAllMapsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetAllMaps_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse const* response)
{
    unsigned char input[4172];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetAllMapsResponse_encode(response, input + 8, 4164, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse* response)
{
    unsigned char input[1], output[297];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 297);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 297 || roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetBatteryInfo_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse const* response)
{
    unsigned char input[305];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetBatteryInfoResponse_encode(response, input + 8, 297, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse* response)
{
    unsigned char input[1], output[260];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 260);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 260 || roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetCurrentMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetCurrentMap_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse const* response)
{
    unsigned char input[268];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetCurrentMapResponse_encode(response, input + 8, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse* response)
{
    unsigned char input[1], output[298];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 298);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 298 || roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatus_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse const* response)
{
    unsigned char input[306];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetPowerBoardStatusResponse_encode(response, input + 8, 298, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetStringList_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetStringListRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetStringListResponse* response)
{
    unsigned char input[1], output[4425];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetStringListResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetStringListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4425);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4425 || roswasmc_bounded_1_kuavo_msgs_GetStringListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetStringList_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_GetStringListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetStringListRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetStringListRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_GetStringList_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_GetStringListResponse const* response)
{
    unsigned char input[4433];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetStringListResponse_encode(response, input + 8, 4425, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest const* request,
                                                                 roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse* response)
{
    unsigned char input[1], output[317];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 317);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 317 || roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCamera_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse const* response)
{
    unsigned char input[325];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_GetTargetPartPoseInCameraResponse_encode(response, input + 8, 317, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest const* request,
                                                                roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPoint_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_InitialPoseWithTaskPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_LoadMap_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_kuavo_msgs_LoadMapRequest const* request,
                                                                         roswasmc_bounded_1_kuavo_msgs_LoadMapResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_LoadMapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_LoadMapRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_LoadMapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_LoadMap_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_LoadMapRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_LoadMapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_LoadMapRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_LoadMap_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_kuavo_msgs_LoadMapResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_LoadMapResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPoint_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_NavigateToTaskPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse* response)
{
    unsigned char input[268], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediate_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_PlayMusicImmediateResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RelaySelectChannel_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_RelaySelectChannelResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RepublishTFs_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest const* request,
                                                                              roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse* response)
{
    unsigned char input[4444], output[264];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest_encode(request, input, 4444, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 264);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 264 || roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RepublishTFs_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest* request)
{
    unsigned char output[4452];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_RepublishTFsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_RepublishTFs_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse const* response)
{
    unsigned char input[272];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_RepublishTFsResponse_encode(response, input + 8, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse* response)
{
    unsigned char input[520], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetHeadControlMode_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetHeadControlModeResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest const* request,
                                                                 roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_poll(roswasmc_capability const* cap,
                                                                 uint64_t* ticket,
                                                                 roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLink_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetIncrementalArmTrajLinkResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetInitialPose_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse* response)
{
    unsigned char input[616], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest_encode(request, input, 616, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetInitialPose_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest* request)
{
    unsigned char output[624];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetInitialPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetInitialPose_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetInitialPoseResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest const* request,
                                                                             roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetJoyTopicRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetJoyTopic_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetJoyTopicResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetLEDMode_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest const* request,
                                                                            roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse* response)
{
    unsigned char input[31], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest_encode(request, input, 31, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_SetLEDMode_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest* request)
{
    unsigned char output[39];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetLEDModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetLEDMode_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetLEDModeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse* response)
{
    unsigned char input[29], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest_encode(request, input, 29, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest* request)
{
    unsigned char output[37];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetLEDMode_free_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetLEDMode_freeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetString_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_kuavo_msgs_SetStringRequest const* request,
                                                                           roswasmc_bounded_1_kuavo_msgs_SetStringResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetStringResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SetStringRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_SetStringResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_SetString_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_SetStringRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SetStringRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SetStringRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SetString_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_kuavo_msgs_SetStringResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SetStringResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse* response)
{
    unsigned char input[264], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_SpeechSynthesis_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_SpeechSynthesisResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse* response)
{
    unsigned char input[578], output[2793];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest_encode(request, input, 578, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 2793);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 2793 || roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest* request)
{
    unsigned char output[586];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_TaskPointOperationRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_TaskPointOperation_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse const* response)
{
    unsigned char input[2801];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_TaskPointOperationResponse_encode(response, input + 8, 2793, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest const* request,
                                                                                      roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_TransportModeCommandRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_TransportModeCommand_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_TransportModeCommandResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_accessIkSolve_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse* response)
{
    unsigned char input[79], output[298];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest_encode(request, input, 79, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 298);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 298 || roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_accessIkSolve_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest* request)
{
    unsigned char output[87];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_accessIkSolveRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_accessIkSolve_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse const* response)
{
    unsigned char input[306];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_accessIkSolveResponse_encode(response, input + 8, 298, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse* response)
{
    unsigned char input[12], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest_encode(request, input, 12, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest* request)
{
    unsigned char output[20];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_adjustZeroPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_adjustZeroPoint_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_adjustZeroPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeArmCtrlMode_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest const* request,
                                                              roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavo_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeArmCtrlModeKuavoResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest const* request,
                                                                   roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrv_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeLbMpcObsUpdateModeSrvResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest const* request,
                                                                                      roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrv_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeLbQuickModeSrvResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeMotorParam_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse* response)
{
    unsigned char input[84], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest_encode(request, input, 84, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeMotorParam_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest* request)
{
    unsigned char output[92];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeMotorParamRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeMotorParam_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeMotorParamResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlMode_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeTorsoCtrlModeResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlMode_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_changeWaistCtrlModeResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse* response)
{
    unsigned char input[188], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest_encode(request, input, 188, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest* request)
{
    unsigned char output[196];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrv_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_chassisPoseCmdSrvResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse* response)
{
    unsigned char input[4560], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest_encode(request, input, 4560, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest* request)
{
    unsigned char output[4568];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_controlLejuClawRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_controlLejuClaw_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_controlLejuClawResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_eePoseReachError_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse* response)
{
    unsigned char input[1], output[133];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 133);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 133 || roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_eePoseReachError_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_eePoseReachError_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse const* response)
{
    unsigned char input[141];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_eePoseReachErrorResponse_encode(response, input + 8, 133, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest const* request,
                                                             roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensor_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_enableHandTouchSensorResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_fkSrv_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_kuavo_msgs_fkSrvRequest const* request,
                                                                       roswasmc_bounded_1_kuavo_msgs_fkSrvResponse* response)
{
    unsigned char input[132], output[545];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_fkSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_fkSrvRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 545);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 545 || roswasmc_bounded_1_kuavo_msgs_fkSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_fkSrv_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_fkSrvRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_fkSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_fkSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_fkSrv_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_kuavo_msgs_fkSrvResponse const* response)
{
    unsigned char input[553];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_fkSrvResponse_encode(response, input + 8, 545, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse* response)
{
    unsigned char input[656], output[805];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest_encode(request, input, 656, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 805);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 805 || roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest* request)
{
    unsigned char output[664];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrame_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse const* response)
{
    unsigned char input[813];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_fkSrvWithReferFrameResponse_encode(response, input + 8, 805, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest const* request,
                                                                       roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse* response)
{
    unsigned char input[7292], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest_encode(request, input, 7292, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest* request)
{
    unsigned char output[7300];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrv_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_footPose6DTargetTrajectoriesSrvResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest const* request,
                                                                     roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse* response)
{
    unsigned char input[4980], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest_encode(request, input, 4980, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest* request)
{
    unsigned char output[4988];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrv_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_footPoseTargetTrajectoriesSrvResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureExecute_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse* response)
{
    unsigned char input[2092], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest_encode(request, input, 2092, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureExecute_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest* request)
{
    unsigned char output[2100];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_gestureExecuteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureExecute_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_gestureExecuteResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest const* request,
                                                                                     roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_gestureExecuteState_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_gestureExecuteStateResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureList_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_kuavo_msgs_gestureListRequest const* request,
                                                                             roswasmc_bounded_1_kuavo_msgs_gestureListResponse* response)
{
    unsigned char input[1], output[13165];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureListResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_gestureListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 13165);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 13165 || roswasmc_bounded_1_kuavo_msgs_gestureListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_gestureList_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_gestureListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_gestureListRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_gestureListRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_gestureList_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_gestureListResponse const* response)
{
    unsigned char input[13173];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_gestureListResponse_encode(response, input + 8, 13165, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getControllerList_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_msgs_getControllerListRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_msgs_getControllerListResponse* response)
{
    unsigned char input[1], output[4693];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getControllerListResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_getControllerListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4693);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4693 || roswasmc_bounded_1_kuavo_msgs_getControllerListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getControllerList_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_getControllerListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getControllerListRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_getControllerListRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getControllerList_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_getControllerListResponse const* response)
{
    unsigned char input[4701];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_getControllerListResponse_encode(response, input + 8, 4693, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getCurrentGaitName_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_getCurrentGaitNameResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_call(roswasmc_capability const* cap,
                                                             roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest const* request,
                                                             roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse* response)
{
    unsigned char input[1], output[309];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 309);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 309 || roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPose_respond(roswasmc_capability const* cap,
                                                                uint64_t ticket,
                                                                roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse const* response)
{
    unsigned char input[317];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_getLbTorsoInitialPoseResponse_encode(response, input + 8, 309, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorParam_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse* response)
{
    unsigned char input[1], output[345];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 345);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 345 || roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorParam_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_getMotorParamRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorParam_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse const* response)
{
    unsigned char input[353];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_getMotorParamResponse_encode(response, input + 8, 345, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse* response)
{
    unsigned char input[1], output[393];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 393);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 393 || roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_getMotorZeroPoints_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse const* response)
{
    unsigned char input[401];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_getMotorZeroPointsResponse_encode(response, input + 8, 393, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse* response)
{
    unsigned char input[132], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest_encode(request, input, 132, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest* request)
{
    unsigned char output[140];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_goToZeroPointRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_goToZeroPoint_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_goToZeroPointResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_handForceLevel_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse* response)
{
    unsigned char input[2], output[281];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest_encode(request, input, 2, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 281);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 281 || roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_handForceLevel_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest* request)
{
    unsigned char output[10];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_handForceLevelRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_handForceLevel_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse const* response)
{
    unsigned char input[289];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_handForceLevelResponse_encode(response, input + 8, 281, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_jointMoveTo_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest const* request,
                                                                             roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse* response)
{
    unsigned char input[148], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest_encode(request, input, 148, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_jointMoveTo_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest* request)
{
    unsigned char output[156];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_jointMoveToRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_jointMoveTo_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_jointMoveToResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest const* request,
                                                                                      roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse* response)
{
    unsigned char input[114], output[41];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest_encode(request, input, 114, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 41);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 41 || roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest* request)
{
    unsigned char output[122];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrv_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse const* response)
{
    unsigned char input[49];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lbBaseLinkPoseCmdSrvResponse_encode(response, input + 8, 41, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse* response)
{
    unsigned char input[40], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest_encode(request, input, 40, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest* request)
{
    unsigned char output[48];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbLegControlSrv_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lbLegControlSrvResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest const* request,
                                                               roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse* response)
{
    unsigned char input[8756], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest_encode(request, input, 8756, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest* request)
{
    unsigned char output[8764];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTraj_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lbMultiTimedOfflineTrajResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest const* request,
                                                                                    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse* response)
{
    unsigned char input[1101], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest_encode(request, input, 1101, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest* request)
{
    unsigned char output[1109];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmd_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lbMultiTimedPosCmdResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest const* request,
                                                                               roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse* response)
{
    unsigned char input[137], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest_encode(request, input, 137, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest* request)
{
    unsigned char output[145];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmd_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lbTimedPosCmdResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse* response)
{
    unsigned char input[272], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest_encode(request, input, 272, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest* request)
{
    unsigned char output[280];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_lejuClawRecovery_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_lejuClawRecoveryResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest const* request,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse* response)
{
    unsigned char input[29560], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest_encode(request, input, 29560, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest* request)
{
    unsigned char output[29568];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurve_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryBezierCurveResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest const* request,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse* response)
{
    unsigned char input[8728], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest_encode(request, input, 8728, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest* request)
{
    unsigned char output[8736];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSpline_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_planArmTrajectoryCubicSplineResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_playmusic_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_kuavo_msgs_playmusicRequest const* request,
                                                                           roswasmc_bounded_1_kuavo_msgs_playmusicResponse* response)
{
    unsigned char input[268], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_playmusicResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_playmusicRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_playmusicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_playmusic_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_playmusicRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_playmusicRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_playmusicRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_playmusic_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_kuavo_msgs_playmusicResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_playmusicResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_recordmusic_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_kuavo_msgs_recordmusicRequest const* request,
                                                                             roswasmc_bounded_1_kuavo_msgs_recordmusicResponse* response)
{
    unsigned char input[268], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_recordmusicResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_recordmusicRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_msgs_recordmusicResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_recordmusic_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_recordmusicRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_recordmusicRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_recordmusicRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_recordmusic_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_recordmusicResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_recordmusicResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_robotSwitchPose_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_robotSwitchPoseResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest const* request,
                                                                   roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse* response)
{
    unsigned char input[16], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest_encode(request, input, 16, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest* request)
{
    unsigned char output[24];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParams_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setContactForceInterpParamsResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setHwIntialState_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse* response)
{
    unsigned char input[264], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest_encode(request, input, 264, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setHwIntialState_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest* request)
{
    unsigned char output[272];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setHwIntialStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setHwIntialState_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setHwIntialStateResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest const* request,
                                                                                roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrame_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setMmCtrlFrameResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest const* request,
                                                                   roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse* response)
{
    unsigned char input[9], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest_encode(request, input, 9, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest* request)
{
    unsigned char output[17];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundService_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setMotorEncoderRoundServiceResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest const* request,
                                                              roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse* response)
{
    unsigned char input[662], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest_encode(request, input, 662, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest* request)
{
    unsigned char output[670];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParams_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setRuckigPlannerParamsResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setTagId_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_kuavo_msgs_setTagIdRequest const* request,
                                                                          roswasmc_bounded_1_kuavo_msgs_setTagIdResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setTagIdResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_setTagIdRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_msgs_setTagIdResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_setTagId_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_kuavo_msgs_setTagIdRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_setTagIdRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_setTagIdRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_setTagId_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_kuavo_msgs_setTagIdResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_setTagIdResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_singleStepControl_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse* response)
{
    unsigned char input[4980], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest_encode(request, input, 4980, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_singleStepControl_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest* request)
{
    unsigned char output[4988];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_singleStepControlRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_singleStepControl_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_singleStepControlResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest const* request,
                                                                                   roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse* response)
{
    unsigned char input[25], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrv_respond(roswasmc_capability const* cap,
                                                                                      uint64_t ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_stairAlignmentSrvResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_switchController_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_kuavo_msgs_switchControllerRequest const* request,
                                                                                  roswasmc_bounded_1_kuavo_msgs_switchControllerResponse* response)
{
    unsigned char input[260], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_switchControllerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_switchControllerRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_kuavo_msgs_switchControllerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_switchController_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_kuavo_msgs_switchControllerRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_switchControllerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_switchControllerRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_switchController_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_kuavo_msgs_switchControllerResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_switchControllerResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_switchToNextController_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest const* request,
                                                              roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse* response)
{
    unsigned char input[1], output[789];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 789);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 789 || roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_switchToNextController_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_switchToNextControllerRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_switchToNextController_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse const* response)
{
    unsigned char input[797];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_switchToNextControllerResponse_encode(response, input + 8, 789, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest const* request,
                                                                roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse* response)
{
    unsigned char input[763], output[970];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest_encode(request, input, 763, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 970);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 970 || roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_poll(roswasmc_capability const* cap,
                                                                uint64_t* ticket,
                                                                roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest* request)
{
    unsigned char output[771];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrv_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse const* response)
{
    unsigned char input[978];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdFreeSrvResponse_encode(response, input + 8, 970, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest const* request,
                                                                                      roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse* response)
{
    unsigned char input[615], output[1078];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest_encode(request, input, 615, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1078);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1078 || roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest* request)
{
    unsigned char output[623];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrv_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse const* response)
{
    unsigned char input[1086];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_msgs_twoArmHandPoseCmdSrvResponse_encode(response, input + 8, 1078, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest const* request,
                                                                                 roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse* response)
{
    unsigned char input[806], output[533];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest_encode(request, input, 806, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 533);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 533 || roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest* request)
{
    unsigned char output[814];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRoute_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse const* response)
{
    unsigned char input[541];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_pico_gmr_AmpJoyRouteResponse_encode(response, input + 8, 533, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest const* request,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse* response)
{
    unsigned char input[4], output[265];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest_encode(request, input, 4, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 265);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 265 || roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest* request)
{
    unsigned char output[12];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlMode_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse const* response)
{
    unsigned char input[273];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_ros_interfaces_ocs2ChangeArmCtrlModeResponse_encode(response, input + 8, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest const* request,
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse* response)
{
    unsigned char input[29560], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest_encode(request, input, 29560, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest* request)
{
    unsigned char output[29568];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurve_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_ros_interfaces_planArmTrajectoryBezierCurveResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest const* request,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectory_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_kuavo_ros_interfaces_stopPlanArmTrajectoryResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest const* request,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse* response)
{
    unsigned char input[34], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest_encode(request, input, 34, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest* request)
{
    unsigned char output[42];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_BaseMove_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_BaseMoveResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest const* request,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse* response)
{
    unsigned char input[265], output[266];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest_encode(request, input, 265, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 266);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 266 || roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest* request)
{
    unsigned char output[273];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrived_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse const* response)
{
    unsigned char input[274];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_CheckArrivedResponse_encode(response, input + 8, 266, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest const* request,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse* response)
{
    unsigned char input[4185], output[4449];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest_encode(request, input, 4185, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4449);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4449 || roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest* request)
{
    unsigned char output[4193];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScan_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse const* response)
{
    unsigned char input[4457];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_ControlLaserScanResponse_encode(response, input + 8, 4449, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest const* request,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse* response)
{
    unsigned char input[282], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest_encode(request, input, 282, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest* request)
{
    unsigned char output[290];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMove_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_DispatchMoveResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest const* request,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse* response)
{
    unsigned char input[7321], output[525];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest_encode(request, input, 7321, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 525);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 525 || roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest* request)
{
    unsigned char output[7329];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_ExecTask_respond(roswasmc_capability const* cap,
                                                              uint64_t ticket,
                                                              roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse const* response)
{
    unsigned char input[533];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_ExecTaskResponse_encode(response, input + 8, 525, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest const* request,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse* response)
{
    unsigned char input[1], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometer_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_GetGlobalOdometerResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_call(roswasmc_capability const* cap,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest const* request,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse* response)
{
    unsigned char input[1], output[4449];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 4449);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 4449 || roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_poll(roswasmc_capability const* cap,
                                                                   uint64_t* ticket,
                                                                   roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanList_respond(roswasmc_capability const* cap,
                                                                      uint64_t ticket,
                                                                      roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse const* response)
{
    unsigned char input[4457];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_GetLaserScanListResponse_encode(response, input + 8, 4449, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest const* request,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse* response)
{
    unsigned char input[34], output[521];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest_encode(request, input, 34, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 521);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 521 || roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest* request)
{
    unsigned char output[42];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTarget_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse const* response)
{
    unsigned char input[529];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_MoveToTargetResponse_encode(response, input + 8, 521, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest const* request,
                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse* response)
{
    unsigned char input[520], output[277];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest_encode(request, input, 520, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 277);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 277 || roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest* request)
{
    unsigned char output[528];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometer_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse const* response)
{
    unsigned char input[285];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_ResetTemporaryOdometerResponse_encode(response, input + 8, 277, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest const* request,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchMode_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_SetDispatchModeResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_call(roswasmc_capability const* cap,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest const* request,
                                                               roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse* response)
{
    unsigned char input[523], output[853];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest_encode(request, input, 523, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 853);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 853 || roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest* request)
{
    unsigned char output[531];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServer_respond(roswasmc_capability const* cap,
                                                                  uint64_t ticket,
                                                                  roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse const* response)
{
    unsigned char input[861];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_SetMapServerResponse_encode(response, input + 8, 853, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest const* request,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse* response)
{
    unsigned char input[25], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest_encode(request, input, 25, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_poll(roswasmc_capability const* cap,
                                                                    uint64_t* ticket,
                                                                    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest* request)
{
    unsigned char output[33];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalization_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_StartLocalizationResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_call(roswasmc_capability const* cap,
                                                              roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest const* request,
                                                              roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse* response)
{
    unsigned char input[3], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest_encode(request, input, 3, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest* request)
{
    unsigned char output[11];
    roswasmc_result r;
    roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmap_respond(roswasmc_capability const* cap,
                                                                 uint64_t ticket,
                                                                 roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_leju_mobile_base_msgs_SyncCostmapResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_network_monitor_NetworkPing_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_network_monitor_NetworkPingRequest const* request,
                                                                                  roswasmc_bounded_1_network_monitor_NetworkPingResponse* response)
{
    unsigned char input[8], output[269];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_network_monitor_NetworkPingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_network_monitor_NetworkPingRequest_encode(request, input, 8, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 269);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 269 || roswasmc_bounded_1_network_monitor_NetworkPingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_network_monitor_NetworkPing_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_network_monitor_NetworkPingRequest* request)
{
    unsigned char output[16];
    roswasmc_result r;
    roswasmc_bounded_1_network_monitor_NetworkPingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_network_monitor_NetworkPingRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_network_monitor_NetworkPing_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_network_monitor_NetworkPingResponse const* response)
{
    unsigned char input[277];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_network_monitor_NetworkPingResponse_encode(response, input + 8, 269, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_ocs2_msgs_pause_resume_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest const* request,
                                                                             roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_ocs2_msgs_pause_resume_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ocs2_msgs_pause_resumeRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_ocs2_msgs_pause_resume_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ocs2_msgs_pause_resumeResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_ocs2_msgs_reset_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_ocs2_msgs_resetRequest const* request,
                                                                      roswasmc_bounded_1_ocs2_msgs_resetResponse* response)
{
    unsigned char input[4269], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_msgs_resetResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ocs2_msgs_resetRequest_encode(request, input, 4269, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ocs2_msgs_resetResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_ocs2_msgs_reset_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_ocs2_msgs_resetRequest* request)
{
    unsigned char output[4277];
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_msgs_resetRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ocs2_msgs_resetRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_ocs2_msgs_reset_respond(roswasmc_capability const* cap, uint64_t ticket, roswasmc_bounded_1_ocs2_msgs_resetResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ocs2_msgs_resetResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest const* request,
                                                                        roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse* response)
{
    unsigned char input[5008], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest_encode(request, input, 5008, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest* request)
{
    unsigned char output[5016];
    roswasmc_result r;
    roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_request_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_ocs2_switched_model_msgs_trajectory_requestResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one complete custom Goal using an explicitly initialized owned role bundle. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_send(roswasmc_action_bundle* bundle,
                                                                     roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal const* goal,
                                                                     uint64_t* id)
{
    unsigned char input[1], output[8];
    size_t n = 0;
    uint64_t next;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, id, sizeof *id))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(bundle->count == bundle->capacity)
        return roswasmc_action_bundle_failure(UWVM_ROS_TOO_LARGE);
    if(roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal_encode(goal, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_action_send_goal(&bundle->cap[0], input, n, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length != 8 || (next = uwvm_bounded_get(output, 8)) == 0 || roswasmc_action_bundle_owns(bundle, next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    bundle->goals[bundle->count++] = next;
    *id = next;
    return r;
}

/** Read custom feedback only for a locally owned exact Goal ID; idle leaves output untouched. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_feedback(roswasmc_action_bundle const* bundle,
                                                                         uint64_t id,
                                                                         roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback* feedback)
{
    unsigned char input[8], output[8];
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback next = {0};
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, feedback, sizeof *feedback))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(!roswasmc_action_bundle_owns(bundle, id))
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_feedback(&bundle->cap[2], input, 8, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id ||
       roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *feedback = next;
    return r;
}

/** A validated terminal result removes exactly one local Goal; cancel acknowledgement does not. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_result(roswasmc_action_bundle* bundle,
                                                                       uint64_t id,
                                                                       uint8_t* kind,
                                                                       roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult* result)
{
    unsigned char input[8], output[9];
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult next = {0};
    size_t i;
    roswasmc_result r;
    uint32_t error = roswasmc_action_bundle_check(bundle);
    if(error)
        return roswasmc_action_bundle_failure(error);
    if(!roswasmc_action_bundle_destination(bundle, kind, sizeof *kind) || !roswasmc_action_bundle_destination(bundle, result, sizeof *result) ||
       uwvm_bounded_overlap(kind, sizeof *kind, result, sizeof *result))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    if(!roswasmc_action_bundle_owns(bundle, id))
        return roswasmc_action_bundle_failure(UWVM_ROS_BAD_HANDLE);
    uwvm_bounded_put(input, id, 8);
    r = roswasmc_action_receive_result(&bundle->cap[3], input, 8, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 9 || r.length > sizeof output || uwvm_bounded_get(output, 8) != id || output[8] < 2 || output[8] > 4 ||
       roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult_decode(output + 9, (size_t)r.length - 9, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    for(i = 0; i < bundle->count; ++i)
        if(bundle->goals[i] == id)
        {
            --bundle->count;
            bundle->goals[i] = bundle->goals[bundle->count];
            bundle->goals[bundle->count] = 0;
            break;
        }
    *kind = output[8];
    *result = next;
    return r;
}

/** Poll one incoming custom Goal under an independently activated advertise alias. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_poll(roswasmc_capability const* cap,
                                                                     uint64_t* id,
                                                                     roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal* goal)
{
    unsigned char output[9];
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal next = {0};
    uint64_t selected;
    roswasmc_result r;
    if(!id || !goal || !uwvm_bounded_cap_destination(cap, id, sizeof *id) || !uwvm_bounded_cap_destination(cap, goal, sizeof *goal) ||
       uwvm_bounded_overlap(id, sizeof *id, goal, sizeof *goal))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (selected = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandGoal_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *id = selected;
    *goal = next;
    return r;
}

/** Send one typed custom feedback; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandFeedback_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = 1;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Send one typed custom result; host owns ticket, deadline and one-shot terminal state. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommand_respond_result(roswasmc_capability const* cap,
                                                                               uint64_t id,
                                                                               uint8_t kind,
                                                                               roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult const* value)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!id || kind < 2 || kind > 4 || roswasmc_bounded_1_robot_calibration_msgs_GripperLedCommandResult_encode(value, input + 9, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, id, 8);
    input[8] = kind;
    r = roswasmc_action_respond(cap, input, n + 9, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_FromLL_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_robot_localization_FromLLRequest const* request,
                                                                                roswasmc_bounded_1_robot_localization_FromLLResponse* response)
{
    unsigned char input[24], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_FromLLResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_FromLLRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_robot_localization_FromLLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_FromLL_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_robot_localization_FromLLRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_FromLLRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_FromLLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_FromLL_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_robot_localization_FromLLResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_FromLLResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_GetState_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_robot_localization_GetStateRequest const* request,
                                                                                  roswasmc_bounded_1_robot_localization_GetStateResponse* response)
{
    unsigned char input[268], output[1920];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_GetStateResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_GetStateRequest_encode(request, input, 268, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1920);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1920 || roswasmc_bounded_1_robot_localization_GetStateResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_GetState_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_robot_localization_GetStateRequest* request)
{
    unsigned char output[276];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_GetStateRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_GetStateRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_GetState_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_robot_localization_GetStateResponse const* response)
{
    unsigned char input[1928];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_GetStateResponse_encode(response, input + 8, 1920, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetDatum_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_robot_localization_SetDatumRequest const* request,
                                                                                  roswasmc_bounded_1_robot_localization_SetDatumResponse* response)
{
    unsigned char input[56], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetDatumResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_SetDatumRequest_encode(request, input, 56, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_robot_localization_SetDatumResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetDatum_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_robot_localization_SetDatumRequest* request)
{
    unsigned char output[64];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetDatumRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_SetDatumRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetDatum_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_robot_localization_SetDatumResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_SetDatumResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetPose_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_robot_localization_SetPoseRequest const* request,
                                                                                 roswasmc_bounded_1_robot_localization_SetPoseResponse* response)
{
    unsigned char input[616], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetPoseResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_SetPoseRequest_encode(request, input, 616, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_robot_localization_SetPoseResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetPose_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_robot_localization_SetPoseRequest* request)
{
    unsigned char output[624];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetPoseRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_SetPoseRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetPose_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_robot_localization_SetPoseResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_SetPoseResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetUTMZone_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_robot_localization_SetUTMZoneRequest const* request,
                                                                                    roswasmc_bounded_1_robot_localization_SetUTMZoneResponse* response)
{
    unsigned char input[260], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetUTMZoneResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_SetUTMZoneRequest_encode(request, input, 260, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 0);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 0 || roswasmc_bounded_1_robot_localization_SetUTMZoneResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetUTMZone_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_robot_localization_SetUTMZoneRequest* request)
{
    unsigned char output[268];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_SetUTMZoneRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_SetUTMZoneRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_SetUTMZone_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_robot_localization_SetUTMZoneResponse const* response)
{
    unsigned char input[8];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_SetUTMZoneResponse_encode(response, input + 8, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_ToLL_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_robot_localization_ToLLRequest const* request,
                                                                              roswasmc_bounded_1_robot_localization_ToLLResponse* response)
{
    unsigned char input[24], output[24];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_ToLLResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_ToLLRequest_encode(request, input, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 24);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 24 || roswasmc_bounded_1_robot_localization_ToLLResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_ToLL_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_robot_localization_ToLLRequest* request)
{
    unsigned char output[32];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_ToLLRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_ToLLRequest_decode(output + 8, (size_t)r.length - 8, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *ticket = id;
    *request = next;
    return r;
}

/** Respond to one owned live ticket using the independently granted respond alias. */
static inline roswasmc_result roswasmc_bounded_1_robot_localization_ToLL_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_robot_localization_ToLLResponse const* response)
{
    unsigned char input[32];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_ToLLResponse_encode(response, input + 8, 24, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest const* request,
                                                                      roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse* response)
{
    unsigned char input[1], output[1];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest_encode(request, input, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 1);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 1 || roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result
    roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest* request)
{
    unsigned char output[9];
    roswasmc_result r;
    roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_robot_localization_ToggleFilterProcessingRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_robot_localization_ToggleFilterProcessing_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse const* response)
{
    unsigned char input[9];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_robot_localization_ToggleFilterProcessingResponse_encode(response, input + 8, 1, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}

/** Call one explicitly authorized custom Service exactly once; no replay. */
static inline roswasmc_result roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest const* request,
                                                                                      roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse* response)
{
    unsigned char input[1], output[261];
    size_t n = 0;
    roswasmc_result r;
    roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse next = {0};
    if(!response || !uwvm_bounded_cap_destination(cap, response, sizeof *response) ||
       roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest_encode(request, input, 0, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_service_call(cap, input, n, output, 261);
    if(r.error)
        return r;
    if(!r.has_length || r.length > 261 || roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse_decode(output, (size_t)r.length, &next))
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    *response = next;
    return r;
}

/** Poll one native request; returned nonzero ticket is never a capability handle. */
static inline roswasmc_result roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest* request)
{
    unsigned char output[8];
    roswasmc_result r;
    roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest next = {0};
    uint64_t id;
    if(!ticket || !request || !uwvm_bounded_cap_destination(cap, ticket, sizeof *ticket) || !uwvm_bounded_cap_destination(cap, request, sizeof *request) ||
       uwvm_bounded_overlap(ticket, sizeof *ticket, request, sizeof *request))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    r = roswasmc_poll(cap, output, sizeof output);
    if(r.error)
        return r;
    if(!r.has_length || r.length < 8 || r.length > sizeof output || (id = uwvm_bounded_get(output, 8)) == 0 ||
       roswasmc_bounded_1_taiji_trigger_node_PerformTaijiRequest_decode(output + 8, (size_t)r.length - 8, &next))
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
    roswasmc_bounded_1_taiji_trigger_node_PerformTaiji_respond(roswasmc_capability const* cap,
                                                               uint64_t ticket,
                                                               roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse const* response)
{
    unsigned char input[269];
    size_t n = 0;
    roswasmc_result r;
    if(!ticket || roswasmc_bounded_1_taiji_trigger_node_PerformTaijiResponse_encode(response, input + 8, 261, &n))
        return roswasmc_action_bundle_failure(UWVM_ROS_INVALID);
    uwvm_bounded_put(input, ticket, 8);
    r = roswasmc_service_respond(cap, input, n + 8, NULL, 0);
    if(!r.error && (!r.has_length || r.length))
        r.error = UWVM_ROS_INVALID;
    return r;
}
#endif
