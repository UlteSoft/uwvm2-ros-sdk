/** @file main.c
 * @brief Exercise every field of one original dsr_msgs/GetRobotStateResponse value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <doosan/objectc/ros1/doosan-ros1-main-complete/Records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse value, decoded;
    static unsigned char bytes[2], again[2];
    size_t length = 0, second = 0;
    uint32_t status = [DoosanDoosanRos1MainCompleteRos1Dsr_msgsGetRobotStateResponse encode:&value bytes:bytes capacity:sizeof bytes length:&length];
    if(status)
        return (int)status;
    status = [DoosanDoosanRos1MainCompleteRos1Dsr_msgsGetRobotStateResponse decode:bytes length:length value:&decoded];
    if(status)
        return (int)status;
    status = [DoosanDoosanRos1MainCompleteRos1Dsr_msgsGetRobotStateResponse encode:&decoded bytes:again capacity:sizeof again length:&second];
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
