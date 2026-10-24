/** @file main.c
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-groot/c_ffi_bridge/ros2/records.h>
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
static roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor sample(uint32_t seed)
{
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor value = {0};

    value.key.size = 5;
    memcpy(value.key.data, "state", 5);
    value.shape[0] = 1;
    value.shape[1] = 1;
    value.shape[2] = 3;
    value.values.size = 3;
    for(size_t index = 0; index < 3; ++index)
        value.values.data[index] = (float)(seed % 97u) / 8.0f + (float)index;

    return value;
}

/** @brief Refuse truncated, trailing and undersized operations transactionally.
 * @return Zero only when refused operations preserve the original destinations.
 */
int main(int argc, char** argv)
{
    uint32_t seed = 0;
    unsigned char wire[ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES + 1],
        refused[ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES];
    size_t used = 0, sentinel = 12345;
    int error = read_seed(argc, argv, &seed);
    if(error)
        return error;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor value = sample(seed), destination = sample(seed + 1u), before;
    memcpy(&before, &destination, sizeof before);
    if(nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_encode(&value, wire, ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES, &used) ||
       used == 0)
        return 22;
    if(nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_decode(wire, used - 1, &destination) != 22 || memcmp(&before, &destination, sizeof before))
        return 22;
    wire[used] = 0;
    if(nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_decode(wire, used + 1, &destination) != 22 || memcmp(&before, &destination, sizeof before))
        return 22;
    memset(refused, 0xa5, sizeof refused);
    if(nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_encode(&value, refused, used - 1, &sentinel) != 90 || sentinel != 12345)
        return 22;
    for(size_t index = 0; index < sizeof refused; ++index)
        if(refused[index] != 0xa5)
            return 22;
    return puts("truncation=22 trailing=22 capacity=90 destinations=preserved") < 0 ? 5 : 0;
}
