/** @file main.c
 * @brief Exercise every field of one original kuka_driver_interfaces/msg/KssStatus value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <kuka/c_ffi_bridge/ros2/kuka-ros2-complete/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus value, decoded;
    static unsigned char bytes[9], again[9];
    size_t length = 0, second = 0;
    uint32_t status = kuka_Ros2Kuka_driver_interfacesMsgKssStatus_encode(&value, bytes, sizeof bytes, &length);
    if(status)
        return (int)status;
    status = kuka_Ros2Kuka_driver_interfacesMsgKssStatus_decode(bytes, length, &decoded);
    if(status)
        return (int)status;
    status = kuka_Ros2Kuka_driver_interfacesMsgKssStatus_encode(&decoded, again, sizeof again, &second);
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
