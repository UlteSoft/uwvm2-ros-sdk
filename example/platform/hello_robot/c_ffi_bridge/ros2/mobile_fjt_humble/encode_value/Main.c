/**
 * @file Main.c
 * @brief Exercise encode_value through the complete trajectory_msgs/msg/JointTrajectory foreign ABI.
 * @details Storage is caller-owned; every field is explicitly zero-initialized.
 * This is a chosen input value, not a promise about declared native defaults.
 * No ROS capability is opened and no physical command is published.
 */
#include <hello_robot/c_ffi_bridge/ros2/mobile_fjt_humble/abi.h>
#include <stdio.h>
#include <string.h>
typedef roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory Value;
#define BRIDGE_ENCODE uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode
#define BRIDGE_DECODE uwvm_hello_robot_mobile_fjt_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode
#define WIRE_CAPACITY 1484u

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

    Value value = {0};
    unsigned char wire[WIRE_CAPACITY + 1u];
    size_t length = 0;
    uint32_t error = BRIDGE_ENCODE(&value, wire, WIRE_CAPACITY, &length);
    if(error)
        return (int)error;
    return fwrite(wire, 1u, length, stdout) == length && fflush(stdout) == 0 ? 0 : 5;
}
