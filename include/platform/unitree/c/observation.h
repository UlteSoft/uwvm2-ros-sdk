/**
 * @file observation.h
 * @brief Observe complete native Unitree ROS messages from a Wasm command.
 * @details Select UWVM_UNITREE_ROS_VERSION=1 or 2 at compilation. The default
 * is ROS 2. Every function opens an existing exact-type subscription alias,
 * retains that owner for a finite sequence of polls, decodes every field, and
 * closes the owner once. No command publication, service call, robot driver,
 * background task, or implicit grant is created. Callers serialize shared state.
 */
#ifndef UWVM_UNITREE_OBSERVATION_H
#define UWVM_UNITREE_OBSERVATION_H

#ifndef UWVM_UNITREE_ROS_VERSION
# define UWVM_UNITREE_ROS_VERSION 2
#endif
#if UWVM_UNITREE_ROS_VERSION == 1
# include <platform/ros1/c/roswasm/ros1.h>
# include <unitree/c/ros1/records.h>
#elif UWVM_UNITREE_ROS_VERSION == 2
# include <platform/ros2/c/roswasm/ros2.h>
# include <unitree/c/ros2/records.h>
#else
# error "Unitree requires one explicitly supported ROS backend"
#endif
#include <string.h>

/**
 * @brief Preserve operation, complete-data, and cleanup facts independently.
 * @details The report owns no capability. A value exists only when
 * response_present is nonzero. rpc describes the last actual poll, including
 * an observed required length. A cleanup error never hides the primary error.
 */
typedef struct unitree_observation
{
    uint32_t primary;     /**< @brief First validation, open, subscription, poll, or decode error. */
    uint32_t cleanup;     /**< @brief Original single close result when cleanup_present is true. */
    int cleanup_present;  /**< @brief True only after a successfully acquired owner is closed. */
    int response_present; /**< @brief True only after exact complete decoding. */
    int rpc_present;      /**< @brief True only after an actual poll returned. */
    uint32_t polls;       /**< @brief Number of actual event_poll calls, including idle polls. */
    roswasmc_result rpc;  /**< @brief Original final transport result and written-length facts. */
} unitree_observation;

/**
 * @brief Select the first operation error before the independent cleanup error.
 * @param[in] value Initialized immutable report; NULL is invalid.
 * @return Zero only when the primary operation and cleanup both succeeded.
 * @details Pure local read; no ownership or permissions are transferred.
 */
inline static uint32_t unitree_observation_status(unitree_observation const* value)
{
    if(!value)
    {
        return 22;
    }
    return value->primary ? value->primary : value->cleanup;
}

/**
 * @brief Borrow the selected genuine ROS ABI dispatch without opening an alias.
 * @return Immutable process-lifetime backend; never free or mutate it.
 * @details Backend selection performs no native operation and grants no rights.
 */
inline static roswasmc_backend const* unitree_backend(void)
{
#if UWVM_UNITREE_ROS_VERSION == 1
    return roswasmc_ros1_backend();
#else
    return roswasmc_ros2_backend();
#endif
}

/** @brief Internal decoder callback; output commits only after complete validation. */
typedef uint32_t (*unitree_decode_fn)(void const*, size_t, void*);
/** @brief Caller-controlled pause between idle polls; zero permits the next poll. */
typedef uint32_t (*unitree_pause_fn)(void);

/**
 * @brief Check ordinary object ranges without overflowing the address width.
 * @param[in] first First live object and its extent first_size.
 * @param[in] second Second live object and its extent second_size.
 * @return Nonzero for overlap, NULL nonempty storage, or overflowing extent.
 * @details This preflight creates no native memory view and performs no writes.
 */
inline static int unitree_overlap(void const* first, size_t first_size, void const* second, size_t second_size)
{
    uintptr_t a = (uintptr_t)first;
    uintptr_t b = (uintptr_t)second;
    if((first_size && !first) || (second_size && !second) || first_size > UINTPTR_MAX - a || second_size > UINTPTR_MAX - b)
    {
        return 1;
    }
    return first_size && second_size && a < b + second_size && b < a + first_size;
}

/**
 * @brief Retain one owner while awaiting one complete canonical message.
 * @param[in] context Borrowed selected-backend context, stable through return.
 * @param[in] alias Nonempty NUL-terminated strict UTF-8 policy alias, at most 255 bytes.
 * @param[in] attempts Poll budget in [1,250]; idle 11 alone permits another poll.
 * @param[in] pause Required callback between polls when attempts exceeds one.
 * It must not reenter the context, mutate output, or alter the retained owner.
 * @param[out] output Caller-owned complete generated record, unchanged on refusal.
 * @param[in] output_size Size of that complete record for overlap preflight.
 * @param[out] wire Private scratch buffer, disjoint from output/context/alias.
 * @param[in] capacity Exact generated complete-message maximum in bytes.
 * @param[in] decode Transactional exact-type decoder with no host operations.
 * @return Owned report; close is attempted once after every successful open.
 * @details This internal synchronous helper starts no timer or retry worker.
 * Poll errors other than idle, including possibly consuming capacity errors,
 * are never replayed. Fatal Wasm traps cannot promise normal cleanup. All
 * supplied objects must be valid, initialized where read, and mutually disjoint.
 */
inline static unitree_observation unitree_receive(roswasmc_context const* context,
                                                  char const* alias,
                                                  uint32_t attempts,
                                                  unitree_pause_fn pause,
                                                  void* output,
                                                  size_t output_size,
                                                  unsigned char* wire,
                                                  size_t capacity,
                                                  unitree_decode_fn decode)
{
    unitree_observation result = UWVM_ROS_C_ZERO_INITIALIZER;
    roswasmc_capability owner;
    size_t alias_size = alias ? strlen(alias) : 0;
    if(!context || !context->backend || context->backend->version != UWVM_UNITREE_ROS_VERSION || !alias_size || alias_size > 255 || !attempts ||
       attempts > 250 || (attempts > 1 && !pause) || !output || !wire || !decode || !capacity || unitree_overlap(output, output_size, wire, capacity) ||
       unitree_overlap(output, output_size, context, sizeof *context) || unitree_overlap(output, output_size, context->backend, sizeof *context->backend) ||
       unitree_overlap(output, output_size, alias, alias_size + 1))
    {
        result.primary = 22;
        return result;
    }
    roswasmc_capability_init(&owner, context);
    result.primary = roswasmc_open(&owner, alias, alias_size);
    if(result.primary)
    {
        return result;
    }
    result.primary = roswasmc_subscribe(&owner);
    if(!result.primary)
    {
        uint32_t index;
        for(index = 0; index < attempts; ++index)
        {
            result.rpc = roswasmc_poll(&owner, wire, capacity);
            result.rpc_present = 1;
            ++result.polls;
            result.primary = result.rpc.error;
            if(result.primary != 11 || index + 1 == attempts)
            {
                break;
            }
            result.primary = pause();
            if(result.primary)
            {
                break;
            }
        }
        if(!result.primary)
        {
            if(!result.rpc.has_length || result.rpc.length > capacity)
            {
                result.primary = 22;
            }
            else
            {
                result.primary = decode(wire, (size_t)result.rpc.length, output);
                result.response_present = result.primary == 0;
            }
        }
    }
    result.cleanup_present = 1;
    result.cleanup = roswasmc_close(&owner);
    return result;
}

#if UWVM_UNITREE_ROS_VERSION == 2
/** @brief Complete original unitree_go/msg/SportModeState storage. */
typedef roswasmc_bounded_2_unitree_go_msg_SportModeState unitree_motion_state;
/** @brief Complete original unitree_go/msg/LowState storage, including all twenty motors. */
typedef roswasmc_bounded_2_unitree_go_msg_LowState unitree_low_state;
/** @brief Complete original unitree_go/msg/WirelessController storage. */
typedef roswasmc_bounded_2_unitree_go_msg_WirelessController unitree_wireless_controller;
# define UNITREE_MOTION_STATE_WIRE_BYTES ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_MAX_WIRE_BYTES
# define UNITREE_LOW_STATE_WIRE_BYTES ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_MAX_WIRE_BYTES
# define UNITREE_WIRELESS_CONTROLLER_WIRE_BYTES ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_MAX_WIRE_BYTES
# define unitree_motion_state_encode roswasmc_bounded_2_unitree_go_msg_SportModeState_encode
# define unitree_low_state_encode roswasmc_bounded_2_unitree_go_msg_LowState_encode
# define unitree_wireless_controller_encode roswasmc_bounded_2_unitree_go_msg_WirelessController_encode
# define UNITREE_INTERNAL_MOTION_DECODER roswasmc_bounded_2_unitree_go_msg_SportModeState_decode
# define UNITREE_INTERNAL_LOW_DECODER roswasmc_bounded_2_unitree_go_msg_LowState_decode
# define UNITREE_INTERNAL_WIRELESS_DECODER roswasmc_bounded_2_unitree_go_msg_WirelessController_decode
#else
/** @brief Complete original unitree_legged_msgs/HighState storage. */
typedef roswasmc_bounded_1_unitree_legged_msgs_HighState unitree_motion_state;
/** @brief Complete original unitree_legged_msgs/LowState storage. */
typedef roswasmc_bounded_1_unitree_legged_msgs_LowState unitree_low_state;
/** @brief Complete original unitree_legged_msgs/MotorState storage. */
typedef roswasmc_bounded_1_unitree_legged_msgs_MotorState unitree_motor_state;
# define UNITREE_MOTION_STATE_WIRE_BYTES ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_MAX_WIRE_BYTES
# define UNITREE_LOW_STATE_WIRE_BYTES ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_MAX_WIRE_BYTES
# define UNITREE_MOTOR_STATE_WIRE_BYTES ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_MAX_WIRE_BYTES
# define unitree_motion_state_encode roswasmc_bounded_1_unitree_legged_msgs_HighState_encode
# define unitree_low_state_encode roswasmc_bounded_1_unitree_legged_msgs_LowState_encode
# define unitree_motor_state_encode roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode
# define UNITREE_INTERNAL_MOTION_DECODER roswasmc_bounded_1_unitree_legged_msgs_HighState_decode
# define UNITREE_INTERNAL_LOW_DECODER roswasmc_bounded_1_unitree_legged_msgs_LowState_decode
# define UNITREE_INTERNAL_MOTOR_DECODER roswasmc_bounded_1_unitree_legged_msgs_MotorState_decode
#endif

/** @brief Internal type-safe adapter for complete motion-state decoding. */
inline static uint32_t unitree_decode_motion(void const* wire, size_t size, void* output)
{
    return UNITREE_INTERNAL_MOTION_DECODER(wire, size, (unitree_motion_state*)output);
}

/** @brief Internal type-safe adapter for complete low-state decoding. */
inline static uint32_t unitree_decode_low(void const* wire, size_t size, void* output)
{
    return UNITREE_INTERNAL_LOW_DECODER(wire, size, (unitree_low_state*)output);
}

/**
 * @brief Read a complete ROS 2 SportModeState or ROS 1 HighState observation.
 * @param[in] context Borrowed selected ROS context, stable through checked close.
 * @param[in] alias Existing subscription alias for this exact native type.
 * @param[in] attempts Finite poll budget, 1 through 250.
 * @param[in] pause Required between idle polls when attempts exceeds one.
 * @param[out] output Entire caller-owned record; unchanged without complete decoding.
 * @return Independent first error, complete-data presence, last poll, and close facts.
 * @details ROS 1 HighState and ROS 2 SportModeState preserve their distinct
 * original schemas. No field conversion between them is implied. All caller
 * arguments are borrowed synchronously and must use mutually disjoint storage.
 */
inline static unitree_observation
    unitree_wait_motion_state(roswasmc_context const* context, char const* alias, uint32_t attempts, unitree_pause_fn pause, unitree_motion_state* output)
{
    unsigned char wire[UNITREE_MOTION_STATE_WIRE_BYTES];
    return unitree_receive(context, alias, attempts, pause, output, sizeof *output, wire, sizeof wire, unitree_decode_motion);
}

/**
 * @brief Read every field of the selected original Unitree LowState schema.
 * @param[in] context Borrowed selected ROS context, stable until return.
 * @param[in] alias Existing exact-type LowState subscription alias.
 * @param[in] attempts Poll budget in [1,250], including the immediate first poll.
 * @param[in] pause Caller-controlled wait between idle polls, required above one.
 * @param[out] output Entire record; unchanged on invalid/truncated/nonfinite data.
 * @return Original operation and independent once-only cleanup observations.
 * @details Includes all motor, IMU, BMS, force, remote, reserve, and CRC fields
 * declared by this exact version. This API does not certify CRC correctness or
 * physical safety. Callers retain all inputs through synchronous return.
 */
inline static unitree_observation
    unitree_wait_low_state(roswasmc_context const* context, char const* alias, uint32_t attempts, unitree_pause_fn pause, unitree_low_state* output)
{
    unsigned char wire[UNITREE_LOW_STATE_WIRE_BYTES];
    return unitree_receive(context, alias, attempts, pause, output, sizeof *output, wire, sizeof wire, unitree_decode_low);
}

#if UWVM_UNITREE_ROS_VERSION == 2
/** @brief Internal complete wireless-controller decoder adapter. */
inline static uint32_t unitree_decode_wireless(void const* wire, size_t size, void* output)
{
    return UNITREE_INTERNAL_WIRELESS_DECODER(wire, size, (unitree_wireless_controller*)output);
}

/**
 * @brief Read all four joystick axes and the complete original key bitmask.
 * @param[in] context Borrowed ROS 2 context; no other backend is substituted.
 * @param[in] alias Existing unitree_go/msg/WirelessController subscription alias.
 * @param[in] attempts Poll budget in [1,250].
 * @param[in] pause Caller wait between idle polls; required for multiple attempts.
 * @param[out] output Complete record; unchanged on any decode refusal.
 * @return Independent operation, poll, response-presence, and cleanup report.
 * @details This observation neither generates controller events nor moves a
 * robot. Axes are finite original floats; no guessed normalization is applied.
 */
inline static unitree_observation unitree_wait_wireless_controller(roswasmc_context const* context,
                                                                   char const* alias,
                                                                   uint32_t attempts,
                                                                   unitree_pause_fn pause,
                                                                   unitree_wireless_controller* output)
{
    unsigned char wire[UNITREE_WIRELESS_CONTROLLER_WIRE_BYTES];
    return unitree_receive(context, alias, attempts, pause, output, sizeof *output, wire, sizeof wire, unitree_decode_wireless);
}
#else
/** @brief Internal complete native ROS 1 motor-state decoder adapter. */
inline static uint32_t unitree_decode_motor(void const* wire, size_t size, void* output)
{
    return UNITREE_INTERNAL_MOTOR_DECODER(wire, size, (unitree_motor_state*)output);
}

/**
 * @brief Read one genuine ROS 1 joint-controller MotorState observation.
 * @param[in] context Borrowed ROS 1 context, stable through checked close.
 * @param[in] alias Exact unitree_legged_msgs/MotorState subscription alias.
 * @param[in] attempts Finite poll budget in [1,250].
 * @param[in] pause Caller wait between idle polls when more than one is allowed.
 * @param[out] output Complete motor record; unchanged without a valid sample.
 * @return Independent operation, poll, complete-data, and once-only close facts.
 * @details Topic names depend on the actual Gazebo controller namespace. The
 * deployment chooses that real name explicitly; no DDS SDK channel is used.
 */
inline static unitree_observation
    unitree_wait_motor_state(roswasmc_context const* context, char const* alias, uint32_t attempts, unitree_pause_fn pause, unitree_motor_state* output)
{
    unsigned char wire[UNITREE_MOTOR_STATE_WIRE_BYTES];
    return unitree_receive(context, alias, attempts, pause, output, sizeof *output, wire, sizeof wire, unitree_decode_motor);
}
#endif
#endif
