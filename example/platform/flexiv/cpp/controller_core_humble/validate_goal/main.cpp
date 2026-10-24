/** @file main.cpp
 * @brief validate goal using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <flexiv/cpp/ros2/flexiv-controller-core-humble-complete/bounded_records.hpp>

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_sensor_msgs_msg_JointState value;
    static unsigned char bytes[9373];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(bytes, length, &value);
    /* Construction uses the complete decoded original goal; semantic/model admission remains separate. */
    if(!primary)
    {
        primary = roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("sensor_msgs/msg/JointState bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
