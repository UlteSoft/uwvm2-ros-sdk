/**
 * @file query.c
 * @brief Expose the retained one-shot FANUC ROS 2 read-service reactor.
 * @details The caller serializes initialization, the single read operation, result inspection and
 * close. Mode selection exercises explicit denial or an externally granted alias. Every native
 * response field is retained, including controller-reported failures. Primary and cleanup statuses
 * remain independent; the reactor never reopens or retries a request.
 */
/**
 * One complete GetTCPSpeed observation through the portable ROS2 C SDK.
 *
 * Initialize constructors before calling this no-entry reactor. Mode 0 checks
 * local default denial; mode 1 opens only the reviewed "vendor-query" alias.
 * query_once() sends one group-1 request, retains all four original fields on
 * a complete response, and closes its capability. No request is retried.
 *
 * Check response_ready() before reading fields. A nonzero controller result,
 * mismatched group or negative speed yields application error 5 while preserving
 * the complete decoded response. The canonical decoder refuses nonfinite speed
 * before readiness. timetag is a signed
 * original controller value; it is not a Guest deadline or current stop proof.
 * The first operation failure and independent close failure remain separate.
 */
#include <ros2/c/roswasm/ros2.h>
#include <fanuc/c/ros2/fanuc-ros2-complete/bounded_interfaces.h>
#include <math.h>

#define EXPORT(name) __attribute__((export_name(name)))

static roswasmc_context context;
static roswasmc_capability owner;
static int started, closed, called, denied, ready;
static uint32_t primary, cleanup;
static roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_Response response;
static roswasmc_result last_rpc;
static int call_observed;

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

/** @brief Initialize the one-shot GetTCPSpeed service case.
 * @details Call the reactor initializer first and serialize all exports. ABI v1
 * is required. Mode 1 needs an externally reviewed "vendor-query" service alias;
 * mode 0 verifies error 13 with no handle and retires the case. Opening failure
 * also closes any acquired role. No grant, controller setting or motion changes.
 * @param[in] mode 0 for a no-grant check, 1 for one permitted observation.
 * @return 0 on expected denial/open success, 9 on reuse, 22 for invalid mode,
 * 95 for ABI mismatch, otherwise the first SDK error.
 * @see query_once
 * @see denied_verified
 */
EXPORT("initialize_case") uint32_t initialize_case(uint32_t mode)
{
    uint32_t error;
    if(started || closed)
        return 9;
    if(mode > 1)
        return 22;
    started = 1;
    if(uwvm_ros2_abi_version() != 1)
        return finish(95);
    context.backend = roswasmc_ros2_backend();
    roswasmc_capability_init(&owner, &context);
    error = roswasmc_open(&owner, "vendor-query", 12);
    if(mode == 0)
    {
        denied = error == 13 && !owner.handle;
        return finish(denied ? 0 : error ? error : 22);
    }
    return error ? finish(error) : 0;
}

/** @brief Read group 1 TCP speed once, retaining every original response field.
 * @details Synchronous serialized call after mode-1 initialization. The attempt
 * is consumed before dispatch, with no retry. A complete response is retained
 * even for controller failure, mismatched group or negative speed; those yield
 * application status 5. Transport/decode errors leave response_ready() false.
 * The capability is closed on every completed path; cleanup stays independent.
 * @return 9 for invalid lifecycle; otherwise first SDK error, 5 for invalid
 * application response, or close status after a valid controller response.
 * @see response_ready
 * @see controller_result
 * @see cleanup_status
 */
EXPORT("query_once") uint32_t query_once(void)
{
    roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_Request request = {0};
    roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_Response candidate;
    roswasmc_result result;
    if(!started || closed || called)
        return 9;
    called = 1;
    request.group = 1;
    result = roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_call(&owner, &request, &candidate);
    last_rpc = result;
    call_observed = 1;
    if(result.error)
        return finish(result.error);
    response = candidate;
    ready = 1;
    return finish(response.result == 0 && response.group == request.group && isfinite(response.speed) && response.speed >= 0 ? 0 : 5);
}

/** @brief Test whether the complete GetTCPSpeed response is retained.
 * @details Serialized cached read, available after closure including controller refusal.
 * @return 1 after complete decoding, otherwise 0; no host IO is performed.
 * @see query_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Test whether a service-call envelope was recorded.
 * @details Cached flag includes failed transport/decode attempts, independently of readiness.
 * @return 1 after the call was attempted, otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return call_observed;
}

/** @brief Read the saved GetTCPSpeed transport/decode status.
 * @details Valid after call_result_ready(); distinct from the original controller result.
 * @return SDK status, 0 for successful transport and decoding.
 * @see controller_result
 */
EXPORT("rpc_status") uint32_t rpc_status(void)
{
    return last_rpc.error;
}

/** @brief Test whether the saved RPC envelope contains a byte count.
 * @details Serialized cached flag is meaningful after call_result_ready().
 * @return Original SDK has_length Boolean, 0 or 1.
 * @see rpc_length
 */
EXPORT("rpc_has_length") uint32_t rpc_has_length(void)
{
    return last_rpc.has_length;
}

/** @brief Read the saved RPC length in bytes.
 * @details Valid after call_result_ready() and rpc_has_length(); no buffer is exposed.
 * @return Original SDK byte count; initial zero does not establish a response.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the original signed controller result.
 * @details Serialized cached field, valid after response_ready(); zero is the
 * application's accepted controller result and never physical-state proof.
 * @return Unmodified int32 result, including controller failures.
 * @see response_ready
 */
EXPORT("controller_result") int32_t controller_result(void)
{
    return response.result;
}

/** @brief Read the original controller timetag without reinterpretation.
 * @details Valid after response_ready(); signed controller units/epoch follow
 * the pinned original interface. It is neither a Guest deadline nor freshness proof.
 * @return Unmodified signed int32 timetag; no clock conversion is performed.
 * @see response_ready
 */
EXPORT("controller_timetag") int32_t controller_timetag(void)
{
    return response.timetag;
}

/** @brief Read the retained original TCP speed scalar.
 * @details Valid after response_ready(). Unit and installation interpretation
 * follow the selected original GetTCPSpeed contract; no scaling occurs here.
 * Nonfinite encoding is refused before commit; negative speed is retained with
 * application error 5. The value is cached and does not authorize motion.
 * @return Unmodified original float32 speed.
 * @see query_once
 * @see response_ready
 */
EXPORT("tcp_speed") float tcp_speed(void)
{
    return response.speed;
}

/** @brief Read the original unsigned group identifier.
 * @details Valid after response_ready(); the group-1 query retains mismatches
 * while reporting application status 5. Serialized read performs no host IO.
 * @return Original group value widened without changing its value.
 * @see query_once
 */
EXPORT("response_group") uint32_t response_group(void)
{
    return response.group;
}

/** @brief Read the mode-0 default-denial observation.
 * @details Cached fact establishes no positive service or native integration.
 * @return 1 only for open status 13 with no retained handle, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched operation/application failure.
 * @details Serialized cached status survives cleanup; pre-initialization argument
 * refusal returns directly and is not latched here.
 * @return First nonzero latched error, or 0 if none was recorded.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent capability-close status.
 * @details Serialized cached status never replaces the primary operation error.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire the case without sending another TCP-speed request.
 * @details Serialized terminal transition keeps cached observations until module
 * teardown. No retry, alias revocation or controller operation is synthesized.
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
