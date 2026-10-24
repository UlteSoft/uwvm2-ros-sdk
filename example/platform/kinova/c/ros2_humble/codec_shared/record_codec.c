/**
 * @file record_codec.c
 * @brief Own all original FJT Goal, Feedback and Result fields in one real library.
 * @details No field subset or native ROS object is substituted. Select one original
 * component and transfer canonical bytes only through scalars. Each module owns
 * its complete values and buffers. The real initializer runs before any call;
 * readiness observation never repairs initialization or acquires ROS authority.
 */
#include "codec_api.h"
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
static unsigned char input[8581];
static uint32_t selected, used;
static volatile uint32_t initialized;
static roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal value_0;
static roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback value_1;
static roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result value_2;
static unsigned char encoded[8580];
static size_t encoded_size;

__attribute__((constructor)) static void initialize_module(void)
{
    initialized = 101;
}

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
    encoded_size = 0;
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
    unsigned status;
    switch (selected)
    {
        case 0:
            status = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(input, used, &value_0);
            if (status)
            {
                return status;
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(
                &value_0, encoded, sizeof encoded, &encoded_size);
        case 1:
            status =
                roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(input, used, &value_1);
            if (status)
            {
                return status;
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(
                &value_1, encoded, sizeof encoded, &encoded_size);
        case 2:
            status = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(input, used, &value_2);
            if (status)
            {
                return status;
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(
                &value_2, encoded, sizeof encoded, &encoded_size);
    }
    return 22;
}

/** @brief Observe the successful module-owned output extent. */
uint32_t record_codec_size(void)
{
    return (uint32_t)encoded_size;
}

/** @brief Read one output byte or UINT32_MAX; no pointer crosses modules. */
uint32_t record_codec_byte(uint32_t index)
{
    return index < encoded_size ? encoded[index] : UINT32_MAX;
}
