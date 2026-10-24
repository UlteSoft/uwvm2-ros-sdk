/* SPDX-License-Identifier: Apache-2.0 */
/**
 * @file sine_topic_command.c
 * @brief Owned C command for the pinned fanuc.sine-topic program.
 * @details Opens three explicit aliases, subscribes to whole JointState values,
 * drives the original one-second timer using the actual ROS clock, constructs
 * every original point, publishes once and closes every acquired role. A
 * separately admitted native node/context and exact topic/type/QoS bindings
 * remain external. This source does not provision controller policy.
 *
 * Requires C11 or newer, Wasip1 libc and the separate complete1001-point family.
 * WASI monotonic sleep paces idle work; it does not determine ROS timer expiry.
 * There is no default watchdog: paused ROS time or absent state keeps waiting,
 * as in the original program. Every Host call needs its own finite deadline;
 * this loop cannot preempt a blocked import. Trap/abort can prevent cleanup.
 * The source is not compiler, installed-SDK, Guest or native acceptance.
 * @see uwvm_fanuc_make_original_sine
 */
#define _POSIX_C_SOURCE 200809L
#include <ros2/c/roswasm/ros2.h>
#include <fanuc/c/sine_trajectory.h>
#include <errno.h>
#include <inttypes.h>
#include <stdio.h>
#include <time.h>

#if !defined(__wasi__)
# error "This command requires the actual wasm32-wasip1 target"
#endif

/** @brief Persist complete values and distinguish observations from zero storage. */
typedef struct sine_outcome
{
    uint32_t primary;
    uint32_t open_status[3];
    uint32_t cleanup_status[3];
    unsigned char open_present[3];
    unsigned char cleanup_present[3];
    unsigned char poll_present;
    unsigned char clock_present;
    unsigned char state_present;
    unsigned char trajectory_present;
    unsigned char publish_attempted;
    unsigned char published;
    uint64_t state_callbacks;
    uint64_t timer_callbacks;
    roswasmc_result last_poll;
    roswasmc_result last_clock;
    roswasmc_bounded_2_sensor_msgs_msg_JointState state;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory trajectory;
} sine_outcome;

/* One command instance owns this storage until destruction; no large DTO stack. */
static sine_outcome outcome;
static roswasmc_bounded_2_sensor_msgs_msg_JointState next_state;
static unsigned char input[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES];
static unsigned char output[ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES];

/** @brief Read exactly one canonical u64 ROS nanosecond value and retain its result. */
static uint32_t read_ros_clock(roswasmc_capability const* clock, uint64_t* value)
{
    unsigned char bytes[8];
    uint64_t decoded = 0;
    unsigned i;
    outcome.last_clock = roswasmc_time_read_ros(clock, 0, 0, bytes, sizeof bytes);
    outcome.clock_present = 1;
    if(outcome.last_clock.error)
        return outcome.last_clock.error;
    if(!outcome.last_clock.has_length || outcome.last_clock.length != sizeof bytes)
        return 22;
    for(i = 0; i != sizeof bytes; ++i)
        decoded |= (uint64_t)bytes[i] << (8 * i);
    *value = decoded;
    return 0;
}

/** @brief Preserve primary status, else the first actual reverse-order close failure. */
static uint32_t final_status(void)
{
    unsigned i;
    if(outcome.primary)
        return outcome.primary;
    for(i = 3; i != 0; --i)
        if(outcome.cleanup_present[i - 1] && outcome.cleanup_status[i - 1])
            return outcome.cleanup_status[i - 1];
    return 0;
}

/**
 * @brief Own the serialized subscription/timer/future lifecycle for this command.
 * @details Alias order is joints, trajectory, ROS clock. Idle11 preserves the
 * previous complete state; each successful callback replaces the entire state,
 * including an empty value. Fatal decode/clock/poll failures close all owners.
 * Backward ROS jumps reset the timer anchor. Forward jumps skip missed periods
 * and dispatch at most one callback per pass. Publication consumes one attempt
 * before the import, including uncertain failure; no replay is attempted.
 *
 * Complete state, trajectory and original SDK result/required-length facts stay
 * in command-owned static storage after closure. Close statuses and presence
 * remain independent of the primary error. Success means local publication
 * future completion, not controller admission, physical motion or stopping.
 */
static uint32_t run(char const* const aliases[3], size_t const lengths[3])
{
    uint64_t const period = UINT64_C(1000000000);
    roswasmc_context context;
    roswasmc_capability owners[3];
    uint64_t previous, anchor, now;
    uint32_t status = 0;
    unsigned i;
    context.backend = roswasmc_ros2_backend();
    for(i = 0; i != 3; ++i)
        roswasmc_capability_init(&owners[i], &context);
    if(uwvm_ros2_abi_version() != 1)
    {
        status = 95;
        goto finish;
    }
    for(i = 0; i != 3; ++i)
    {
        outcome.open_present[i] = 1;
        status = roswasmc_open(&owners[i], aliases[i], lengths[i]);
        outcome.open_status[i] = status;
        if(status)
            goto finish;
    }
    status = roswasmc_subscribe(&owners[0]);
    if(status)
        goto finish;
    status = read_ros_clock(&owners[2], &previous);
    if(status)
        goto finish;
    anchor = previous;
    for(;;)
    {
        struct timespec const pause = {0, 1000000};
        outcome.last_poll = roswasmc_poll(&owners[0], input, sizeof input);
        outcome.poll_present = 1;
        if(!outcome.last_poll.error)
        {
            if(!outcome.last_poll.has_length || outcome.last_poll.length > sizeof input)
            {
                status = 22;
                goto finish;
            }
            status = roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, (size_t)outcome.last_poll.length, &next_state);
            if(status)
                goto finish;
            outcome.state = next_state;
            outcome.state_present = 1;
            if(outcome.state_callbacks != UINT64_MAX)
                ++outcome.state_callbacks;
        }
        else if(outcome.last_poll.error != 11)
        {
            status = outcome.last_poll.error;
            goto finish;
        }
        status = read_ros_clock(&owners[2], &now);
        if(status)
            goto finish;
        if(now < previous)
            anchor = now;
        previous = now;
        if(now - anchor >= period)
        {
            anchor = now - ((now - anchor) % period);
            if(outcome.timer_callbacks != UINT64_MAX)
                ++outcome.timer_callbacks;
            if(outcome.state_present && outcome.state.position.size)
            {
                size_t length = 0;
                status = uwvm_fanuc_make_original_sine(&outcome.state, &outcome.trajectory);
                if(status)
                    goto finish;
                outcome.trajectory_present = 1;
                status = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(&outcome.trajectory, output, sizeof output, &length);
                if(status)
                    goto finish;
                outcome.publish_attempted = 1;
                status = roswasmc_publish(&owners[1], output, length);
                if(!status)
                    outcome.published = 1;
                goto finish;
            }
        }
        if(nanosleep(&pause, 0))
        {
            int const sleep_error = errno;
            status = sleep_error > 0 ? (uint32_t)sleep_error : 5;
            goto finish;
        }
    }
finish:
    outcome.primary = status;
    for(i = 3; i != 0; --i)
        if(roswasmc_is_open(&owners[i - 1]))
        {
            outcome.cleanup_present[i - 1] = 1;
            outcome.cleanup_status[i - 1] = roswasmc_close(&owners[i - 1]);
        }
    return final_status();
}

/**
 * @brief Parse three distinct aliases, run once, report exact statuses and exit.
 * @details No native name is inferred from an alias. Invalid arguments exit22
 * before any ROS import. Process status is clamped to125; the unsigned primary,
 * independent close and last poll/clock length facts are printed without that
 * narrowing. A stdout/flush error supplies error5 only if ROS/cleanup succeeded.
 */
int main(int argc, char** argv)
{
    char const* aliases[3];
    size_t lengths[3];
    uint32_t status;
    unsigned i, j;
    int printed, flushed;
    if(argc != 4)
        return 22;
    for(i = 0; i != 3; ++i)
    {
        aliases[i] = argv[i + 1];
        for(lengths[i] = 0; lengths[i] <= 255 && aliases[i][lengths[i]]; ++lengths[i])
        {
        }
        if(!lengths[i] || lengths[i] > 255)
            return 22;
        for(j = 0; j != i; ++j)
            if(lengths[i] == lengths[j] && !memcmp(aliases[i], aliases[j], lengths[i]))
                return 22;
    }
    status = run(aliases, lengths);
    printed = printf("primary=%" PRIu32 " opens=%u:%" PRIu32 ",%u:%" PRIu32 ",%u:%" PRIu32 " cleanup=%u:%" PRIu32 ",%u:%" PRIu32 ",%u:%" PRIu32
                     " callbacks=%" PRIu64 " ticks=%" PRIu64
                     " attempted=%u published=%u" " poll=%u:%" PRIu32 ":%u:%" PRIu64 " clock=%u:%" PRIu32 ":%u:%" PRIu64 "\n",
                     outcome.primary,
                     (unsigned)outcome.open_present[0],
                     outcome.open_status[0],
                     (unsigned)outcome.open_present[1],
                     outcome.open_status[1],
                     (unsigned)outcome.open_present[2],
                     outcome.open_status[2],
                     (unsigned)outcome.cleanup_present[0],
                     outcome.cleanup_status[0],
                     (unsigned)outcome.cleanup_present[1],
                     outcome.cleanup_status[1],
                     (unsigned)outcome.cleanup_present[2],
                     outcome.cleanup_status[2],
                     outcome.state_callbacks,
                     outcome.timer_callbacks,
                     (unsigned)outcome.publish_attempted,
                     (unsigned)outcome.published,
                     (unsigned)outcome.poll_present,
                     outcome.last_poll.error,
                     (unsigned)outcome.last_poll.has_length,
                     outcome.last_poll.length,
                     (unsigned)outcome.clock_present,
                     outcome.last_clock.error,
                     (unsigned)outcome.last_clock.has_length,
                     outcome.last_clock.length);
    flushed = fflush(stdout);
    if((printed < 0 || flushed) && !status)
        status = 5;
    return status > 125 ? 125 : (int)status;
}
