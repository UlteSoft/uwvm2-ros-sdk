/** @file main.c
 * @brief Exercise every field of one original control_msgs/action/FollowJointTrajectory_Feedback value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <kuka/c/ros2/kuka-ros2-complete/bounded_records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback value, decoded;
    static unsigned char bytes[4128], again[4128];
    size_t length = 0, second = 0;
    uint32_t status = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(&value, bytes, sizeof bytes, &length);
    if(status)
        return (int)status;
    status = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(bytes, length, &decoded);
    if(status)
        return (int)status;
    status = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(&decoded, again, sizeof again, &second);
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
