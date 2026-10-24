/**
 * @file main.c
 * @brief Call the complete original SetJointImpedance interface once.
 * @details Select an explicitly granted offline fixture alias. Preserve all
 * seven stiffness values and both response fields. A valid native business
 * failure remains a valid response, independently of transport/cleanup errors.
 * No timeout or uncertain call is replayed. This example grants no authority.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#include <platform/ros1/c/roswasm/ros1.h>

/**
 * @brief Send one complete request and print the actual complete response wire.
 * @param argc Number of arguments, including the executable name.
 * @param argv Executable name and the manually configured service alias.
 * @return Transport/codec error, otherwise cleanup error; business success is data.
 */
int main(int argc, char** argv)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_capability owner;
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest request = {0};
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse response = {0};
    unsigned char wire[261];
    unsigned primary = 0, cleanup = 0;
    size_t index, length = 0;
    if(argc != 2)
    {
        return 22;
    }
    for(index = 0; index < 7; ++index)
    {
        request.joint_stiffness[index] = 0.125 * (double)(index + 1);
    }
    roswasmc_capability_init(&owner, &context);
    primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    if(!primary)
    {
        roswasmc_result result = roswasmc_bounded_1_franka_msgs_SetJointImpedance_call(&owner, &request, &response);
        primary = result.error;
    }
    if(!primary)
    {
        primary =
            roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode(&response, wire, sizeof wire, &length);
    }
    if(owner.handle)
    {
        cleanup = roswasmc_close(&owner);
    }
    if(!primary)
    {
        printf("franka_msgs/SetJointImpedance success=%u bytes=%zu\n", (unsigned)response.success, length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", (unsigned)wire[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u\n", primary, cleanup);
    return primary ? (int)primary : (int)cleanup;
}
