/**
 * @file main.c
 * @brief Execute genuine RCL clock transitions and C callbacks inside Wasm.
 * @details A component test, not an official simulator or a complete ROS node.
 */
#include <rcl/time.h>
#include <rcl/error_handling.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
struct observations {
    rcl_clock_t * clock;
    unsigned int count;
    int failed;
    int64_t deltas[8];
    int64_t times[8];
    bool before[8];
};
static void jump(rcl_time_jump_t const * change, bool before, void * user)
{
    struct observations * observed = (struct observations *)user;
    if (observed->count >= 8) { observed->failed = 1; return; }
    unsigned int i = observed->count++;
    observed->deltas[i] = change->delta.nanoseconds;
    observed->before[i] = before;
    if (rcl_clock_get_now(observed->clock, &observed->times[i]) != RCL_RET_OK) observed->failed = 1;
}
static int fail(char const * message)
{
    fprintf(stderr, "RCL clock assertion: %s\n", message);
    return 1;
}
int main(int argc, char ** argv)
{
    if (argc != 2) return fail("select one named component case");
    rcl_allocator_t allocator = rcl_get_default_allocator();
    rcl_clock_t clock = {0};
    if (strcmp(argv[1], "invalid-clock") == 0) {
        if (rcl_clock_get_now(NULL, NULL) != RCL_RET_INVALID_ARGUMENT) return fail("null clock was accepted");
        rcl_reset_error();
        if (rcl_clock_init((rcl_clock_type_t)99, &clock, &allocator) != RCL_RET_INVALID_ARGUMENT)
            return fail("unknown clock was accepted");
        printf("{\"case\":\"invalid-clock\",\"checks\":2,\"guest_callbacks\":0}\n");
        return 0;
    }
    if (strcmp(argv[1], "denied-clock") == 0) {
        if (rcl_clock_init(RCL_SYSTEM_TIME, &clock, &allocator) != RCL_RET_OK) return fail("system clock init");
        rcl_time_point_value_t value = INT64_C(1234567890123);
        rcl_ret_t result = rcl_clock_get_now(&clock, &value);
        if (result == RCL_RET_OK || value != INT64_C(1234567890123)) return fail("denied clock returned data");
        rcl_reset_error();
        if (rcl_clock_fini(&clock) != RCL_RET_OK) return fail("system clock fini");
        printf("{\"case\":\"denied-clock\",\"checks\":3,\"guest_callbacks\":0,\"unchanged_output\":true}\n");
        return 0;
    }
    if (rcl_clock_init(RCL_ROS_TIME, &clock, &allocator) != RCL_RET_OK) return fail("ROS clock init");
    if (rcl_enable_ros_time_override(&clock) != RCL_RET_OK || rcl_set_ros_time_override(&clock, 100) != RCL_RET_OK)
        return fail("initial override");
    struct observations observed = {.clock = &clock};
    rcl_jump_threshold_t threshold = {.on_clock_change = false, .min_forward = {10}, .min_backward = {-10}};
    if (rcl_clock_add_jump_callback(&clock, threshold, jump, &observed) != RCL_RET_OK) return fail("callback registration");
    if (strcmp(argv[1], "callback-remove") == 0) {
        if (rcl_clock_add_jump_callback(&clock, threshold, jump, &observed) != RCL_RET_ERROR)
            return fail("duplicate callback was accepted");
        rcl_reset_error();
        if (rcl_clock_remove_jump_callback(&clock, jump, &observed) != RCL_RET_OK) return fail("callback removal");
        if (rcl_set_ros_time_override(&clock, 200) != RCL_RET_OK || observed.count != 0)
            return fail("removed callback executed");
        if (rcl_clock_remove_jump_callback(&clock, jump, &observed) != RCL_RET_ERROR)
            return fail("foreign removal was accepted");
        rcl_reset_error();
        if (rcl_clock_fini(&clock) != RCL_RET_OK) return fail("clock fini");
        printf("{\"case\":\"callback-remove\",\"checks\":5,\"guest_callbacks\":%u}\n", observed.count);
        return 0;
    }
    if (strcmp(argv[1], "jump-thresholds") != 0) return fail("unknown component case");
    int64_t values[] = {105, 125, 120, 90, 90};
    for (unsigned int i = 0; i != 5; ++i)
        if (rcl_set_ros_time_override(&clock, values[i]) != RCL_RET_OK) return fail("clock update");
    if (observed.failed || observed.count != 4) return fail("callback count");
    int64_t deltas[] = {20, 20, -30, -30};
    int64_t times[] = {105, 125, 120, 90};
    for (unsigned int i = 0; i != 4; ++i)
        if (observed.deltas[i] != deltas[i] || observed.times[i] != times[i] || observed.before[i] != (i % 2 == 0))
            return fail("guest callback delta/time/order");
    if (rcl_clock_remove_jump_callback(&clock, jump, &observed) != RCL_RET_OK || rcl_clock_fini(&clock) != RCL_RET_OK)
        return fail("clock retirement");
    printf("{\"case\":\"jump-thresholds\",\"checks\":11,\"guest_callbacks\":%u,\"last_time\":%" PRId64 "}\n",
        observed.count, observed.times[3]);
    return 0;
}
