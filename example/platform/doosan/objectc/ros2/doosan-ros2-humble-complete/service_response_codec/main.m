/** @file main.c
 * @brief Exercise every field of one original dsr_msgs2/srv/GetRobotState_Response value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <doosan/objectc/ros2/doosan-ros2-humble-complete/Records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response value, decoded;
    static unsigned char bytes[2], again[2];
    size_t length = 0, second = 0;
    uint32_t status = [DoosanDoosanRos2HumbleCompleteRos2Dsr_msgs2SrvGetRobotState_Response encode:&value bytes:bytes capacity:sizeof bytes length:&length];
    if(status)
        return (int)status;
    status = [DoosanDoosanRos2HumbleCompleteRos2Dsr_msgs2SrvGetRobotState_Response decode:bytes length:length value:&decoded];
    if(status)
        return (int)status;
    status = [DoosanDoosanRos2HumbleCompleteRos2Dsr_msgs2SrvGetRobotState_Response encode:&decoded bytes:again capacity:sizeof again length:&second];
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
