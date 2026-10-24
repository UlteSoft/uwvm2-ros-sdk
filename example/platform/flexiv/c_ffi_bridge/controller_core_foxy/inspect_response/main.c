/** @file main.c
 * @brief inspect response using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <flexiv/c_ffi_bridge/controller_core_foxy/records.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory value;
    static unsigned char bytes[16981];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = flexiv_controller_core_foxy_Ros2Trajectory_msgsMsgJointTrajectory_decode(bytes, length, &value, sizeof value);
    /* An original result payload is distinct from action terminal-kind and goal-ID envelopes. */
    if(!primary)
    {
        primary = flexiv_controller_core_foxy_Ros2Trajectory_msgsMsgJointTrajectory_encode(&value, sizeof value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("trajectory_msgs/msg/JointTrajectory bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
