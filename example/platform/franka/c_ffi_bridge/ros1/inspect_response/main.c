/** @file main.c
 * @brief inspect response using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c_ffi_bridge/ros1/records.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse value;
    static unsigned char bytes[262];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_decode(bytes, length, &value, sizeof value);
    /* An original result payload is distinct from action terminal-kind and goal-ID envelopes. */
    if(!primary)
    {
        primary = franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_encode(&value, sizeof value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("franka_msgs/SetCartesianImpedanceResponse bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
