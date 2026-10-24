/**
 * @file force_mode.c
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Complete original ROS2 SetForceMode service route. Select ur_msgs, not the
 * separate PolyScope X family. This is one caller-configured operation, not
 * the original Dashboard/controller/TF/Marker example orchestration.
 * Capability close does not stop force mode. Its independently authorized
 * original stop_force_mode service and native controller supervision remain
 * required; no implicit stop, resume, retry or safety-state reset occurs here.
 */
#include <ros2/c/roswasm/ros2.h>
#include UWVM_VENDOR_INTERFACES_HEADER
#define EXPORT(name) __attribute__((export_name(name)))
static roswasmc_context context;
static roswasmc_capability owner;
static roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request request;
static roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response response;
static roswasmc_result last_rpc;
static uint32_t primary, cleanup;
static int configured, started, closed, called, ready, denied, observed;

static uint32_t finish(uint32_t status)
{
    if(status && !primary)
        primary = status;
    if(!closed)
    {
        closed = 1;
        if(roswasmc_is_open(&owner))
            cleanup = roswasmc_close(&owner);
    }
    return primary ? primary : cleanup;
}
/**
 * @brief Copy a complete original ROS2 ur_msgs/SetForceMode request.
 * @details Call before initialization, with serialized access to this singleton
 * reactor. The bounded decoder rejects malformed/nonfinite values without
 * changing the previous request. Type must be 1..3, damping 0..1, gain 0..2,
 * and speed/deviation limits nonnegative. Caller-selected defaults are retained;
 * no transform lookup or installation validation occurs here. Borrowed input is
 * needed only during this call; the decoded value is owned until module teardown.
 * @param[in] bytes Readable, nonoverlapping canonical request bytes in Guest memory.
 * @param[in] length Exact byte count, within the selected family's wire bound.
 * @param[in] static_base_frame Must be 1, asserting the caller reviewed the fixed
 * base frame and controller preconditions. This does not grant a capability.
 * @return 0 on commit, 9 after initialization/closure, or 22 for invalid input.
 * @see initialize_case
 * @see roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_decode
 */
EXPORT("configure_request")

uint32_t configure_request(void const* bytes, uint32_t length, uint32_t static_base_frame)
{
    roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request next;
    unsigned i;
    if(started || closed)
        return 9;
    if(static_base_frame != 1 || roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_decode(bytes, length, &next))
        return 22;
    if(next.type < 1 || next.type > 3 || next.damping_factor < 0 || next.damping_factor > 1 || next.gain_scaling < 0 || next.gain_scaling > 2)
        return 22;
    for(i = 0; i < 6; ++i)
        if(next.deviation_limits[i] < 0)
            return 22;
    if(next.speed_limits.linear.x < 0 || next.speed_limits.linear.y < 0 || next.speed_limits.linear.z < 0 || next.speed_limits.angular.x < 0 ||
       next.speed_limits.angular.y < 0 || next.speed_limits.angular.z < 0)
        return 22;
    request = next;
    configured = 1;
    return 0;
}

/**
 * @brief Open the single reviewed force-mode service role or verify denial.
 * @details Invoke the Wasm reactor initializer first. Serialized, one-shot use;
 * ABI v1 is required. Mode 1 requires configure_request() and an externally
 * granted "ur-force-mode" service alias. Mode 0 expects status 13 and no handle,
 * then closes the case. Failure retires an acquired role without retrying.
 * @param[in] mode 0 for a no-grant denial check; 1 for a configured service call.
 * @return 0 on successful opening/expected denial, 9 on reuse, 22 for bad mode
 * or missing configuration, 95 for ABI mismatch, otherwise the open error.
 * @see configure_request
 * @see start_once
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    uint32_t status;
    if(started || closed)
        return 9;
    if(mode > 1 || (mode == 1 && !configured))
        return 22;
    started = 1;
    if(uwvm_ros2_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&owner, &context);
    status = roswasmc_open(&owner, "ur-force-mode", 13);
    if(mode == 0)
    {
        denied = status == 13 && !owner.handle;
        return finish(denied ? 0 : status ? status : 22);
    }
    return status ? finish(status) : 0;
}

/**
 * @brief Issue one complete force-mode request and retire its service role.
 * @details Requires a configured, open case. Runs synchronously, once, under
 * serialized reactor access. A decoded controller refusal is retained for the
 * getters and returns application error 5; transport/decode failure leaves the
 * response unavailable. Closing this service capability does not stop force
 * mode. The original stop_force_mode service and native supervision require
 * independently reviewed authority; this function never invokes them.
 * @return 0 for controller success and clean closure, 9 for invalid lifecycle,
 * 5 for controller refusal, or the first transport/decode/close error.
 * @see response_ready
 * @see controller_success
 * @see cleanup_status
 */
EXPORT("start_once") uint32_t start_once(void)
{
    roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response next;
    roswasmc_result result;
    if(!started || closed || called || !configured)
        return 9;
    called = 1;
    result = roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call(&owner, &request, &next);
    last_rpc = result;
    observed = 1;
    if(result.error)
        return finish(result.error);
    response = next;
    ready = 1;
    return finish(response.success ? 0 : 5);
}

/** @brief Test whether a complete response was retained.
 * @details Serialized cached read; remains valid after closure, without host IO.
 * @return 1 after successful decoding, including a controller refusal; otherwise 0.
 * @see start_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Read the original SetForceMode success flag.
 * @details Valid only when response_ready() is 1. Cached acknowledgement does not
 * establish physical force-mode state or authorize further operations.
 * @return Original decoded Boolean, 0 or 1; initial zero is not a response.
 * @see response_ready
 */
EXPORT("controller_success") uint32_t controller_success(void)
{
    return response.success;
}

/** @brief Test whether a service-call result envelope exists.
 * @details Serialized cached read; transport failure also sets this flag.
 * @return 1 after start_once() attempted the call, otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return observed;
}

/** @brief Read the last service transport/decode status.
 * @details Valid after call_result_ready(); distinct from controller_success().
 * @return 0 for successful transport/decoding, otherwise the preserved SDK error.
 * @see call_result_ready
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the saved service result carries a byte count.
 * @details Cached envelope flag, meaningful only after call_result_ready().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the saved service result length in bytes.
 * @details Use only when call_result_ready() and rpc_has_length() are 1. This
 * serialized value read neither copies response data nor performs host IO.
 * @return The unmodified SDK byte count; zero before a call is not evidence.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the no-grant initialization observation.
 * @details Cached mode-0 fact; it confers no positive service or robot qualification.
 * @return 1 only if opening returned 13 with no retained handle, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first lifecycle or service failure.
 * @details Serialized cached status remains stable through cleanup; an invalid
 * pre-initialization argument returns directly and is not latched here.
 * @return First latched nonzero error, or 0 if none was recorded.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent capability-close result.
 * @details Cached status; closing a service handle does not stop force mode.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire the case without issuing or replaying a service request.
 * @details Serialized terminal transition. Retains request/response observations
 * until module teardown and never performs the separate force-mode stop service.
 * @return 9 if already closed; otherwise the first primary error, or close status.
 * @see cleanup_status
 * @see start_once
 */
EXPORT("close_case") uint32_t close_case(void)
{
    return closed ? 9 : finish(0);
}
