/**
 * @file query.c
 * @brief Expose the retained one-shot ABB ROS 2 read-service reactor.
 * @details The caller serializes initialization, the single read operation, result inspection and
 * close. Mode selection exercises explicit denial or an externally granted alias. Every native
 * response field is retained, including controller-reported failures. Primary and cleanup statuses
 * remain independent; the reactor never reopens or retries a request.
 */
/** One complete typed C11 vendor service request. No retry or implicit grant.
 * Reactor driver calls initialize_case(mode), query_once(), getters, close_case().
 * Native response fields are retained even on a controller-reported failure.
 */
#include <ros2/c/roswasm/ros2.h>
#include <abb/c/ros2/abb-ros2-complete/bounded_interfaces.h>
#include <string.h>
#define EXPORT(n) __attribute__((export_name(n)))
static roswasmc_context context;
static roswasmc_capability owner;
static roswasmc_result last_rpc;
static int call_observed;
static int started, closed, called, denied, ready;
static uint32_t primary, cleanup;
static roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response response;

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

/** @brief Initialize the ROS2 GetSpeedRatio service case.
 * @details Invoke reactor initialization first and serialize all exports. ABI
 * v1 is required. Mode 1 opens the externally granted "vendor-query" alias;
 * mode 0 expects error 13 with no handle, then retires the case. Opening failure
 * is terminal. No service request, implicit grant or controller change occurs.
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
    if(uwvm_ros2_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&owner, &context);
    e = roswasmc_open(&owner, "vendor-query", 12);
    if(mode == 0)
    {
        denied = e == 13 && !owner.handle;
        return finish(denied ? 0 : e ? e : 22);
    }
    return e ? finish(e) : 0;
}

/** @brief Issue one complete ROS2 GetSpeedRatio request and close its role.
 * @details Synchronous serialized use after mode-1 initialization. The original
 * empty request is sent once, without retry. A complete response is retained
 * even for controller failure or out-of-range ratio; application success needs
 * result_code=1 and speed_ratio<=100, otherwise status 5. Transport/decode error
 * leaves readiness false. No speed override is set by this read-only operation.
 * @return 9 for invalid lifecycle; otherwise the first SDK error, 5 for an
 * unsuccessful application response, or close status on application success.
 * @see response_ready
 * @see result_code
 * @see cleanup_status
 */
EXPORT("query_once") uint32_t query_once(void)
{
    roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Request request = {0};
    roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_Response candidate;
    roswasmc_result r;
    if(!started || closed || called)
        return 9;
    called = 1;
    r = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_call(&owner, &request, &candidate);
    last_rpc = r;
    call_observed = 1;
    if(r.error)
        return finish(r.error);
    response = candidate;
    ready = 1;
    return finish(response.result_code == 1 && response.speed_ratio <= 100 ? 0 : 5);
}

/** @brief Test whether a complete ROS2 GetSpeedRatio response was retained.
 * @details Serialized cached read survives closure, including controller refusal.
 * @return 1 after complete decoding, otherwise 0; performs no host operation.
 * @see query_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Test whether a service-call envelope was recorded.
 * @details Cached flag includes failed transport/decode attempts, independently of readiness.
 * @return 1 after the call attempt, otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return call_observed;
}

/** @brief Read the saved ROS2 transport/decode status.
 * @details Valid after call_result_ready(); distinct from the controller result code.
 * @return Original SDK status, 0 for successful transport and decoding.
 * @see result_code
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the saved service envelope contains a byte count.
 * @details Serialized cached flag is meaningful after call_result_ready().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the saved ROS2 service length in bytes.
 * @details Valid after call_result_ready() and rpc_has_length(); no buffer is exposed.
 * @return Original SDK byte count; initial zero does not establish a response.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the retained original speed ratio in percent.
 * @details Valid after response_ready(). Values 0..100 meet this application's
 * range check; other original uint8 values remain visible with status 5. This
 * serialized cached read neither changes override nor establishes current speed.
 * @return Original unsigned speed_ratio widened without scaling or clipping.
 * @see query_once
 */
EXPORT("speed_ratio") uint32_t speed_ratio(void)
{
    return response.speed_ratio;
}

/** @brief Read the original controller result code.
 * @details Valid after response_ready(); this application requires code 1 for
 * success. All other uint16 values are retained with the complete diagnostic.
 * @return Unmodified original unsigned result_code widened to uint32.
 * @see copy_message
 */
EXPORT("result_code") uint32_t result_code(void)
{
    return response.result_code;
}

/** @brief Read the complete diagnostic's byte count.
 * @details Valid after response_ready(); excludes a terminator. Message storage
 * remains module-owned through closure until teardown, with no host operation.
 * @return Retained message length within the selected original-family capacity.
 * @see copy_message
 */
EXPORT("message_size") uint32_t message_size(void)
{
    return response.message.size;
}

/** @brief Copy the entire original ROS2 diagnostic without a terminator.
 * @details Serialized cached-value copy after response_ready(), including after
 * closure. No partial write or truncation; failure leaves destination unchanged.
 * The caller retains output ownership and lends storage only for this call.
 * @param[out] destination Writable Guest bytes disjoint from the response; null
 * is permitted only for an empty retained message.
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

/** @brief Read the no-grant ROS2 initialization observation.
 * @details Cached fact establishes default denial only, without positive native credit.
 * @return 1 only for open status 13 with no retained handle, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched operation/application failure.
 * @details Serialized cached status survives cleanup; invalid mode returns
 * directly before initialization and is not latched here.
 * @return First recorded nonzero error, or 0 if none was latched.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent ROS2 capability-close result.
 * @details Cached close status never replaces the primary service/controller error.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire this case without sending another GetSpeedRatio request.
 * @details Serialized terminal transition retains the response until teardown;
 * it never retries a request, revokes an alias, or changes controller override.
 * @return 9 if already closed; otherwise the first primary error, or close status.
 * @see query_once
 * @see cleanup_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    if(closed)
        return 9;
    return finish(0);
}
