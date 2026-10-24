/** @brief Round-trip every original clearpath_platform_msgs/msg/StopStatus field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <clearpath/c/ros2/jazzy/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus value;
    static roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus recovered;
    static unsigned char encoded[144];
    static unsigned char restored[144];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_encode(&value, encoded, 143, &length))
        return 22;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_encode(&recovered, restored, 143, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
