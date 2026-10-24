/** @brief Round-trip every original clearpath_platform_msgs/msg/RGB field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <clearpath/c/ros2/main/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB value;
    static roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB recovered;
    static unsigned char encoded[4];
    static unsigned char restored[4];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_encode(&value, encoded, 3, &length))
        return 22;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_encode(&recovered, restored, 3, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
