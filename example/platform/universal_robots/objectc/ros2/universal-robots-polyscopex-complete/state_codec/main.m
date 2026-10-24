/** @file main.c
 * @brief Exercise every field of one original urinterfaces/msg/RobotMode value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <universal_robots/objectc/ros2/universal-robots-polyscopex-complete/Records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_urinterfaces_msg_RobotMode value, decoded;
    static unsigned char bytes[141], again[141];
    size_t length = 0, second = 0;
    uint32_t status = [UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRobotMode encode:&value
                                                                                                     bytes:bytes
                                                                                                  capacity:sizeof bytes
                                                                                                    length:&length];
    if(status)
        return (int)status;
    status = [UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRobotMode decode:bytes length:length value:&decoded];
    if(status)
        return (int)status;
    status = [UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRobotMode encode:&decoded bytes:again capacity:sizeof again length:&second];
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"urinterfaces/msg/RobotMode\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
