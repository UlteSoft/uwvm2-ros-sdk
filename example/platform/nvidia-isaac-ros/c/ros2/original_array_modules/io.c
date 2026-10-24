/** @file io.c
 * @brief IO-owned transfer lifetime, standard output and an explicitly granted clock.
 * @details No ROS authority is present. The direct ROS probe is expected to fail.
 */
#include "array_modules.h"
#include <ros2/c/roswasm/ros2.h>
#include <stdio.h>
#include <string.h>
#include <wasi/api.h>

static unsigned char bytes[NV_MAX_WIRE];
static int64_t facts[NV_FACT_COUNT];
static uint64_t generation;
static uint32_t expected, written, active, sealed, reported;
static char const* const names[NV_FACT_COUNT] = {"primary",
                                                 "cleanup",
                                                 "encoding",
                                                 "mode",
                                                 "retired",
                                                 "stale",
                                                 "close_again",
                                                 "reopen",
                                                 "old_again",
                                                 "fresh_close",
                                                 "fresh_close_attempted",
                                                 "main_ros",
                                                 "io_ros",
                                                 "algorithm_ros",
                                                 "algorithm_clock",
                                                 "algorithm_random",
                                                 "ros_clock",
                                                 "io_wait",
                                                 "io_stale",
                                                 "algorithm_count",
                                                 "algorithm_id_sum",
                                                 "algorithm_checksum",
                                                 "clock_unchanged",
                                                 "random_unchanged",
                                                 "ros_clock_unchanged"};

uint64_t nv_io_begin(uint32_t length)
{
    if (active || length > NV_MAX_WIRE || generation == UINT64_MAX)
    {
        return 0;
    }
    ++generation;
    expected = length;
    written = 0;
    active = 1;
    sealed = 0;
    reported = 0;
    memset(facts, 0, sizeof facts);
    return generation;
}

uint32_t nv_io_put(uint64_t token, uint32_t index, uint32_t byte)
{
    if (!active || token != generation)
    {
        return 9;
    }
    if (index != written || index >= expected || byte > 255)
    {
        return 22;
    }
    bytes[written++] = (unsigned char)byte;
    return 0;
}

uint32_t nv_io_commit(uint64_t token)
{
    if (!active || token != generation)
    {
        return 9;
    }
    if (written != expected)
    {
        return 22;
    }
    active = 0;
    sealed = 1;
    return 0;
}

uint32_t nv_io_fact(uint64_t token, uint32_t key, int64_t value)
{
    if (token != generation || reported || (!active && !sealed))
    {
        return 9;
    }
    if (key >= NV_FACT_COUNT)
    {
        return 22;
    }
    facts[key] = value;
    return 0;
}

uint32_t nv_io_report(uint64_t token)
{
    if (token != generation || !sealed || reported)
    {
        return 9;
    }
    reported = 1;
    if (printf("{") < 0)
    {
        return 73;
    }
    for (uint32_t i = 0; i < NV_FACT_COUNT; ++i)
    {
        if (printf("%s\"%s\":%lld", i ? "," : "", names[i], (long long)facts[i]) < 0)
        {
            return 73;
        }
    }
    if (printf(",\"wire_hex\":\"") < 0)
    {
        return 73;
    }
    for (uint32_t i = 0; i < written; ++i)
    {
        if (printf("%02x", (unsigned)bytes[i]) < 0)
        {
            return 73;
        }
    }
    if (printf("\"}\n") < 0 || fflush(stdout))
    {
        return 73;
    }
    return 0;
}

uint32_t nv_io_wait(void)
{
    __wasi_subscription_t input = {0};
    __wasi_event_t output = {0};
    __wasi_size_t count = 0;
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = 20000000;
    input.u.u.clock.precision = 1000000;
    if (__wasi_poll_oneoff(&input, &output, 1, &count) || count != 1 || output.error ||
        output.type != __WASI_EVENTTYPE_CLOCK)
    {
        return 5;
    }
    return 0;
}

uint32_t nv_io_probe_ros(void)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t error = roswasmc_open(&owner, "sample", 6);
    if (!error)
    {
        (void)roswasmc_close(&owner);
    }
    return error;
}
