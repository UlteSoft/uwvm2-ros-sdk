/**
 * @file producer.c
 * @brief Own original Array bytes/records behind a generation-token scalar ABI.
 * @details Preview 1 default WASI remains enabled. This module receives neither
 * ROS authority nor an additional clock grant. Its host probes check that policy.
 */
#include "array_shared.h"
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <ros2/c/roswasm/ros2.h>
#include <wasi/api.h>

static unsigned char bytes[9872];
static uint64_t generation;
static uint32_t state, expected, written;
static uint32_t count, checksum;
static int64_t id_sum;

uint64_t nv_array_begin(uint32_t size)
{
    if (state || size > sizeof bytes || generation == UINT64_MAX)
    {
        return 0;
    }
    ++generation;
    state = 1;
    expected = size;
    written = 0;
    return generation;
}

uint32_t nv_array_put(uint64_t token, uint32_t index, uint32_t byte)
{
    if (token != generation || state != 1)
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

uint32_t nv_array_finish(uint64_t token)
{
    if (token != generation || state != 1)
    {
        return 9;
    }
    if (written != expected)
    {
        return 22;
    }
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value = {0};
    uint32_t error = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
        bytes, written, &value);
    if (error)
    {
        return error;
    }
    count = value.detections.size;
    id_sum = 0;
    checksum = UINT32_C(2166136261);
    for (uint32_t i = 0; i < count; ++i)
    {
        id_sum += (int64_t)value.detections.data[i].id;
    }
    for (uint32_t i = 0; i < written; ++i)
    {
        checksum = (checksum ^ bytes[i]) * UINT32_C(16777619);
    }
    state = 2;
    return 0;
}

int64_t nv_array_fact(uint64_t token, uint32_t key)
{
    if (token != generation || state != 2)
    {
        return -9;
    }
    switch (key)
    {
    case 0:
        return count;
    case 1:
        return id_sum;
    case 2:
        return checksum;
    default:
        return -22;
    }
}

uint32_t nv_array_close(uint64_t token)
{
    if (token != generation || state != 2)
    {
        return 9;
    }
    state = 0;
    return 0;
}

uint32_t nv_array_probe_ros(void)
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

uint32_t nv_array_probe_clock(void)
{
    __wasi_timestamp_t output = UINT64_C(0x1122334455667788);
    uint32_t error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &output);
    return output == UINT64_C(0x1122334455667788) ? error : 70;
}
