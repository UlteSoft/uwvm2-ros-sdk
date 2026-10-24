/** @file main.m
 * @brief observe using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
#include <platform/ros2/c/roswasm/ros2.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_sensor_msgs_msg_JointState value;
    static unsigned char bytes[1405];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    /* @encode is evaluated by the genuine Objective-C frontend. */
    if(strcmp(@encode(double), "d") != 0)
    {
        return 22;
    }
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability capability;
    roswasmc_result result;
    if(argc != 2)
    {
        fprintf(stderr, "supply one manually granted topic alias\n");
        return 22;
    }
    roswasmc_capability_init(&capability, &context);
    primary = roswasmc_open(&capability, argv[1], strlen(argv[1]));
    if(!primary)
    {
        primary = roswasmc_subscribe(&capability);
    }
    if(!primary)
    {
        result = roswasmc_poll(&capability, bytes, sizeof bytes);
        primary = result.error;
        if(!primary && (!result.has_length || result.length > sizeof bytes))
        {
            primary = 22;
        }
        if(!primary)
        {
            length = (size_t)result.length;
        }
    }
    if(!primary)
    {
        primary = roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(bytes, length, &value);
    }
    if(capability.handle)
    {
        cleanup = roswasmc_close(&capability);
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
