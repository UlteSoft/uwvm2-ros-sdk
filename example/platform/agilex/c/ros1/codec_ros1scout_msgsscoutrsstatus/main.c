/** @brief Round-trip every original scout_msgs/ScoutRsStatus field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <agilex/c/ros1/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_1_scout_msgs_ScoutRsStatus value;
    static roswasmc_bounded_1_scout_msgs_ScoutRsStatus recovered;
    static unsigned char encoded[154];
    static unsigned char restored[154];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_1_scout_msgs_ScoutRsStatus_encode(&value, encoded, 153, &length))
        return 22;
    if(roswasmc_bounded_1_scout_msgs_ScoutRsStatus_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_1_scout_msgs_ScoutRsStatus_encode(&recovered, restored, 153, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_1_scout_msgs_ScoutRsStatus_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_1_scout_msgs_ScoutRsStatus_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
