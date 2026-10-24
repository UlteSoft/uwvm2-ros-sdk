/** @brief Round-trip every original uwvm_spot_bridge/srv/State_Response field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <boston_dynamics/c/ros2/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response value;
    static roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response recovered;
    static unsigned char encoded[21434];
    static unsigned char restored[21434];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_encode(&value, encoded, 21433, &length))
        return 22;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_encode(&recovered, restored, 21433, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
