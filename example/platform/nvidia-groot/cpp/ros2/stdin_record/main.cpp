/** @file main.cpp
 * @brief Exercise a complete NVIDIA canonical value without native side effects.
 * @details The selected operation uses real codecs and input-dependent values.
 * Storage remains caller-owned; all errors propagate as nonzero exit statuses.
 * This example needs only manually authorized stdio. It creates no ROS entity.
 */
#include <errno.h>
#include <nvidia-groot/cpp/ros2/complete/records.hpp>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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

/** @brief Validate and reproduce a complete dynamic stdin record through C++.
 * @return Zero for full-value equality; 22 malformed, 90 oversized, 5 I/O failure.
 */
int main()
{
    unsigned char input[ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES + 1];
    size_t count = fread(input, 1, sizeof input, stdin);
    if(ferror(stdin))
        return 5;
    if(count > ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES)
        return 90;
    uwvm_custom::Ros2Uwvm_groot_bridgeMsgFloatTensor value{};
    roswasmcpp::wire::bytes output;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeMsgFloatTensor>::decode(std::span<unsigned char const>(input, count), value) ||
       !roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeMsgFloatTensor>::encode(value, output) || output.size() != count ||
       memcmp(input, output.data(), count))
        return 22;
    return display(output.data(), output.size());
}
