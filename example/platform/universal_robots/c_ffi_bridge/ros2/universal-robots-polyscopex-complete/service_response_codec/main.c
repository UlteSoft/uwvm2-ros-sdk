/** @file main.c
 * @brief Exercise every field of one original urinterfaces/srv/SetAnalogOutput_Response value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <universal_robots/c_ffi_bridge/ros2/universal-robots-polyscopex-complete/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response value, decoded;
    static unsigned char bytes[1], again[1];
    size_t length = 0, second = 0;
    uint32_t status = universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Response_encode(&value, bytes, sizeof bytes, &length);
    if(status)
        return (int)status;
    status = universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Response_decode(bytes, length, &decoded);
    if(status)
        return (int)status;
    status = universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Response_encode(&decoded, again, sizeof again, &second);
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
