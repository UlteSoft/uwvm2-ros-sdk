/** @brief Round-trip every original scout_msgs/msg/ScoutRCState field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <agilex/c/ros2/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_scout_msgs_msg_ScoutRCState value;
    static roswasmc_bounded_2_scout_msgs_msg_ScoutRCState recovered;
    static unsigned char encoded[10];
    static unsigned char restored[10];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_2_scout_msgs_msg_ScoutRCState_encode(&value, encoded, 9, &length))
        return 22;
    if(roswasmc_bounded_2_scout_msgs_msg_ScoutRCState_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_2_scout_msgs_msg_ScoutRCState_encode(&recovered, restored, 9, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_2_scout_msgs_msg_ScoutRCState_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_2_scout_msgs_msg_ScoutRCState_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
