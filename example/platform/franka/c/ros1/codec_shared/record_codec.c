/**
 * @file record_codec.c
 * @brief Own and validate the complete original franka_msgs/FrankaState in a real c library.
 * @details Static and shared variants use the same scalar-only public interface.
 * The shared variant owns separate linear memory and runs its real constructor
 * before main. No ROS object, control invocation, permission or lazy repair occurs.
 */
#include "codec_api.h"
#include <franka/c/ros1/franka-ros1-complete/bounded_records.h>
static unsigned char input[2620];
static uint32_t used;
static volatile uint32_t initialized;
static roswasmc_bounded_1_franka_msgs_FrankaState value;
static unsigned char encoded[2619];
static size_t encoded_size;

__attribute__((constructor)) static void initialize_module(void)
{
    initialized = 101;
}

uint32_t record_codec_ready(void)
{
    return initialized;
}

uint32_t record_codec_reset(void)
{
    used = 0;
    encoded_size = 0;
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
    unsigned status = roswasmc_bounded_1_franka_msgs_FrankaState_decode(input, used, &value);
    if(status)
    {
        return status;
    }
    return roswasmc_bounded_1_franka_msgs_FrankaState_encode(&value, encoded, sizeof encoded, &encoded_size);
}

uint32_t record_codec_size(void)
{
    return (uint32_t)encoded_size;
}

uint32_t record_codec_byte(uint32_t index)
{
    return index < encoded_size ? encoded[index] : UINT32_MAX;
}
