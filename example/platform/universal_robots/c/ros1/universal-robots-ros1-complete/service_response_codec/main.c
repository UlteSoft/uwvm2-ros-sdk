/** @file main.c
 * @brief Exercise every field of one original ur_dashboard_msgs/AddToLogResponse value.
 * @details Constructs local fixture defaults, performs real encoding/decoding,
 * checks all returned bytes and emits the measured result. This performs no
 * native ROS operation and makes no assertion about current robot state.
 */
#include <universal_robots/c/ros1/universal-robots-ros1-complete/bounded_records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse value, decoded;
    static unsigned char bytes[261], again[261];
    size_t length = 0, second = 0;
    uint32_t status = roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_encode(&value, bytes, sizeof bytes, &length);
    if(status)
        return (int)status;
    status = roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_decode(bytes, length, &decoded);
    if(status)
        return (int)status;
    status = roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_encode(&decoded, again, sizeof again, &second);
    if(status || second != length || memcmp(bytes, again, length))
        return 22;
    if(printf("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"wire_hex\":\"") < 0)
        return 5;
    for(size_t i = 0; i < length; ++i)
        if(printf("%02x", bytes[i]) < 0)
            return 5;
    return printf("\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
