/** @file main.c
 * @brief validate goal using a complete original vendor value.
 * @details All bytes come from the actual input or native ROS event. No result is precomputed.
 * @return Zero on complete success; original errno otherwise. Cleanup is reported separately.
 */
#include <stdio.h>
#include <string.h>
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
#include "guest_contract_tests.h"

int main(int argc, char** argv)
{
    static roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal value;
    static unsigned char bytes[8581];
    size_t length = 0, index;
    unsigned primary = 0, cleanup = 0;
    if(argc == 3 && strcmp(argv[1], "--guest-test") == 0)
    {
        return kinova_guest_contract_test(argv[2]);
    }
    if(argc != 1)
    {
        return 22;
    }
    length = fread(bytes, 1, sizeof bytes, stdin);
    if(ferror(stdin))
    {
        return 5;
    }
    primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(bytes, length, &value);
    /* Construction uses the complete decoded original goal; semantic/model admission remains separate. */
    if(!primary)
    {
        primary = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(&value, bytes, sizeof bytes, &length);
    }
    if(!primary)
    {
        printf("control_msgs/action/FollowJointTrajectory_Goal bytes=%zu\n", length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", bytes[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
