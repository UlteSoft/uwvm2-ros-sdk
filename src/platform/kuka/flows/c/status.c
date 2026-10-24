/**
 * @file status.c
 * @brief Retained kuka native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/kuka/en_US/README.md
 */

/**
 * Complete, read-only KUKA KssStatus reactor using the portable ROS2 C SDK.
 *
 * Build with the exact generated KUKA bounded_records.h and the shared
 * industrial examples CMake entry. The host must initialize this no-entry
 * reactor before invoking exports. initialize_case(0) checks default denial;
 * initialize_case(1) requests the separately authorized "vendor-status" alias
 * and subscribes once. Neither mode changes Runtime policy or controller state.
 *
 * Call poll_once() repeatedly from the embedding's executor. Error 11 means
 * that no sample is available yet; it preserves the previous complete sample.
 * A zero return publishes one newly decoded sample to the getters below. Other
 * errors close the owned capability and remain visible through primary_status()
 * and cleanup_status(). close_case() explicitly retires a successful session.
 *
 * Inspect sample_ready() before reading fields. sample_count() saturates at
 * UINT32_MAX and is application data, not a freshness or safety guarantee.
 * The original message has no timestamp. A stored sample, including one kept
 * after closure, must never be interpreted as current physical robot state.
 * Emergency stop, motion permission and recovery require independent native
 * and hardware supervision; no single field authorizes a robot action.
 */
#include <ros2/c/roswasm/ros2.h>
#include UWVM_VENDOR_RECORDS_HEADER

#define EXPORT(name) __attribute__((export_name(name)))

static roswasmc_context context;
static roswasmc_capability owner;
static int started, closed, denied;
static uint32_t primary, cleanup, samples;
static roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus value;
static unsigned char bytes[ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_MAX_WIRE_BYTES];

/** Preserve the first operation failure and the independent close result. */
static uint32_t finish(uint32_t error)
{
    if(error && !primary)
        primary = error;
    if(!closed)
    {
        closed = 1;
        if(owner.handle)
            cleanup = roswasmc_close(&owner);
    }
    return primary ? primary : cleanup;
}

/** @brief Initialize the read-only KssStatus subscription case.
 * @details Invoke reactor initialization first and serialize all exports. ABI
 * v1 is required. Mode 1 opens the externally granted "vendor-status" alias
 * and subscribes once; failure closes the acquired capability. Mode 0 expects
 * open error 13 with no handle, then retires the case. No rights are granted here.
 * @param[in] mode 0 for no-grant verification, 1 for a permitted subscription.
 * @return 0 on expected denial/subscription success, 9 on reuse, 22 for invalid
 * mode, 95 for ABI mismatch, otherwise the first SDK open/subscribe error.
 * @see poll_once
 * @see close_case
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
    error = roswasmc_open(&owner, "vendor-status", 13);
    if(mode == 0)
    {
        denied = error == 13 && !owner.handle;
        return finish(denied ? 0 : error ? error : 22);
    }
    if(!error)
        error = roswasmc_subscribe(&owner);
    return error ? finish(error) : 0;
}

/** Commit a complete canonical sample only after successful validation. */
static uint32_t accept_sample(unsigned char const* data, size_t length)
{
    uint32_t error;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus candidate;
    error = roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_decode(data, length, &candidate);
    if(error)
        return error;
    value = candidate;
    if(samples != UINT32_MAX)
        ++samples;
    return 0;
}

/** @brief Poll and commit one complete original KssStatus sample.
 * @details Nonblocking serialized use after successful mode-1 initialization.
 * Error 11 preserves the previous sample and role; another error closes the
 * capability. Only complete canonical decoding commits a new sample. The
 * embedding schedules calls and deadlines; this reactor starts no timer/thread.
 * @return 0 for a committed sample, 11 if idle, 9 for invalid lifecycle, or the
 * first transport/decode/length error. Close status is recorded separately.
 * @see sample_ready
 * @see sample_count
 * @see cleanup_status
 */
EXPORT("poll_once") uint32_t poll_once(void)
{
    roswasmc_result result;
    uint32_t error;
    if(!started || closed)
        return 9;
    result = roswasmc_poll(&owner, bytes, sizeof bytes);
    if(result.error == 11)
        return 11;
    if(result.error)
        return finish(result.error);
    if(!result.has_length || result.length > sizeof bytes)
        return finish(22);
    error = accept_sample(bytes, (size_t)result.length);
    if(error)
        return finish(error);
    return 0;
}

/** @brief Test whether at least one complete KssStatus sample was retained.
 * @details Serialized cached read survives closure; the original message has
 * no timestamp, so readiness is not a freshness or physical-state guarantee.
 * @return 1 after the first committed sample, otherwise 0; performs no host IO.
 * @see poll_once
 */
EXPORT("sample_ready") uint32_t sample_ready(void)
{
    return samples != 0;
}

/** @brief Read the saturating complete-sample count.
 * @details Serialized cached counter saturates at UINT32_MAX and survives
 * closure. It measures local observations, not controller cycles or freshness.
 * @return Number of committed samples, capped at UINT32_MAX; initially 0.
 * @see sample_ready
 */
EXPORT("sample_count") uint32_t sample_count(void)
{
    return samples;
}

/** @brief Read the original KssStatus control-mode enumeration.
 * @details Valid after sample_ready(); original constants are UNSPECIFIED=0,
 * JOINT_POSITION_CONTROL=1 and CARTESIAN_POSITION_CONTROL=5. Other uint8 values
 * are preserved without being interpreted as controller admission.
 * @return Original uint8 field widened to uint32, with no host operation.
 * @see sample_ready
 */
EXPORT("control_mode") uint32_t control_mode(void)
{
    return value.control_mode;
}

/** @brief Read the original cycle-time enumeration rather than a duration.
 * @details Valid after sample_ready(). KssStatus constants are UNSPECIFIED=0,
 * RSI_4MS=1 and RSI_12MS=2; the numeric field itself is not milliseconds. Other
 * uint8 values are retained. No timing, clock conversion or live poll occurs.
 * @return Original uint8 enumeration widened to uint32.
 * @see sample_ready
 */
EXPORT("cycle_time") uint32_t cycle_time(void)
{
    return value.cycle_time;
}

/** @brief Read the retained drives_powered Boolean.
 * @details Valid after sample_ready(); cached data is not proof that drives
 * remain powered or permission to command them. Serialized read has no host IO.
 * @return Original decoded Boolean, 0 or 1.
 * @see sample_ready
 */
EXPORT("drives_powered") uint32_t drives_powered(void)
{
    return value.drives_powered;
}

/** @brief Read the original emergency_stop indication.
 * @details Valid after sample_ready(); a cached false is not current safety
 * clearance. This read performs no reset, acknowledgement or native call.
 * @return Original decoded Boolean, 0 or 1.
 * @see sample_ready
 */
EXPORT("emergency_stop") uint32_t emergency_stop(void)
{
    return value.emergency_stop;
}

/** @brief Read the retained guard_stop indication.
 * @details Valid after sample_ready(); serialized cached data does not authorize
 * guard recovery or establish that the physical guard state is current.
 * @return Original decoded Boolean, 0 or 1.
 * @see sample_ready
 */
EXPORT("guard_stop") uint32_t guard_stop(void)
{
    return value.guard_stop;
}

/** @brief Read the original in_motion Boolean.
 * @details Valid after sample_ready(); no timestamp exists in this message, and
 * a stored false does not establish that the robot is currently stationary.
 * @return Original decoded Boolean, 0 or 1; performs no host operation.
 * @see sample_ready
 */
EXPORT("in_motion") uint32_t in_motion(void)
{
    return value.in_motion;
}

/** @brief Read the retained motion_possible flag.
 * @details Valid after sample_ready(); cached true never grants Guest authority
 * or substitutes for installation/controller preflight. No command is issued.
 * @return Original decoded Boolean, 0 or 1.
 * @see sample_ready
 */
EXPORT("motion_possible") uint32_t motion_possible(void)
{
    return value.motion_possible;
}

/** @brief Read the original controller operation-mode enumeration.
 * @details Valid after sample_ready(); declared values are UNSPECIFIED=0, T1=1,
 * T2=2, AUT=3 and EXT=4. Unknown uint8 values are preserved. This serialized
 * cached read changes neither the mode nor Runtime authority.
 * @return Original uint8 field widened to uint32.
 * @see sample_ready
 */
EXPORT("operation_mode") uint32_t operation_mode(void)
{
    return value.operation_mode;
}

/** @brief Read the retained robot_stopped Boolean.
 * @details Valid after sample_ready(); a stored true is not a live physical
 * stopping guarantee. Independent native supervision remains necessary.
 * @return Original decoded Boolean, 0 or 1; performs no host operation.
 * @see sample_ready
 */
EXPORT("robot_stopped") uint32_t robot_stopped(void)
{
    return value.robot_stopped;
}

/** @brief Read the mode-0 default-denial observation.
 * @details Cached fact establishes no positive subscription or native operation.
 * @return 1 only for open error 13 with no retained handle, otherwise 0.
 * @see initialize_case
 */
EXPORT("denied_verified") uint32_t denied_verified(void)
{
    return denied;
}

/** @brief Read the first latched subscription/polling failure.
 * @details Serialized cached status survives cleanup; idle 11 and direct
 * precondition refusals are not latched as failures.
 * @return First recorded nonzero error, or 0 if no failure was latched.
 * @see cleanup_status
 */
EXPORT("primary_status") uint32_t primary_status(void)
{
    return primary;
}

/** @brief Read the independent subscription capability-close result.
 * @details Serialized cached status never replaces the primary failure and
 * does not describe physical controller state.
 * @return Close error, or 0 for clean closure/no acquired handle.
 * @see close_case
 */
EXPORT("cleanup_status") uint32_t cleanup_status(void)
{
    return cleanup;
}

/** @brief Retire the subscription once while retaining the last complete sample.
 * @details Serialized terminal transition, with no unsubscribe retry, alias
 * revocation or controller command. Cached data remains owned until teardown.
 * @return 9 if already closed; otherwise the first primary error, or close status.
 * @see poll_once
 * @see cleanup_status
 */
EXPORT("close_case") uint32_t close_case(void)
{
    if(closed)
        return 9;
    return finish(0);
}
