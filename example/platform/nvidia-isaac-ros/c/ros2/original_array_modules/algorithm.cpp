/** @file algorithm.cpp
 * @brief Decode the complete original Array in algorithm-owned memory with default WASI.
 * @details Host probes must fail independently of successful pure value processing.
 */
#include "array_modules.h"
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <ros2/c/roswasm/ros2.h>
#include <string.h>
#include <wasi/api.h>

/** @brief Complete original Array decoded only in algorithm-owned storage. */
typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray Array;
static unsigned char bytes[NV_MAX_WIRE];
static Array value;
static uint32_t expected, written, complete, checksum;
static uint32_t clock_unchanged, random_unchanged;
static int64_t id_sum;

uint32_t nv_algorithm_begin(uint32_t length)
{
    if (length > NV_MAX_WIRE)
    {
        return 22;
    }
    expected = length;
    written = 0;
    complete = 0;
    checksum = 0;
    id_sum = 0;
    return 0;
}

uint32_t nv_algorithm_put(uint32_t index, uint32_t byte)
{
    if (complete || index != written || index >= expected || byte > 255)
    {
        return 22;
    }
    bytes[written++] = (unsigned char)byte;
    return 0;
}

uint32_t nv_algorithm_finish(void)
{
    if (complete || written != expected)
    {
        return 22;
    }
    uint32_t error =
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(bytes, written, &value);
    if (error)
    {
        return error;
    }
    uint32_t next = UINT32_C(2166136261);
    for (uint32_t i = 0; i < written; ++i)
    {
        next = (next ^ bytes[i]) * UINT32_C(16777619);
    }
    for (uint32_t i = 0; i < value.detections.size; ++i)
    {
        id_sum += (int64_t)value.detections.data[i].id;
    }
    checksum = next;
    complete = 1;
    return 0;
}

uint32_t nv_algorithm_count(void)
{
    return complete ? value.detections.size : 0;
}

int64_t nv_algorithm_id_sum(void)
{
    return complete ? id_sum : 0;
}

uint32_t nv_algorithm_checksum(void)
{
    return complete ? checksum : 0;
}

uint32_t nv_algorithm_probe_ros(void)
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

uint32_t nv_algorithm_probe_clock(void)
{
    __wasi_timestamp_t value = UINT64_C(0x1122334455667788);
    uint32_t error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &value);
    clock_unchanged = value == UINT64_C(0x1122334455667788);
    return error;
}

uint32_t nv_algorithm_probe_random(void)
{
    unsigned char value[16];
    memset(value, 0x5a, sizeof value);
    uint32_t error = __wasi_random_get(value, sizeof value);
    random_unchanged = 1;
    for (uint32_t i = 0; i < sizeof value; ++i)
    {
        if (value[i] != 0x5a)
        {
            random_unchanged = 0;
        }
    }
    return error;
}

uint32_t nv_algorithm_clock_unchanged(void)
{
    return clock_unchanged;
}

uint32_t nv_algorithm_random_unchanged(void)
{
    return random_unchanged;
}
