/** @file main.c
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** @brief Print every encoded byte, including all active nested fields.
 * @param wire Read-only count-byte canonical body.
 * @param count Exact active extent in bytes.
 * @return Zero after a complete flush or 5 on an I/O failure.
 */
static int display(unsigned char const* wire, size_t count)
{
    if(printf("wire_bytes=%lu wire_hex=", (unsigned long)count) < 0)
        return 5;
    for(size_t index = 0; index < count; ++index)
        if(printf("%02x", wire[index]) < 0)
            return 5;
    if(putchar('\n') == EOF || fflush(stdout))
        return 5;
    return 0;
}

/** @brief Decode and reproduce one complete caller-supplied canonical body.
 * @return Zero for exact full-value bytes, 22 for malformed input, 90 over quota,
 * or 5 for an input/output error. A refusal emits no partial value.
 */
int main(void)
{
    unsigned char input[ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES + 1],
        output[ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES];
    size_t count = fread(input, 1, sizeof input, stdin), used = 0;
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value = {0};
    if(ferror(stdin))
        return 5;
    if(count > ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES)
        return 90;
    if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(input, count, &value) ||
       roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(&value, output, sizeof output, &used))
        return 22;
    if(count != used || memcmp(input, output, used))
        return 22;
    return display(output, used);
}
