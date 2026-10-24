/** @file main.cpp
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-isaac-sim/cpp/ros2/complete/records.hpp>
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
static uwvm_custom::Ros2Sensor_msgsMsgJointState sample(uint32_t seed)
{
    uwvm_custom::Ros2Sensor_msgsMsgJointState value{};

    value.header.stamp.sec = -2;
    value.header.stamp.nanosec = seed % 1000000000u;
    value.header.frame_id.size = 4;
    memcpy(value.header.frame_id.data, "base", 4);
    value.name.size = 2;
    value.position.size = 2;
    value.velocity.size = 2;
    value.effort.size = 2;
    for(size_t index = 0; index < 2; ++index)
    {
        value.name.data[index].size = 2;
        value.name.data[index].data[0] = 'j';
        value.name.data[index].data[1] = (unsigned char)('0' + index);
        value.position.data[index] = (double)(seed % 41u) / 16.0 + (double)index;
        value.velocity.data[index] = (double)index / 32.0;
        value.effort.data[index] = (double)(seed % 23u) / 4.0;
    }

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
    uwvm_custom::Ros2Sensor_msgsMsgJointState before{};
    memcpy(&before, &destination, sizeof before);
    roswasmcpp::wire::bytes wire;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Sensor_msgsMsgJointState>::encode(value, wire) || wire.empty())
        return 22;
    auto shortened = std::span<unsigned char const>(wire.data(), wire.size() - 1);
    if(roswasmcpp::Codec<uwvm_custom::Ros2Sensor_msgsMsgJointState>::decode(shortened, destination) || memcmp(&before, &destination, sizeof before))
        return 22;
    wire.push_back(0);
    if(roswasmcpp::Codec<uwvm_custom::Ros2Sensor_msgsMsgJointState>::decode(std::span<unsigned char const>(wire.data(), wire.size()), destination) ||
       memcmp(&before, &destination, sizeof before))
        return 22;
    return puts("truncation=refused trailing=refused destination=preserved") < 0 ? 5 : 0;
}
