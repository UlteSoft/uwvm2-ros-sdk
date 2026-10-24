/** @file main.cpp
 * @brief inspect response using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <franka/cpp/ros1/franka-ros1-complete/bounded_records.hpp>

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
    primary = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode(bytes, length, &value);
    /* An original result payload is distinct from action terminal-kind and goal-ID envelopes. */
    if(!primary)
    {
        primary = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode(&value, bytes, sizeof bytes, &length);
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
