/** @file main.c
 * @brief Exercise every field of one original ur_msgs/action/FollowJointTrajectoryUntil_Feedback value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <universal_robots/objectc/ros2/universal-robots-ros2-complete/Records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback value, decoded;
    static unsigned char bytes[2352], again[2352];
    size_t length = 0, second = 0;
    uint32_t status = [UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback encode:&value
                                                                                                                       bytes:bytes
                                                                                                                    capacity:sizeof bytes
                                                                                                                      length:&length];
    if(status)
        return (int)status;
    status = [UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback decode:bytes length:length value:&decoded];
    if(status)
        return (int)status;
    status = [UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback encode:&decoded
                                                                                                              bytes:again
                                                                                                           capacity:sizeof again
                                                                                                             length:&second];
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
