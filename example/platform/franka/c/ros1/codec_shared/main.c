/**
 * @file main.c
 * @brief Validate the complete original franka_msgs/FrankaState through an ordinary shared dependency.
 * @details One hexadecimal argument contains every encoded field. The library's
 * eager constructor must finish before the first call. All bytes cross the
 * module boundary as scalars; the library owns its buffers and typed value.
 * This command reports codec status and invokes no native ROS controller.
 */
#include "codec_api.h"
#include <stdio.h>

/** @brief Convert one ASCII hexadecimal digit; return 256 for invalid text. */
static unsigned nibble(unsigned char digit)
{
    if(digit >= '0' && digit <= '9')
    {
        return digit - '0';
    }
    if(digit >= 'a' && digit <= 'f')
    {
        return digit - 'a' + 10;
    }
    if(digit >= 'A' && digit <= 'F')
    {
        return digit - 'A' + 10;
    }
    return 256;
}

/**
 * @brief Validate the requested original record and preserve operation status.
 * @param argc Number of command-line arguments.
 * @param argv Program name followed by the documented alias or encoded value.
 * @return Zero after validation and cleanup, otherwise the primary or cleanup error.
 */
int main(int argc, char** argv)
{
    unsigned primary = 0;
    unsigned char const* text;
    if(record_codec_ready() != 101)
    {
        return 42;
    }
    if(argc != 2)
    {
        return 22;
    }
    primary = record_codec_reset();
    text = (unsigned char const*)argv[1];
    while(!primary && *text)
    {
        unsigned high = nibble(*text++);
        unsigned low;
        if(!*text)
        {
            primary = 22;
            break;
        }
        low = nibble(*text++);
        if(high > 15 || low > 15)
        {
            primary = 22;
            break;
        }
        primary = record_codec_push((high << 4) | low);
    }
    if(!primary)
    {
        primary = record_codec_validate();
    }
    if(!primary)
    {
        uint32_t size = record_codec_size();
        uint32_t index;
        printf("franka_msgs/FrankaState bytes=%u\n", (unsigned)size);
        for(index = 0; index < size; ++index)
        {
            printf("%02x", (unsigned)record_codec_byte(index));
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=0\n", primary);
    return (int)primary;
}
