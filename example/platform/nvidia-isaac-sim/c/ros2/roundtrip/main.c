/** @file main.c
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-isaac-sim/c/ros2/complete/records.h>
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
static roswasmc_bounded_2_sensor_msgs_msg_JointState sample(uint32_t seed)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState value = {0};

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

/** @brief Encode, decode and re-encode the complete input-dependent record.
 * @return Zero only when all bytes and active extents survive the round trip.
 */
int main(int argc, char** argv)
{
    uint32_t seed = 0;
    unsigned char first[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES], second[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES];
    size_t used = 0, again = 0;
    int error = read_seed(argc, argv, &seed);
    if(error)
        return error;
    roswasmc_bounded_2_sensor_msgs_msg_JointState value = sample(seed), decoded = {0};
    if(roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&value, first, sizeof first, &used) ||
       roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(first, used, &decoded) ||
       roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&decoded, second, sizeof second, &again) || again != used || memcmp(first, second, used))
        return 22;
    return display(first, used);
}
