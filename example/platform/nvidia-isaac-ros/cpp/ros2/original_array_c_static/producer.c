/**
 * @file producer.c
 * @brief Decode the original Array using a genuine C archive producer.
 * @details Caller storage is borrowed synchronously; only scalar values are returned.
 */
#include "array_library.h"
#include <nvidia-isaac-ros/c/ros2/complete/records.h>

uint32_t nv_array_summarize(unsigned char const *wire, size_t size, nv_array_summary *output)
{
    if (!wire || !output || size > 9872)
    {
        return 22;
    }
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value = {0};
    uint32_t error = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
        wire, size, &value);
    if (error)
    {
        return error;
    }
    nv_array_summary next = {0};
    next.count = value.detections.size;
    next.checksum = UINT32_C(2166136261);
    for (uint32_t i = 0; i < value.detections.size; ++i)
    {
        next.id_sum += (int64_t)value.detections.data[i].id;
    }
    for (size_t i = 0; i < size; ++i)
    {
        next.checksum = (next.checksum ^ wire[i]) * UINT32_C(16777619);
    }
    *output = next;
    return 0;
}
