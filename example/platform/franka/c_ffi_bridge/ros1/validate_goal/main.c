/** @file main.c
 * @brief validate goal using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c_ffi_bridge/ros1/records.h>

int main(int argc, char** argv)
{
    static roswasmc_bounded_1_franka_gripper_GraspGoal value;
    static unsigned char bytes[41];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    (void)argc;
    (void)argv;
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = franka_ros1_Ros1Franka_gripperGraspGoal_decode(bytes, length, &value, sizeof value);
    /* Construction uses the complete decoded original goal; semantic/model admission remains separate. */
    if(!primary)
    {
        primary = franka_ros1_Ros1Franka_gripperGraspGoal_encode(&value, sizeof value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("franka_gripper/GraspGoal bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
