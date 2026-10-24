/** @file main.c
 * @brief inspect response using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <flexiv/c_ffi_bridge/ros2/foxy/records.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_flexiv_msgs_msg_Mode value;
    static unsigned char bytes[2];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_decode(bytes, length, &value, sizeof value);
    /* An original result payload is distinct from action terminal-kind and goal-ID envelopes. */
    if(!primary)
    {
        primary = flexiv_ros2_foxy_Ros2Flexiv_msgsMsgMode_encode(&value, sizeof value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("flexiv_msgs/msg/Mode bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
