/** @brief Round-trip every original uwvm_spot_bridge/srv/Lease_Response field and reject malformed extents.
 * @details All buffers are independent caller storage. Refused decodes do not
 * publish a partial value. No native handle, ROS operation or grant is created.
 * @return Zero after actual codec checks and checked stdout, otherwise an error.
 */
#include <boston_dynamics/c/ros2/records.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    static roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response value;
    static roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response recovered;
    static unsigned char encoded[23];
    static unsigned char restored[23];
    size_t length = 0, second_length = 0;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_encode(&value, encoded, 22, &length))
        return 22;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_decode(encoded, length, &recovered))
        return 22;
    if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_encode(&recovered, restored, 22, &second_length))
        return 22;
    if(length != second_length || memcmp(encoded, restored, length))
        return 22;
    encoded[length] = 0;
    if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_decode(encoded, length + 1, &recovered))
        return 22;
    if(length && !roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_decode(encoded, length - 1, &recovered))
        return 22;
    if(printf("%zu\n", length) < 0 || fflush(stdout) == EOF)
        return 5;
    return 0;
}
