/**
 * @file Main.c
 * @brief Exercise decode_value through the complete pal_device_msgs/BatteryState foreign ABI.
 * @details Storage is caller-owned; every field is explicitly zero-initialized.
 * This is a chosen input value, not a promise about declared native defaults.
 * No ROS capability is opened and no physical command is published.
 */
#include <pal/c_ffi_bridge/ros1/ros1_noetic_devel/abi.h>
#include <stdio.h>
#include <string.h>
typedef roswasmc_bounded_1_pal_device_msgs_BatteryState Value;
#define BRIDGE_ENCODE uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_encode
#define BRIDGE_DECODE uwvm_pal_ros1_noetic_devel_Ros1Pal_device_msgsBatteryState_decode
#define WIRE_CAPACITY 5u

/**
 * @brief Run one bounded codec flow and report the actual result.
 * @param argc Exactly one; decode_value reads canonical bytes from stdin to EOF.
 * @param argv Borrowed command arguments; no path or permission is inferred.
 * @return Zero only after complete success, otherwise the codec or I/O error.
 * @details Bad extents must preserve every destination byte; no failure is skipped.
 */
int main(int argc, char** argv)
{
    (void)argv;
    if(argc != 1)
        return 22;

    unsigned char wire[WIRE_CAPACITY + 1u], encoded[WIRE_CAPACITY + 1u];
    size_t length = fread(wire, 1u, sizeof wire, stdin), count = 0;
    if(ferror(stdin))
        return 5;
    Value value = {0};
    uint32_t error = BRIDGE_DECODE(wire, length, &value);
    if(error)
        return (int)error;
    error = BRIDGE_ENCODE(&value, encoded, WIRE_CAPACITY, &count);
    if(error)
        return (int)error;
    if(count != length || memcmp(wire, encoded, count) != 0)
        return 22;
    return printf("canonical_bytes=%zu\n", count) < 0 ? 5 : 0;
}
