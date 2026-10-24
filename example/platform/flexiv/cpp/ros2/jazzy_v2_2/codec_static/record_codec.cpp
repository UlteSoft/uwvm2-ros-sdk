/**
 * @file record_codec.cpp
 * @brief Own and validate the complete original flexiv_msgs/msg/RobotStates in a real cpp library.
 * @details Static and shared variants use the same scalar-only public interface.
 * The shared variant owns separate linear memory and runs its real constructor
 * before main. No ROS object, control invocation, permission or lazy repair occurs.
 */
#include "codec_api.h"
#include <flexiv/cpp/ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.hpp>
static unsigned char input[5161];
static uint32_t used;
static volatile uint32_t initialized;
using Value = uwvm_custom::Ros2Flexiv_msgsMsgRobotStates;
using Codec = roswasmcpp::Codec<Value>;
static Value value{};
static roswasmcpp::wire::bytes encoded;

struct Initializer
{
    Initializer()
    {
        initialized = 101;
    }
};

static Initializer initialize_module;

uint32_t record_codec_ready(void)
{
    return initialized;
}

uint32_t record_codec_reset(void)
{
    used = 0;
    encoded.clear();
    return 0;
}

uint32_t record_codec_push(uint32_t byte)
{
    if(byte > 255 || used == sizeof input)
    {
        return 22;
    }
    input[used++] = (unsigned char)byte;
    return 0;
}

uint32_t record_codec_validate(void)
{
    if(!Codec::decode(roswasmcpp::ByteView(input, used), value))
    {
        return 22;
    }
    return Codec::encode(value, encoded) ? 0 : 22;
}

uint32_t record_codec_size(void)
{
    return static_cast<uint32_t>(encoded.size());
}

uint32_t record_codec_byte(uint32_t index)
{
    return index < encoded.size() ? static_cast<uint32_t>(encoded[index]) : UINT32_MAX;
}
