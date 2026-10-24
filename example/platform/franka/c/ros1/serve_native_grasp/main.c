/**
 * @file main.c
 * @brief Serve one complete original Grasp goal through native feedback and abort.
 * @details Activate only the explicit advertise alias and use the independently
 * granted response alias. This offline endpoint returns the original failure
 * result with UTF-8 text; it never drives hardware. A terminal kind3 is an
 * intentional abort, separate from transport success. Use the explicitly
 * granted clock for one bounded 200 ms transport grace before retirement.
 * Ordinary servers retain their owners for their application session.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#include <platform/ros1/c/roswasm/ros1.h>
#include <platform/ros/c/command.h>

/**
 * @brief Print the complete original canonical value, without native envelopes.
 * @param label Event tag distinguishing the goal and result.
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
 * @brief Poll one native goal, publish feedback and abort once, and retire owners.
 * @param argc Three arguments, including the executable name.
 * @param argv Program name followed by advertise and response aliases.
 * @return Primary operation error, otherwise the first cleanup error.
 */
int main(int argc, char** argv)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_capability owners[2];
    roswasmc_bounded_1_franka_gripper_GraspGoal goal = {0};
    roswasmc_bounded_1_franka_gripper_GraspFeedback feedback = {0};
    roswasmc_bounded_1_franka_gripper_GraspResult result = {0};
    unsigned char goal_wire[40], result_wire[261];
    static unsigned char const message[] = "offline A\xe4\xb8\xad";
    uint64_t id = 0;
    size_t goal_length = 0, result_length = 0;
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
        primary = roswasmc_action_advertise(&owners[0], NULL, 0, NULL, 0).error;
    }
    for (attempt = 0; !primary && attempt < 250; ++attempt)
    {
        roswasmc_result event = roswasmc_bounded_1_franka_gripper_Grasp_poll(&owners[0], &id, &goal);
        if (event.error != 11)
        {
            primary = event.error;
            break;
        }
        primary = attempt == 249 ? 110 : uwvm_ros_command_pause(UINT64_C(20000000));
    }
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_GraspGoal_encode(&goal, goal_wire, sizeof goal_wire, &goal_length);
    }
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_Grasp_respond_feedback(&owners[1], id, &feedback).error;
    }
    result.success = 0;
    result.error.size = sizeof message - 1;
    memcpy(result.error.data, message, sizeof message - 1);
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_Grasp_respond_result(&owners[1], id, 3, &result).error;
    }
    if (!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_GraspResult_encode(
            &result, result_wire, sizeof result_wire, &result_length);
    }
    if (!primary)
    {
        print_wire("GOAL", goal_wire, goal_length);
        print_wire("RESULT", result_wire, result_length);
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
    fprintf(stderr, "primary=%u cleanup=%u goal=%llu\n", primary, cleanup, (unsigned long long)id);
    return primary ? (int)primary : (int)cleanup;
}
