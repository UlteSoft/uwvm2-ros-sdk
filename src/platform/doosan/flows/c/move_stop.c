/**
 * @file move_stop.c
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Original ROS2 MoveStop service, not the legacy RobotStop topic. Select exact
 * Humble(11)/Jazzy(12) records. No request is synthesized, retried or replayed.
 * A true service response is not physical stopping evidence.
 */
#include <ros2/c/roswasm/ros2.h>
#include UWVM_VENDOR_INTERFACES_HEADER
#if UWVM_DOOSAN_PROFILE != 11 && UWVM_DOOSAN_PROFILE != 12
# error "Select the actual ROS2 Humble(11) or Jazzy(12) complete source family"
#endif
#define EXPORT(name) __attribute__((export_name(name)))
static roswasmc_context context;
static roswasmc_capability owner;
static roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request request;
static roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response response;
static roswasmc_result last_rpc;
static int call_observed;
static uint32_t primary, cleanup;
static int configured, started, closed, called, ready, denied;

static uint32_t finish(uint32_t error)
{
    if(error && !primary)
        primary = error;
    if(!closed)
    {
        closed = 1;
        if(roswasmc_is_open(&owner))
            cleanup = roswasmc_close(&owner);
    }
    return primary ? primary : cleanup;
}

/**
 * @brief Store the complete ROS2 MoveStop request.
 * @details Select the exact Humble (profile 11) or Jazzy (12) source family at
 * build time. Serialized, pre-initialization use; invalid input preserves the
 * previous value. The original integer mode is copied, with no motion or host IO.
 * @param[in] mode Original stop_mode enumeration, integer 0..3. Interpretation
 * must be checked against the selected controller/model's native contract.
 * @return 0 on commit, 22 outside 0..3, or 9 after initialization/closure.
 * @see initialize_case
 * @see stop_once
 */
EXPORT("configure_request") uint32_t configure_request(int32_t mode)
{
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request next = {0};
    if(started || closed)
        return 9;
    if(mode < 0 || mode > 3)
        return 22;
    next.stop_mode = mode;
    request = next;
    configured = 1;
    return 0;
}

/**
 * @brief Open the reviewed MoveStop service role or verify default denial.
 * @details Invoke reactor initialization first and serialize all calls. ABI v1
 * is required. Mode 1 needs a configured request plus an externally granted
 * "doosan-move-stop" service alias. A failed open or mode-0 check closes the case.
 * No Runtime grant or controller mode is changed by this function.
 * @param[in] mode 0 expects error 13 with no handle; 1 prepares one service call.
 * @return 0 on expected denial/open success, 9 on reuse, 22 for mode/configuration,
 * 95 for ABI mismatch, or the first SDK open/close error.
 * @see configure_request
 * @see stop_once
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    uint32_t error;
    if(started || closed)
        return 9;
    if(mode > 1 || (!configured && mode == 1))
        return 22;
    started = 1;
    if(uwvm_ros2_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&owner, &context);
    error = roswasmc_open(&owner, "doosan-move-stop", 16);
    if(mode == 0)
    {
        denied = error == 13 && !owner.handle;
        return finish(denied ? 0 : error ? error : 22);
    }
    return error ? finish(error) : 0;
}

/**
 * @brief Call the original MoveStop service once and close its capability.
 * @details Requires mode-1 initialization. A synchronous, serialized call sends
 * the exact stored stop_mode without retry/replay. A complete controller refusal
 * remains available to getters and produces application error 5. Transport or
 * decode failure leaves response_ready() false. A true response is an
 * acknowledgement; physical stopping requires independent native supervision.
 * @return 9 for an invalid lifecycle, otherwise the first transport/decode error,
 * 5 for controller refusal, or the independent close status on controller success.
 * @see response_ready
 * @see controller_success
 * @see cleanup_status
 */
EXPORT("stop_once") uint32_t stop_once(void)
{
    roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response next;
    roswasmc_result result;
    if(!started || closed || called || !configured)
        return 9;
    called = 1;
    result = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_call(&owner, &request, &next);
    last_rpc = result;
    call_observed = 1;
    if(result.error)
        return finish(result.error);
    response = next;
    ready = 1;
    return finish(response.success ? 0 : 5);
}

/** @brief Test whether a complete MoveStop response is retained.
 * @details Serialized cached read remains available after closure, without host IO.
 * @return 1 after successful response decoding, including refusal; otherwise 0.
 * @see stop_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Test whether the service result envelope was recorded.
 * @details Cached flag is set for both successful and failed call attempts.
 * @return 1 after stop_once() attempted a call; otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return call_observed;
}

/** @brief Read the saved MoveStop transport/decode status.
 * @details Meaningful after call_result_ready(); independent of controller success.
 * @return Preserved SDK status, 0 for successful transport/decoding.
 * @see call_result_ready
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the saved call envelope contains a byte count.
 * @details Serialized cached flag is meaningful after call_result_ready().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the saved call-envelope length in bytes.
 * @details Use after call_result_ready() and rpc_has_length(); no buffer is exposed
 * and no host operation occurs. Initial zero does not establish a response.
 * @return Unmodified SDK byte count.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the original MoveStop success Boolean.
 * @details Valid only after response_ready(). Cached acknowledgement is neither a
 * live stop-state observation nor authority for another controller operation.
 * @return Original decoded flag, 0 or 1; zero before readiness is not a response.
 * @see response_ready
 */
EXPORT("controller_success") uint32_t controller_success(void)
{
    return response.success;
}

/** @brief Read whether the no-grant open was denied without a handle.
 * @details Cached mode-0 observation establishes default denial only.
 * @return 1 for status 13 with no retained capability, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched lifecycle or service failure.
 * @details Serialized cached status survives cleanup; invalid configuration
 * returns directly before initialization and is not latched.
 * @return First recorded nonzero error, or 0 if none was recorded.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the service capability's independent close result.
 * @details Serialized cached read; it does not describe physical stop progress.
 * @return Close error, or 0 for successful closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire this case without sending an additional stop request.
 * @details Serialized terminal transition keeps observations until module teardown.
 * It never retries a failed request or synthesizes a controller acknowledgement.
 * @return 9 if already closed; otherwise the first primary error, or close status.
 * @see stop_once
 * @see cleanup_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    return closed ? 9 : finish(0);
}
