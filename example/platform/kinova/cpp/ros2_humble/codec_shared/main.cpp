/**
 * @file main.cpp
 * @brief Validate the complete original control_msgs/action/FollowJointTrajectory components through an ordinary shared
 * dependency.
 * @details A component selector and hexadecimal argument carry every original encoded field. The library's
 * eager constructor must finish before the first call. All bytes cross the
 * module boundary as scalars; the library owns its buffers and typed value.
 * This command reports codec status and invokes no native ROS controller.
 */
#include "codec_api.h"
#include <stdio.h>
#include <string.h>

/** @brief Convert one ASCII hexadecimal digit; return 256 for invalid text. */
static unsigned nibble(unsigned char digit)
{
    if (digit >= '0' && digit <= '9')
    {
        return digit - '0';
    }
    if (digit >= 'a' && digit <= 'f')
    {
        return digit - 'a' + 10;
    }
    if (digit >= 'A' && digit <= 'F')
    {
        return digit - 'A' + 10;
    }
    return 256;
}

/**
 * @brief Validate the requested original record and preserve operation status.
 * @param argc Number of command-line arguments.
 * @param argv Program name, goal/feedback/result selector, then canonical hexadecimal bytes.
 * @return Zero after a complete round trip; 22 for arguments/codec errors,
 * or 42 when eager initialization has not completed.
 */
int main(int argc, char** argv)
{
    unsigned primary = 0;
    unsigned char const* text;
    if (record_codec_ready() != 101)
    {
        return 42;
    }
    if (argc != 3)
    {
        return 22;
    }
    primary = record_codec_reset(!strcmp(argv[1], "goal")       ? 0
                                 : !strcmp(argv[1], "feedback") ? 1
                                 : !strcmp(argv[1], "result")   ? 2
                                                                : UINT32_MAX);
    text = (unsigned char const*)argv[2];
    while (!primary && *text)
    {
        unsigned high = nibble(*text++);
        unsigned low;
        if (!*text)
        {
            primary = 22;
            break;
        }
        low = nibble(*text++);
        if (high > 15 || low > 15)
        {
            primary = 22;
            break;
        }
        primary = record_codec_push((high << 4) | low);
    }
    if (!primary)
    {
        primary = record_codec_validate();
    }
    if (!primary)
    {
        uint32_t size = record_codec_size();
        uint32_t index;
        printf("control_msgs/action/FollowJointTrajectory components bytes=%u\n", (unsigned)size);
        for (index = 0; index < size; ++index)
        {
            printf("%02x", (unsigned)record_codec_byte(index));
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=0\n", primary);
    return (int)primary;
}
