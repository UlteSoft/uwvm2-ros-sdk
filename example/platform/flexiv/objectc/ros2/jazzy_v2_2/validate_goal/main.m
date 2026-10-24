/** @file main.m
 * @brief validate goal using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal value;
    static unsigned char bytes[9];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    /* @encode is evaluated by the genuine Objective-C frontend. */
    if(strcmp(@encode(double), "d") != 0)
    {
        return 22;
    }
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(bytes, length, &value);
    /* Construction uses the complete decoded original goal; semantic/model admission remains separate. */
    if(!primary)
    {
        primary = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode(&value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("flexiv_msgs/action/Grasp_Goal bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
