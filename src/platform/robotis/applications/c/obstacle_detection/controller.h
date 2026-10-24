/* SPDX-License-Identifier: Apache-2.0
 * Adapted from ROBOTIS TurtleBot3 Obstacle Detection (2018 ROBOTIS CO., LTD.;
 * Jeonggeun Lim, Ryan Shim, Gilbert), identical pinned Humble/Jazzy/main body.
 */
#ifndef UWVM_TURTLEBOT3_OBSTACLE_CONTROLLER_H
#define UWVM_TURTLEBOT3_OBSTACLE_CONTROLLER_H

#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/roswasm/codec.h>
#include <platform/ros/c/roswasm/executor.h>
#include "bounded_records.h"
#include <string.h>

#if !defined(UWVM_TURTLEBOT3_PROFILE) || UWVM_TURTLEBOT3_PROFILE < 2 || UWVM_TURTLEBOT3_PROFILE > 4
# error "Select the exact original Humble=2, Jazzy=3 or main=4 complete ROS2 family"
#endif

/** @brief Complete selected original LaserScan, including metadata and intensities.
 * @details Uses the genuine generated record and its exact finite/count/string
 * profile. Native NaN/Inf and unbounded arrays remain an explicit profile gap;
 * this application does not bypass the SDK decoder or invent another ROS type.
 * @see uwvm_tb3_obstacle_accept_scan uwvm_tb3_obstacle_decide
 */
typedef roswasmc_bounded_2_sensor_msgs_msg_LaserScan uwvm_tb3_obstacle_scan;

/** @brief Retain the original latest-scan/latest-raw-command controller state.
 * @details Pure caller-owned values; no handle, thread, clock or allocation.
 * The original algorithm keeps using its latest scan without a freshness check.
 * Copying this state copies complete original values and grants no publication.
 * @see uwvm_tb3_obstacle_init uwvm_tb3_obstacle_decide
 */
typedef struct uwvm_tb3_obstacle_state
{
    /** @brief Latest whole original scan, readable only after has_scan.
     * @details Retains every field; generated profile bounds still apply.
     * @see uwvm_tb3_obstacle_accept_scan */
    uwvm_tb3_obstacle_scan scan;
    /** @brief Latest full six-component raw Twist, with original SI units.
     * @details Default linear.x0.2m/s and all other fields0. No planar projection
     * is applied when forwarding the clear branch. @see uwvm_tb3_obstacle_accept_raw */
    roswasmc_twist tele_twist;
    /** @brief Nonzero after one complete original scan was accepted.
     * @details Default false suppresses timer publication. @see uwvm_tb3_obstacle_init */
    int has_scan;
} uwvm_tb3_obstacle_state;

/** @brief Own one complete original obstacle decision and whole command body.
 * @details Pure result; an obstacle preserves only raw angular.z in an otherwise
 * zero Twist, exactly as the original. The clear branch forwards all six fields.
 * Neither branch establishes physical standstill or grants a native command.
 * @see uwvm_tb3_obstacle_decide
 */
typedef struct uwvm_tb3_obstacle_decision
{
    /** @brief Original selected-beam minimum in metres, with no angle reinterpretation.
     * @details Source slices are [0,n/4) and [3n/4,min(n,360)). @see uwvm_tb3_obstacle_decide */
    double minimum_distance_m;
    /** @brief True only when the selected minimum is strictly below0.5m.
     * @details Equality follows the clear branch. @see uwvm_tb3_obstacle_decide */
    int obstacle;
    /** @brief Complete original output Twist, not a reduced pair of components.
     * @details Linear fields are m/s and angular fields rad/s. @see uwvm_tb3_obstacle_decide */
    roswasmc_twist command;
} uwvm_tb3_obstacle_decision;

/** @brief Preserve bounded controller-loop work, primary failure and every close.
 * @details Counters describe software import attempts/replies, never physical
 * effects. Unknown publication/log delivery permits no replay. Cleanup statuses
 * use scan/raw-command/publish/steady-clock/info-log acquisition order; all live
 * owners are attempted in reverse order despite earlier failures.
 * @see uwvm_tb3_obstacle_run roswasmc_cleanup_report
 */
typedef struct uwvm_tb3_obstacle_report
{
    /** @brief Actual setup/body error;110 denotes exhausted finite iteration budget.
     * @details An original indefinitely spinning program has no successful finite
     * completion condition here. @see uwvm_tb3_obstacle_run */
    uint32_t primary;
    /** @brief Separate cleanup aggregate retaining the primary error unchanged.
     * @details A cleanup failure never replaces a prior application failure.
     * @see roswasmc_session_close */
    roswasmc_cleanup_report cleanup;
    /** @brief Independent close statuses for the five acquisition-order roles.
     * @details Zero with an unacquired role does not mean a close was attempted.
     * @see cleanup */
    uint32_t close_status[5];
    /** @brief Number of successful owner acquisitions before setup ended.
     * @details Range0..5; every acquired owner is retired once. @see close_status */
    unsigned acquired;
    /** @brief Completed finite loop iterations, at most the supplied poll budget.
     * @details A loop polls scan/raw once each, then reads steady time once.
     * @see uwvm_tb3_obstacle_run */
    unsigned iterations;
    /** @brief Complete accepted scan/raw command counts; idle11 is excluded.
     * @details A malformed/trailing value increments neither counter.
     * @see uwvm_tb3_obstacle_accept_scan uwvm_tb3_obstacle_accept_raw */
    unsigned scans, raw_commands;
    /** @brief Actual local100ms timer callback invocations, including no-scan ticks.
     * @details Missed periods coalesce through the genuine SDK timer. @see roswasmc_timer_tick */
    unsigned timer_callbacks;
    /** @brief Original publication/log attempts and successful ABI replies.
     * @details A successful reply establishes no controller/physical completion.
     * @see publish_unknown log_unknown */
    unsigned publish_attempts, publish_replies, log_attempts, log_replies;
    /** @brief Whether the latest attempted publication/log lacks a success reply.
     * @details Conservative even for a pre-entry codec error; never retries.
     * @see uwvm_tb3_obstacle_run */
    int publish_unknown, log_unknown;
    /** @brief Last complete decision, readable only when has_decision is nonzero.
     * @details It may exist even when logging/publication subsequently failed.
     * @see uwvm_tb3_obstacle_decide */
    uwvm_tb3_obstacle_decision last_decision;
    /** @brief True after one complete timer decision, independent of delivery.
     * @details Not a native acknowledgement or freshness guarantee. @see last_decision */
    int has_decision;
} uwvm_tb3_obstacle_report;

/** @brief Initialize the exact original no-scan/default-forward controller state.
 * @details Pure zeroing plus linear.x0.2m/s. It opens no owner or publisher and
 * starts no auto motion by itself. Call before supplying original callback data.
 * @param[out] state Nonnull exclusive caller storage; no live resource is owned.
 * @return 0 on initialization or22 for null storage.
 * @see uwvm_tb3_obstacle_accept_scan uwvm_tb3_obstacle_decide
 */
static inline uint32_t uwvm_tb3_obstacle_init(uwvm_tb3_obstacle_state* state)
{
    if(!state)
        return 22;
    memset(state, 0, sizeof *state);
    state->tele_twist.linear[0] = 0.2;
    return 0;
}

/** @brief Accept one complete original scan without projecting its other fields.
 * @details Genuine generated whole-value validation precedes assignment. Inputs
 * outside the SDK finite/count/string domain return22; no partial state commits.
 * @param[in,out] state Initialized caller-owned state, disjoint from value.
 * @param[in] value Borrowed complete selected LaserScan, stable until return.
 * @return 0 on complete assignment or22 on invalid/null/overlapping input.
 * @see uwvm_tb3_obstacle_scan uwvm_tb3_obstacle_decide
 */
static inline uint32_t uwvm_tb3_obstacle_accept_scan(uwvm_tb3_obstacle_state* state, uwvm_tb3_obstacle_scan const* value)
{
    if(!state || !value || uwvm_bounded_overlap(state, sizeof *state, value, sizeof *value) || !roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(value))
        return 22;
    state->scan = *value;
    state->has_scan = 1;
    return 0;
}

/** @brief Accept the whole original raw velocity callback body without axis projection.
 * @details The SDK's actual Twist encoder validates all six finite values before
 * the copy. This constructs data only; model limits and grants remain native policy.
 * @param[in,out] state Initialized exclusive state, disjoint from value.
 * @param[in] value Borrowed complete Twist in original m/s and rad/s units.
 * @return 0 on full copy or the actual codec status; no mutation on refusal.
 * @see uwvm_tb3_obstacle_decide roswasmc_encode_twist
 */
static inline uint32_t uwvm_tb3_obstacle_accept_raw(uwvm_tb3_obstacle_state* state, roswasmc_twist const* value)
{
    unsigned char bytes[48];
    size_t used = 0;
    uint32_t code;
    if(!state || !value || uwvm_bounded_overlap(state, sizeof *state, value, sizeof *value))
        return 22;
    code = roswasmc_encode_twist(value, bytes, sizeof bytes, &used);
    if(code)
        return code;
    if(used != sizeof bytes)
        return 22;
    state->tele_twist = *value;
    return 0;
}

/** @brief Execute the complete original selected-beam/threshold/command algorithm.
 * @details Uses exact original integer slices: left[0,n/4), right[3n/4,min(n,360)).
 * Empty slices return22, corresponding to the original min(empty) failure; the
 * hardcoded360 endpoint is preserved, not changed to angle_min/increment geometry.
 * On finite profile inputs the original threshold is0.5m. The obstacle branch
 * zeros every field except raw angular.z; the clear branch copies the whole Twist.
 * @param[in] state Immutable initialized controller state, stable until return.
 * @param[out] output Exclusive decision storage, disjoint from state; unchanged on error.
 * @return 0 on a complete decision,11 before any scan,22 for invalid/empty-slice data.
 * @see uwvm_tb3_obstacle_accept_scan uwvm_tb3_obstacle_accept_raw
 */
static inline uint32_t uwvm_tb3_obstacle_decide(uwvm_tb3_obstacle_state const* state, uwvm_tb3_obstacle_decision* output)
{
    uwvm_tb3_obstacle_decision next;
    unsigned char bytes[48];
    size_t used = 0, count, left, right, end, index;
    double minimum, right_minimum;
    if(!state || !output || uwvm_bounded_overlap(state, sizeof *state, output, sizeof *output))
        return 22;
    if(!state->has_scan)
        return 11;
    if(!roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(&state->scan) || roswasmc_encode_twist(&state->tele_twist, bytes, sizeof bytes, &used) ||
       used != sizeof bytes)
        return 22;
    count = state->scan.ranges.size;
    left = count / 4;
    right = count * 3 / 4;
    end = count < 360 ? count : 360;
    if(!left || right >= end)
        return 22;
    minimum = state->scan.ranges.data[0];
    for(index = 1; index < left; ++index)
        if(state->scan.ranges.data[index] < minimum)
            minimum = state->scan.ranges.data[index];
    right_minimum = state->scan.ranges.data[right];
    for(index = right + 1; index < end; ++index)
        if(state->scan.ranges.data[index] < right_minimum)
            right_minimum = state->scan.ranges.data[index];
    if(right_minimum < minimum)
        minimum = right_minimum;
    memset(&next, 0, sizeof next);
    next.minimum_distance_m = minimum;
    next.obstacle = minimum < 0.5;
    if(next.obstacle)
        next.command.angular[2] = state->tele_twist.angular[2];
    else
        next.command = state->tele_twist;
    *output = next;
    return 0;
}

/** @internal @brief Borrow one active run's state, owners and timer facts.
 * @details Never escapes uwvm_tb3_obstacle_run; all pointers outlive callback
 * dispatch and the clock value is set before each genuine SDK timer tick.
 * @see uwvm_tb3_obstacle_timer_callback
 */
struct uwvm_tb3_obstacle_loop
{
    uwvm_tb3_obstacle_state* state;
    uwvm_tb3_obstacle_report* report;
    roswasmc_capability const *publisher, *logger;
    uint64_t now, last_log;
    int logged;
};

/** @internal @brief Dispatch one original no-scan/obstacle/clear timer iteration.
 * @details Called only by the live run's SDK timer. Preserves original log-before-
 * publish order and separate delivery uncertainty. No handle is acquired here.
 * @param[in,out] user Nonnull live internal loop with exclusive state/report and
 * independently granted publisher/logger owners; no reentrant callback is allowed.
 * @return Exact decision/codec/log/publication status;0 also covers no scan yet.
 * @see uwvm_tb3_obstacle_run uwvm_tb3_obstacle_decide
 */
static inline uint32_t uwvm_tb3_obstacle_timer_callback(void* user)
{
    struct uwvm_tb3_obstacle_loop* loop = (struct uwvm_tb3_obstacle_loop*)user;
    uwvm_tb3_obstacle_decision decision;
    uint32_t code;
    ++loop->report->timer_callbacks;
    code = uwvm_tb3_obstacle_decide(loop->state, &decision);
    if(code == 11)
        return 0;
    if(code)
        return code;
    loop->report->last_decision = decision;
    loop->report->has_decision = 1;
    if(decision.obstacle && (!loop->logged || loop->now - loop->last_log >= UINT64_C(2000000000)))
    {
        static char const message[] = "Obstacle detected! Stopping.";
        unsigned char encoded[4 + sizeof message - 1];
        roswasmc_string text = {message, sizeof message - 1};
        size_t used = 0;
        code = roswasmc_encode_string(text, encoded, sizeof encoded, &used);
        if(code)
            return code;
        ++loop->report->log_attempts;
        loop->report->log_unknown = 1;
        code = roswasmc_log(loop->logger, (char const*)encoded, used);
        if(code)
            return code;
        ++loop->report->log_replies;
        loop->report->log_unknown = 0;
        loop->last_log = loop->now;
        loop->logged = 1;
    }
    ++loop->report->publish_attempts;
    loop->report->publish_unknown = 1;
    code = roswasmc_publish_twist(loop->publisher, &decision.command);
    if(code)
        return code;
    ++loop->report->publish_replies;
    loop->report->publish_unknown = 0;
    return 0;
}

/** @brief Run the original scan/raw/100ms-controller flow through real SDK owners.
 * @details Opens five independent aliases, activates the two genuine subscriptions,
 * reads an explicitly granted steady clock and uses the actual coalescing SDK timer.
 * Each finite iteration polls complete scan/raw values then ticks the100ms timer.
 * Obstacle INFO logging preserves the original text with local2s throttling before
 * publication. No callback thread, native node, implicit grant, wait, stop, replay,
 * watchdog command or hardware route is created. Callback order/coalescing and the
 * finite budget are explicit adaptations of the original indefinitely spinning UI.
 * Host aliases must supply original sensor-data subscription QoS and publisher
 * depth10, exact native types/resources and separately reviewed publication rights.
 * @param[in] aliases Five distinct NUL-free strict UTF-8 byte strings,1..255 bytes,
 * in scan/raw-Twist/publish-Twist/steady-clock/INFO-log order; borrowed until return.
 * @param[in] budget Finite polling iterations1..65536, not a wall-time/action deadline.
 * @param[out] state Exclusive complete final controller values, disjoint from report.
 * @param[out] report Exclusive full counters/primary and every close status.
 * @return Primary error or first cleanup error;110 for normal budget exhaustion.
 * Returned delivery does not establish physical standstill; traps cannot promise cleanup.
 * @see uwvm_tb3_obstacle_decide roswasmc_session_close roswasmc_clock_read
 */
static inline uint32_t
    uwvm_tb3_obstacle_run(roswasmc_string const aliases[5], unsigned budget, uwvm_tb3_obstacle_state* state, uwvm_tb3_obstacle_report* report)
{
    roswasmc_session session;
    roswasmc_capability storage[5], *owners[5] = {0};
    roswasmc_timer timer;
    struct uwvm_tb3_obstacle_loop loop;
    unsigned char scan_wire[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_MAX_WIRE_BYTES], raw_wire[48];
    uwvm_tb3_obstacle_scan scan;
    roswasmc_twist raw_command;
    unsigned index, earlier;
    uint32_t code;
    uint64_t now;
    if(!aliases || !budget || budget > 65536 || !state || !report || uwvm_bounded_overlap(state, sizeof *state, report, sizeof *report))
        return 22;
    for(index = 0; index < 5; ++index)
    {
        if(!aliases[index].size || aliases[index].size > 255 || !roswasmc_utf8(aliases[index], 0))
            return 22;
        for(earlier = 0; earlier < index; ++earlier)
            if(aliases[earlier].size == aliases[index].size && !memcmp(aliases[earlier].data, aliases[index].data, aliases[index].size))
                return 22;
    }
    memset(report, 0, sizeof *report);
    uwvm_tb3_obstacle_init(state);
    code = roswasmc_session_init(&session, roswasmc_ros2_backend(), storage, 5);
    if(code)
    {
        report->primary = code;
        return code;
    }
    code = roswasmc_session_check_abi(&session);
    for(index = 0; !code && index < 5; ++index)
        code = roswasmc_session_open(&session, aliases[index].data, aliases[index].size, owners + index);
    report->acquired = (unsigned)session.count;
    if(!code)
        code = roswasmc_subscribe(owners[0]);
    if(!code)
        code = roswasmc_subscribe(owners[1]);
    if(!code)
        code = roswasmc_clock_read(owners[3], ROSWASMC_TIME_READ_STEADY, &now);
    memset(&loop, 0, sizeof loop);
    loop.state = state;
    loop.report = report;
    loop.publisher = owners[2];
    loop.logger = owners[4];
    if(!code)
        code = roswasmc_timer_init(&timer, UINT64_C(100000000), now, uwvm_tb3_obstacle_timer_callback, &loop, 0, 0);
    for(index = 0; !code && index < budget; ++index)
    {
        roswasmc_result received = roswasmc_poll(owners[0], scan_wire, sizeof scan_wire);
        if(!received.error)
        {
            if(!received.has_length || received.length > sizeof scan_wire)
                code = 22;
            else
                code = roswasmc_bounded_2_sensor_msgs_msg_LaserScan_decode(scan_wire, (size_t)received.length, &scan);
            if(!code)
                code = uwvm_tb3_obstacle_accept_scan(state, &scan);
            if(!code)
                ++report->scans;
        }
        else if(received.error != 11)
            code = received.error;
        if(code)
            break;
        received = roswasmc_poll(owners[1], raw_wire, sizeof raw_wire);
        if(!received.error)
        {
            if(!received.has_length || received.length != sizeof raw_wire)
                code = 22;
            else
                code = roswasmc_decode_twist(raw_wire, sizeof raw_wire, &raw_command);
            if(!code)
                code = uwvm_tb3_obstacle_accept_raw(state, &raw_command);
            if(!code)
                ++report->raw_commands;
        }
        else if(received.error != 11)
            code = received.error;
        if(code)
            break;
        code = roswasmc_clock_read(owners[3], ROSWASMC_TIME_READ_STEADY, &now);
        if(code)
            break;
        loop.now = now;
        code = roswasmc_timer_tick(&timer, now);
        if(code == 11)
            code = 0;
        ++report->iterations;
    }
    if(!code)
        code = 110;
    report->primary = code;
    report->cleanup = roswasmc_session_close(&session, code, report->close_status, 5);
    return code ? code : report->cleanup.cleanup_error;
}
#endif
