/** @file main.c
 * @brief Exercise every field of one original dsr_msgs2/srv/GetRobotState_Response value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <doosan/c_ffi_bridge/ros2/doosan-ros2-jazzy-complete/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response value, decoded;
    static unsigned char bytes[2], again[2];
    size_t length = 0, second = 0;
    uint32_t status = doosan_Ros2Dsr_msgs2SrvGetRobotState_Response_encode(&value, bytes, sizeof bytes, &length);
    if(status)
        return (int)status;
    status = doosan_Ros2Dsr_msgs2SrvGetRobotState_Response_decode(bytes, length, &decoded);
    if(status)
        return (int)status;
    status = doosan_Ros2Dsr_msgs2SrvGetRobotState_Response_encode(&decoded, again, sizeof again, &second);
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
