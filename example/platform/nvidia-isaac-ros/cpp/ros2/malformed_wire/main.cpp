/** @file main.cpp
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-isaac-ros/cpp/ros2/complete/records.hpp>
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
static uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray sample(uint32_t seed)
{
    uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value{};

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

/** @brief Verify exact framing and transactional C++ destination ownership.
 * @return Zero only when truncation and trailing bytes are refused without writes.
 */
int main(int argc, char** argv)
{
    uint32_t seed{};
    if(int error = read_seed(argc, argv, &seed))
        return error;
    auto value = sample(seed), destination = sample(seed + 1u);
    uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray before{};
    memcpy(&before, &destination, sizeof before);
    roswasmcpp::wire::bytes wire;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>::encode(value, wire) || wire.empty())
        return 22;
    auto shortened = std::span<unsigned char const>(wire.data(), wire.size() - 1);
    if(roswasmcpp::Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>::decode(shortened, destination) ||
       memcmp(&before, &destination, sizeof before))
        return 22;
    wire.push_back(0);
    if(roswasmcpp::Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>::decode(
           std::span<unsigned char const>(wire.data(), wire.size()),
           destination) ||
       memcmp(&before, &destination, sizeof before))
        return 22;
    return puts("truncation=refused trailing=refused destination=preserved") < 0 ? 5 : 0;
}
