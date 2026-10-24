/**
 * @file Main.c
 * @brief Exercise reject_frame through the complete turtlebot3_msgs/msg/SensorState foreign ABI.
 * @details Storage is caller-owned; every field is explicitly zero-initialized.
 * This is a chosen input value, not a promise about declared native defaults.
 * No ROS capability is opened and no physical command is published.
 */
#include <robotis/c_ffi_bridge/ros2/jazzy/abi.h>
#include <stdio.h>
#include <string.h>
typedef roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState Value;
#define BRIDGE_ENCODE uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_encode
#define BRIDGE_DECODE uwvm_robotis_jazzy_Ros2Turtlebot3_msgsMsgSensorState_decode
#define WIRE_CAPACITY 168u

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

    Value value = {0}, destination;
    unsigned char wire[WIRE_CAPACITY + 1u], before[sizeof destination];
    size_t length = 0;
    uint32_t error = BRIDGE_ENCODE(&value, wire, WIRE_CAPACITY, &length);
    if(error)
        return (int)error;
    if(length == 0 || length > WIRE_CAPACITY)
        return 22;
    memset(&destination, 165, sizeof destination);
    memcpy(before, &destination, sizeof destination);
    error = BRIDGE_DECODE(wire, length - 1u, &destination);
    if(error == 0 || memcmp(before, &destination, sizeof destination) != 0)
        return 22;
    wire[length] = 165u;
    error = BRIDGE_DECODE(wire, length + 1u, &destination);
    if(error == 0 || memcmp(before, &destination, sizeof destination) != 0)
        return 22;
    return puts("truncated_rejections=1 trailing_rejections=1 unchanged_destinations=2") < 0 ? 5 : 0;
}
