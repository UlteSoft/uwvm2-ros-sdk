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

/** @brief Parse one bounded unsigned input without truncation or trailing text.
 * @param argc Number of actual command-line arguments.
 * @param argv Argument vector retained by the process.
 * @param seed Writable caller-owned output, unchanged on refusal.
 * @return Zero on success or 22 for invalid input.
 */
static int read_seed(int argc, char** argv, uint32_t* seed)
{
    char* end;
    unsigned long value;
    if(argc == 1)
    {
        *seed = 17;
        return 0;
    }
    if(argc != 2 || !argv[1][0] || argv[1][0] == '-')
        return 22;
    for(char const* digit = argv[1]; *digit; ++digit)
        if(*digit < '0' || *digit > '9')
            return 22;
    errno = 0;
    value = strtoul(argv[1], &end, 10);
    if(errno || *end || value > UINT32_MAX)
        return 22;
    *seed = (uint32_t)value;
    return 0;
}

/** @brief Build every active sample field from the actual supplied seed.
 * @param seed Finite unsigned source value, not a precomputed encoded result.
 * @return Complete initialized owned record; no pointer escapes this function.
 */
static roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray sample(uint32_t seed)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value = {0};

    value.header.stamp.sec = -3;
    value.header.stamp.nanosec = seed % 1000000000u;
    value.header.frame_id.size = 3;
    memcpy(value.header.frame_id.data, "cam", 3);
    value.detections.size = 1;
    value.detections.data[0].family.size = 8;
    memcpy(value.detections.data[0].family.data, "tag36h11", 8);
    value.detections.data[0].id = (int32_t)(seed & 0x7fffffffu);
    value.detections.data[0].center.x = (double)seed / 8.0;
    value.detections.data[0].pose.pose.pose.orientation.w = 1.0;
    for(size_t index = 0; index < 4; ++index)
    {
        value.detections.data[0].corners[index].x = (double)seed + (double)index;
        value.detections.data[0].corners[index].y = (double)index * 2.5;
    }
    for(size_t index = 0; index < 36; ++index)
        value.detections.data[0].pose.pose.covariance[index] = (double)(seed % 31u) + (double)index / 64.0;

    return value;
}

/** @brief Refuse truncated, trailing and undersized operations transactionally.
 * @return Zero only when refused operations preserve the original destinations.
 */
int main(int argc, char** argv)
{
    uint32_t seed = 0;
    unsigned char wire[ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES + 1],
        refused[ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES];
    size_t used = 0, sentinel = 12345;
    int error = read_seed(argc, argv, &seed);
    if(error)
        return error;
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value = sample(seed), destination = sample(seed + 1u), before;
    memcpy(&before, &destination, sizeof before);
    if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
           &value,
           wire,
           ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES,
           &used) ||
       used == 0)
        return 22;
    if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(wire, used - 1, &destination) != 22 ||
       memcmp(&before, &destination, sizeof before))
        return 22;
    wire[used] = 0;
    if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(wire, used + 1, &destination) != 22 ||
       memcmp(&before, &destination, sizeof before))
        return 22;
    memset(refused, 0xa5, sizeof refused);
    if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(&value, refused, used - 1, &sentinel) != 90 || sentinel != 12345)
        return 22;
    for(size_t index = 0; index < sizeof refused; ++index)
        if(refused[index] != 0xa5)
            return 22;
    return puts("truncation=22 trailing=22 capacity=90 destinations=preserved") < 0 ? 5 : 0;
}
