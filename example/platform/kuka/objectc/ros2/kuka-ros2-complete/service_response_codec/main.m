/** @file main.c
 * @brief Exercise every field of one original lifecycle_msgs/srv/ChangeState_Response value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <kuka/objectc/ros2/kuka-ros2-complete/Records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response value, decoded;
    static unsigned char bytes[1], again[1];
    size_t length = 0, second = 0;
    uint32_t status = [KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Response encode:&value bytes:bytes capacity:sizeof bytes length:&length];
    if(status)
        return (int)status;
    status = [KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Response decode:bytes length:length value:&decoded];
    if(status)
        return (int)status;
    status = [KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Response encode:&decoded bytes:again capacity:sizeof again length:&second];
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
