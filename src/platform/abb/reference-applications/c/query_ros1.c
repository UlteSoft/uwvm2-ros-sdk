/**
 * @file query_ros1.c
 * @brief Expose the retained one-shot ABB ROS 1 read-service reactor.
 * @details The caller serializes initialization, the single read operation, result inspection and
 * close. Mode selection exercises explicit denial or an externally granted alias. Every native
 * response field is retained, including controller-reported failures. Primary and cleanup statuses
 * remain independent; the reactor never reopens or retries a request.
 */
/** One complete typed C11 vendor service request. No retry or implicit grant.
 * Reactor driver calls initialize_case(mode), query_once(), getters, close_case().
 * Native response fields are retained even on a controller-reported failure.
 */
#include <ros1/c/roswasm/ros1.h>
#include <abb/c/ros2/abb-ros2-complete/bounded_interfaces.h>
#include <string.h>
#define EXPORT(n) __attribute__((export_name(n)))
static roswasmc_context context;
static roswasmc_capability owner;
static roswasmc_result last_rpc;
static int call_observed;
static int started, closed, called, denied, ready;
static uint32_t primary, cleanup;
static roswasmc_bounded_1_abb_robot_msgs_GetSpeedRatioResponse response;

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

/** @brief Initialize the original ROS1 GetSpeedRatio service case.
 * @details Invoke reactor initialization first and serialize all exports. ROS1
 * ABI v1 and the matching ROS1 generated family are required. Mode 1 opens the
 * externally granted "vendor-query" alias; mode 0 expects error 13 without a
 * handle, then retires the case. Opening failure is terminal; no rights change.
 * @param[in] mode 0 for no-grant verification, 1 for one permitted observation.
 * @return 0 on expected denial/open success, 9 on reuse, 22 for invalid mode,
 * 95 for ABI mismatch, otherwise the first SDK error.
 * @see query_once
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    uint32_t e;
    if(started || closed)
        return 9;
    if(mode > 1)
        return 22;
    started = 1;
    if(uwvm_ros1_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros1_backend();
    roswasmc_capability_init(&owner, &context);
    e = roswasmc_open(&owner, "vendor-query", 12);
    if(mode == 0)
    {
        denied = e == 13 && !owner.handle;
        return finish(denied ? 0 : e ? e : 22);
    }
    return e ? finish(e) : 0;
}

/** @brief Issue one complete ROS1 GetSpeedRatio request and close its role.
 * @details Synchronous serialized use after mode-1 initialization. The original
 * empty ROS1 request is sent once, without retry. A complete response survives
 * controller refusal and closure. Application success requires result_code=1
 * and speed_ratio<=100; other complete values return 5. Transport/decode failure
 * leaves readiness false. This read never changes controller speed override.
 * @return 9 for invalid lifecycle; otherwise first SDK error, 5 for controller
 * refusal/out-of-range ratio, or close status after application success.
 * @see response_ready
 * @see result_code
 */
EXPORT("query_once") uint32_t query_once(void)
{
    roswasmc_bounded_1_abb_robot_msgs_GetSpeedRatioRequest request = {0};
    roswasmc_bounded_1_abb_robot_msgs_GetSpeedRatioResponse candidate;
    roswasmc_result r;
    if(!started || closed || called)
        return 9;
    called = 1;
    r = roswasmc_bounded_1_abb_robot_msgs_GetSpeedRatio_call(&owner, &request, &candidate);
    last_rpc = r;
    call_observed = 1;
    if(r.error)
        return finish(r.error);
    response = candidate;
    ready = 1;
    return finish(response.result_code == 1 && response.speed_ratio <= 100 ? 0 : 5);
}

/** @brief Test whether the complete ROS1 GetSpeedRatio response was retained.
 * @details Serialized cached read survives closure, including controller refusal.
 * @return 1 after complete decoding, otherwise 0; performs no host operation.
 * @see query_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Test whether a ROS1 service-call envelope was recorded.
 * @details Cached flag includes failed transport/decode attempts, independently of readiness.
 * @return 1 after the call attempt, otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return call_observed;
}

/** @brief Read the saved ROS1 transport/decode status.
 * @details Valid after call_result_ready(); separate from the controller result_code.
 * @return Original SDK status, 0 for successful transport and decoding.
 * @see result_code
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the ROS1 envelope contains a byte count.
 * @details Serialized cached flag is meaningful after call_result_ready().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the saved ROS1 service length in bytes.
 * @details Valid after call_result_ready() and rpc_has_length(); no buffer is exposed.
 * @return Original SDK byte count; initial zero does not establish a response.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the retained original speed ratio in percent.
 * @details Valid after response_ready(); values 0..100 satisfy the application
 * range check. Other original uint8 values remain visible with status 5. No
 * scaling, clipping, controller write or live speed observation occurs.
 * @return Unmodified unsigned speed_ratio widened to uint32.
 * @see query_once
 */
EXPORT("speed_ratio") uint32_t speed_ratio(void)
{
    return response.speed_ratio;
}

/** @brief Read the original ROS1 controller result code.
 * @details Valid after response_ready(); this application requires code 1 for
 * success, while all other uint16 values remain visible with their diagnostic.
 * @return Unmodified unsigned result_code widened to uint32.
 * @see copy_message
 */
EXPORT("result_code") uint32_t result_code(void)
{
    return response.result_code;
}

/** @brief Read the original diagnostic length in bytes.
 * @details Valid after response_ready(); excludes a terminator. The complete
 * message remains module-owned after closure until teardown, without host IO.
 * @return Retained byte count within the selected ROS1 bounded capacity.
 * @see copy_message
 */
EXPORT("message_size") uint32_t message_size(void)
{
    return response.message.size;
}

/** @brief Copy the complete ROS1 diagnostic into caller-owned Guest storage.
 * @details Serialized cached-value copy after readiness, including controller
 * refusal/closure. No partial write, truncation or terminator; failure leaves
 * destination unchanged. Output storage is borrowed only during this call.
 * @param[out] destination Writable bytes disjoint from the cached response;
 * null is allowed only for an empty retained message.
 * @param[in] capacity Valid destination byte count, at least message_size().
 * @return 0 on full copy, 9 before readiness, 90 for insufficient capacity, or
 * 22 for invalid/overlapping storage or an invalid retained message count.
 * @see message_size
 * @see response_ready
 */
EXPORT("copy_message") uint32_t copy_message(unsigned char* destination, uint32_t capacity)
{
    if(!ready)
        return 9;
    if(response.message.size > sizeof response.message.data)
        return 22;
    if(capacity < response.message.size)
        return 90;
    if(!destination && response.message.size)
        return 22;
    if(uwvm_bounded_overlap(destination, response.message.size, &response, sizeof response))
        return 22;
    if(response.message.size)
        memcpy(destination, response.message.data, response.message.size);
    return 0;
}

/** @brief Read the no-grant ROS1 initialization observation.
 * @details Cached fact establishes default denial only, without positive native credit.
 * @return 1 only for open status 13 with no retained handle, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched ROS1 operation/application failure.
 * @details Serialized cached status survives cleanup; invalid mode returns
 * directly before initialization and is not latched here.
 * @return First recorded nonzero error, or 0 if no failure was latched.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent ROS1 capability-close result.
 * @details Cached close status never replaces the primary service/controller error.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire this ROS1 case without sending another service request.
 * @details Serialized terminal transition retains observations until teardown;
 * it never retries a request, revokes an alias or changes controller override.
 * @return 9 if already closed; otherwise first primary error, or close status.
 * @see query_once
 * @see cleanup_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    if(closed)
        return 9;
    return finish(0);
}
