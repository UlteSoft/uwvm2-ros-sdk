/**
 * @file query.c
 * @brief Expose the retained one-shot YASKAWA ROS 2 read-service reactor.
 * @details The caller serializes initialization, the single read operation, result inspection and
 * close. Mode selection exercises explicit denial or an externally granted alias. Every native
 * response field is retained, including controller-reported failures. Primary and cleanup statuses
 * remain independent; the reactor never reopens or retries a request.
 */
/**
 * One complete ReadSingleIO request through the portable ROS2 C SDK.
 *
 * Build with the exact generated Yaskawa bounded_interfaces.h. Initialize this
 * no-entry reactor through the embedding before invoking exported functions.
 * initialize_case(0) checks default denial. initialize_case(1) requests only the
 * separately authorized "vendor-query" Service alias. query_once() reads the
 * example controller address 10011 exactly once and closes its capability.
 * It never writes an IO element, retries a request, resets errors or changes
 * Runtime, debugger, controller mode or update settings.
 *
 * A transport/decode error leaves response_ready() false. A complete controller
 * response is retained even when success is false or result_code is nonzero;
 * query_once() then returns application status 5. Inspect response_ready(),
 * result_code(), response_success(), io_value() and the complete message before
 * deciding what that result means for the selected physical installation.
 * primary_status() and cleanup_status() preserve operation and close failures
 * separately. close_case() retires an initialized session without a query.
 *
 * message_size() gives the exact diagnostic byte count. copy_message() copies
 * the entire value into caller-owned Guest linear memory, with no terminator,
 * truncation or partial write. The embedding supplies a valid Guest buffer and
 * capacity; insufficient capacity returns 90 before writing any destination
 * byte. A message is application data and never authority to perform recovery.
 */
#include <ros2/c/roswasm/ros2.h>
#include <yaskawa/c/ros2/yaskawa-ros2-complete/bounded_interfaces.h>
#include <string.h>

#define EXPORT(name) __attribute__((export_name(name)))

static roswasmc_context context;
static roswasmc_capability owner;
static int started, closed, called, denied, ready;
static uint32_t primary, cleanup;
static roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_Response response;
static roswasmc_result last_rpc;
static int call_observed;

/** Record the first failure and close the owned capability exactly once. */
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

/** @brief Initialize one read-only MotoROS2 IO service observation.
 * @details Invoke reactor initialization first and serialize exports. ABI v1
 * is required. Mode 1 requests the externally granted "vendor-query" alias;
 * mode 0 verifies error 13 and an absent handle, then retires the case. An open
 * failure is terminal. This function grants no rights and changes no IO value.
 * @param[in] mode 0 for a no-grant check; 1 for one permitted observation.
 * @return 0 on expected denial/open success, 9 on reuse, 22 for invalid mode,
 * 95 for ABI mismatch, otherwise the first SDK error.
 * @see query_once
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

/** @brief Read original controller address 10011 once and close the service role.
 * @details Synchronous serialized call after mode-1 initialization; no retry or
 * write. A complete response, including message bytes and controller refusal,
 * is retained. Application success requires success=true and result_code=0;
 * other complete responses yield 5. Transport/decode failure leaves readiness
 * false. Native address validity/model semantics require independent review.
 * @return 9 for invalid lifecycle; otherwise first SDK error, 5 for controller
 * refusal, or close status after an accepted application response.
 * @see response_ready
 * @see copy_message
 */
EXPORT("query_once") uint32_t query_once(void)
{
    roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_Request request = {0};
    roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_Response candidate;
    roswasmc_result result;
    if(!started || closed || called)
        return 9;
    called = 1;
    request.address = 10011;
    result = roswasmc_bounded_2_motoros2_interfaces_srv_ReadSingleIO_call(&owner, &request, &candidate);
    last_rpc = result;
    call_observed = 1;
    if(result.error)
        return finish(result.error);
    response = candidate;
    ready = 1;
    return finish(response.success && response.result_code == 0 ? 0 : 5);
}

/** @brief Test whether a complete ReadSingleIO response was retained.
 * @details Serialized cached read survives closure, including controller refusal.
 * @return 1 after complete response decoding, otherwise 0; performs no host IO.
 * @see query_once
 */
EXPORT("response_ready") uint32_t response_ready(void)
{
    return ready;
}

/** @brief Test whether a service-call envelope was recorded.
 * @details Cached flag includes failed transport/decode attempts, independent of readiness.
 * @return 1 after the call attempt, otherwise 0.
 * @see rpc_status
 */
EXPORT("call_result_ready") uint32_t call_result_ready(void)
{
    return call_observed;
}

/** @brief Read the saved ReadSingleIO transport/decode status.
 * @details Valid after call_result_ready(); separate from the controller result_code.
 * @return Original SDK status, 0 for successful transport/decoding.
 * @see result_code
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

/** @brief Read the saved service length in bytes.
 * @details Valid after call_result_ready() and rpc_has_length(); no buffer is exposed.
 * @return Original SDK byte count; initial zero does not establish a response.
 * @see rpc_has_length
 */
EXPORT("rpc_length") uint64_t rpc_length(void)
{
    return last_rpc.length;
}

/** @brief Read the original MotoROS2 result_code.
 * @details Valid after response_ready(); zero is required by this application's
 * success predicate. Cached controller data never authorizes error recovery.
 * @return Unmodified unsigned result code, including controller refusal.
 * @see response_success
 */
EXPORT("result_code") uint32_t result_code(void)
{
    return response.result_code;
}

/** @brief Read the original ReadSingleIO success flag.
 * @details Valid after response_ready(); inspect result_code() and message too.
 * @return Original decoded Boolean, 0 or 1; initial zero is not a response.
 * @see result_code
 */
EXPORT("response_success") uint32_t response_success(void)
{
    return response.success;
}

/** @brief Read the original signed IO value for address 10011.
 * @details Valid after response_ready(); interpretation and units depend on the
 * selected controller's address map. No conversion, write, or live poll occurs.
 * @return Unmodified int32 response value, including on controller refusal.
 * @see query_once
 */
EXPORT("io_value") int32_t io_value(void)
{
    return response.value;
}

/** @brief Read the exact diagnostic message length in bytes.
 * @details Valid after response_ready(); counted bytes exclude a terminator and
 * remain module-owned until teardown. Reading size performs no host operation.
 * @return Full retained message byte count within the selected bounded capacity.
 * @see copy_message
 */
EXPORT("message_size") uint32_t message_size(void)
{
    return response.message.size;
}

/** @brief Copy the complete diagnostic into caller-owned Guest memory.
 * @details Serialized cached-value copy after response_ready(), including after
 * closure/refusal. No terminator, truncation or partial write; failure leaves
 * destination unchanged. Destination is borrowed only during this call.
 * @param[out] destination Valid writable storage disjoint from the response;
 * null is permitted only when the retained message is empty.
 * @param[in] capacity Valid destination bytes; must be at least message_size().
 * @return 0 on complete copy, 9 before readiness, 90 for insufficient capacity,
 * or 22 for invalid/overlapping storage or an invalid retained message count.
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

/** @brief Read the mode-0 default-denial observation.
 * @details Cached fact establishes no positive service/native controller behavior.
 * @return 1 only for open status 13 with no retained handle; otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched operation/application failure.
 * @details Serialized cached status survives cleanup; a direct invalid-mode
 * refusal before initialization is not latched here.
 * @return First recorded nonzero error, or 0 if none was latched.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent service capability-close result.
 * @details Cached status never replaces the primary operation/controller failure.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire the case without issuing or replaying an IO request.
 * @details Serialized terminal transition retains observations until teardown;
 * it neither writes IO nor resets/revokes controller or Runtime authority.
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
