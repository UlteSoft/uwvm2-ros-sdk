/**
 * @file main.c
 * @brief Serve one complete original SetJointImpedance request on an offline fixture.
 * @details The advertise and respond aliases are independent owners. Poll only
 * after activation, preserve the native-correlated ticket, and respond once.
 * After responding, use the explicitly granted clock for one bounded 200 ms
 * transport grace before endpoint retirement. This is a finite offline fixture;
 * ordinary servers retain their owners for their application session.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#include <platform/ros1/c/roswasm/ros1.h>
#include <platform/ros/c/command.h>

/**
 * @brief Print a complete canonical value without serializing C padding.
 * @param label Event tag distinguishing the request and response.
 * @param wire Borrowed successful canonical encoding.
 * @param length Exact count returned by the bounded encoder.
 */
static void print_wire(char const* label, unsigned char const* wire, size_t length)
{
    size_t index;
    printf("%s ", label);
    for (index = 0; index < length; ++index)
    {
        printf("%02x", (unsigned)wire[index]);
    }
    puts("");
}

/**
 * @brief Serve once, allow bounded transport progress, then close each owner once.
 * @param argc Three arguments, including the executable name.
 * @param argv Program name followed by advertise and response aliases.
 * @return Primary transport/codec error, otherwise the first cleanup error.
 */
int main(int argc, char** argv)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_capability owners[2];
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest request = {0};
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse response = {0};
    unsigned char request_wire[56], response_wire[261];
    static unsigned char const message[] = "offline A\xe4\xb8\xad";
    uint64_t ticket = 0;
    size_t request_length = 0, response_length = 0;
    unsigned primary = 0, cleanup = 0, attempt, index;
    if (argc != 3)
    {
        return 22;
    }
    for (index = 0; index < 2; ++index)
    {
        roswasmc_capability_init(&owners[index], &context);
    }
    for (index = 0; index < 2 && !primary; ++index)
    {
        primary = roswasmc_open(&owners[index], argv[index + 1], strlen(argv[index + 1]));
    }
    if (!primary)
    {
        primary = roswasmc_service_advertise(&owners[0]);
    }
    for (attempt = 0; !primary && attempt < 250; ++attempt)
    {
        roswasmc_result event = roswasmc_bounded_1_franka_msgs_SetJointImpedance_poll(&owners[0], &ticket, &request);
        if (event.error != 11)
        {
            primary = event.error;
            break;
        }
        primary = attempt == 249 ? 110 : uwvm_ros_command_pause(UINT64_C(20000000));
    }
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode(
            &request, request_wire, sizeof request_wire, &request_length);
    }
    response.success = 0;
    response.error.size = sizeof message - 1;
    memcpy(response.error.data, message, sizeof message - 1);
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_msgs_SetJointImpedance_respond(&owners[1], ticket, &response).error;
    }
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode(
            &response, response_wire, sizeof response_wire, &response_length);
    }
    if (!primary)
    {
        print_wire("REQUEST", request_wire, request_length);
        print_wire("RESPONSE", response_wire, response_length);
        fflush(stdout);
        primary = uwvm_ros_command_pause(UINT64_C(200000000));
    }
    for (index = 2; index != 0; --index)
    {
        if (owners[index - 1].handle)
        {
            unsigned error = roswasmc_close(&owners[index - 1]);
            if (!cleanup)
            {
                cleanup = error;
            }
        }
    }
    fprintf(stderr, "primary=%u cleanup=%u ticket=%llu\n", primary, cleanup, (unsigned long long)ticket);
    return primary ? (int)primary : (int)cleanup;
}
