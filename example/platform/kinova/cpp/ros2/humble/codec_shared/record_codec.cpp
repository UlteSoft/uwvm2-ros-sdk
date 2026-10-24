/**
 * @file record_codec.cpp
 * @brief Own all original FJT Goal, Feedback and Result fields in one real library.
 * @details No field subset or native ROS object is substituted. Select one original
 * component and transfer canonical bytes only through scalars. Each module owns
 * its complete values and buffers. The real initializer runs before any call;
 * readiness observation never repairs initialization or acquires ROS authority.
 */
#include "codec_api.h"
#include <kinova/cpp/ros2/mobile-fjt-humble-complete/bounded_records.hpp>
static unsigned char input[8581];
static uint32_t selected, used;
static volatile uint32_t initialized;
static uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Goal value_0{};
static uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Feedback value_1{};
static uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Result value_2{};
static roswasmcpp::wire::bytes encoded;

struct Initializer
{
    Initializer()
    {
        initialized = 101;
    }
};

static Initializer initialize_module;

/** @brief Observe actual eager initialization, without lazy repair. */
uint32_t record_codec_ready(void)
{
    return initialized;
}

/** @brief Select original Goal0, Feedback1 or Result2; invalid selectors preserve state. */
uint32_t record_codec_reset(uint32_t component)
{
    if (component > 2)
    {
        return 22;
    }
    selected = component;
    used = 0;
    encoded.clear();
    return 0;
}

/** @brief Append one canonical byte to this module-owned bounded input. */
uint32_t record_codec_push(uint32_t byte)
{
    if (byte > 255 || used == sizeof input)
    {
        return 22;
    }
    input[used++] = (unsigned char)byte;
    return 0;
}

/** @brief Decode and re-encode the selected complete original component. */
uint32_t record_codec_validate(void)
{
    switch (selected)
    {
        case 0:
            if (!roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Goal>::decode(
                    roswasmcpp::ByteView(input, used), value_0))
            {
                return 22;
            }
            return roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Goal>::encode(value_0,
                                                                                                            encoded)
                       ? 0
                       : 22;
        case 1:
            if (!roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Feedback>::decode(
                    roswasmcpp::ByteView(input, used), value_1))
            {
                return 22;
            }
            return roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Feedback>::encode(value_1,
                                                                                                                encoded)
                       ? 0
                       : 22;
        case 2:
            if (!roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Result>::decode(
                    roswasmcpp::ByteView(input, used), value_2))
            {
                return 22;
            }
            return roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Result>::encode(value_2,
                                                                                                              encoded)
                       ? 0
                       : 22;
    }
    return 22;
}

/** @brief Observe the successful module-owned output extent. */
uint32_t record_codec_size(void)
{
    return static_cast<uint32_t>(encoded.size());
}

/** @brief Read one output byte or UINT32_MAX; no pointer crosses modules. */
uint32_t record_codec_byte(uint32_t index)
{
    return index < encoded.size() ? static_cast<uint32_t>(encoded[index]) : UINT32_MAX;
}
