/**
 * @file main.c
 * @brief Track two complete original Grasp goals through independent native cancellation.
 * @details Public poll IDs remain opaque. Full original goal bytes join each ID to
 * the independent native Goal ID/UUID ledger. Only actual cancellation can retire
 * a goal: no success or abort terminal is sent. All owners are closed in reverse.
 */
#include <stdio.h>
#include <string.h>
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#include <platform/ros1/c/roswasm/ros1.h>
#include <platform/ros/c/command.h>

typedef roswasmc_bounded_1_franka_gripper_GraspGoal Goal;
typedef roswasmc_bounded_1_franka_gripper_GraspFeedback Feedback;
typedef roswasmc_bounded_1_franka_gripper_GraspResult Result;

/** @brief Print exact canonical bytes; zero-length original feedback is valid. */
static void print_bytes(unsigned char const* bytes, size_t length)
{
    size_t index;
    for (index = 0; index < length; ++index)
    {
        printf("%02x", (unsigned)bytes[index]);
    }
}

/**
 * @brief Receive two live goals, verify denied authority, and finish only on native cancellation.
 * @param argc Four arguments including the executable name.
 * @param argv Executable, advertise alias, respond alias, and cancel-own-only alias.
 * @return Primary errno or the first cleanup errno; denial checks retain13.
 * @details Noetic auto-publishes the original default canceled result on native
 * cancel and removes its slot; guest observes9. Jazzy retains canceling state
 * until the guest sends protocol kind4, preserving its complete original result.
 */
int main(int argc, char** argv)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_capability owners[3], forbidden;
    Goal goals[2] = {{0}, {0}};
    uint64_t ids[2] = {0, 0};
    unsigned active[2] = {1, 1};
    unsigned primary = 0, cleanup = 0, received = 0, attempt, index;
    unsigned char goal_wire[40], feedback_wire[1], result_wire[261];
    unsigned char all_goals[8] = {0}, accepted = 255;
    unsigned premature[2] = {0, 0};
    roswasmc_result denied;
    if (argc != 4)
    {
        return 22;
    }
    for (index = 0; index < 3; ++index)
    {
        roswasmc_capability_init(&owners[index], &context);
    }
    roswasmc_capability_init(&forbidden, &context);
    for (index = 0; index < 3 && !primary; ++index)
    {
        primary = roswasmc_open(&owners[index], argv[index + 1], strlen(argv[index + 1]));
    }
    if (!primary)
    {
        primary = roswasmc_action_advertise(&owners[0], NULL, 0, NULL, 0).error;
    }
    for (attempt = 0; !primary && received != 2 && attempt < 600; ++attempt)
    {
        roswasmc_result event =
            roswasmc_bounded_1_franka_gripper_Grasp_poll(&owners[0], &ids[received], &goals[received]);
        if (!event.error)
        {
            ++received;
        }
        else if (event.error != 11)
        {
            primary = event.error;
        }
        if (!primary && received != 2)
        {
            primary = uwvm_ros_command_pause(UINT64_C(40000000));
        }
    }
    if (!primary && (received != 2 || !ids[0] || ids[0] == ids[1] || goals[0].force == goals[1].force))
    {
        primary = 110;
    }
    if (!primary && goals[0].force > goals[1].force)
    {
        Goal temporary = goals[0];
        uint64_t id = ids[0];
        goals[0] = goals[1];
        goals[1] = temporary;
        ids[0] = ids[1];
        ids[1] = id;
    }
    for (index = 0; !primary && index < 2; ++index)
    {
        Result value = {0};
        size_t length = 0;
        primary =
            roswasmc_bounded_1_franka_gripper_GraspGoal_encode(&goals[index], goal_wire, sizeof goal_wire, &length);
        if (!primary)
        {
            printf("GOAL id=%llu wire=", (unsigned long long)ids[index]);
            print_bytes(goal_wire, length);
            puts("");
            premature[index] =
                roswasmc_bounded_1_franka_gripper_Grasp_respond_result(&owners[1], ids[index], 4, &value).error;
            if (premature[index] != 13)
            {
                primary = 22;
            }
        }
    }
    if (!primary)
    {
        unsigned missing = roswasmc_open(&forbidden, "unauthorized_cancel", sizeof "unauthorized_cancel" - 1);
        denied = roswasmc_action_cancel_any_goal(&owners[2], all_goals, sizeof all_goals, &accepted, sizeof accepted);
        printf("AUTH any_via_own=%u ungranted=%u premature0=%u premature1=%u\n",
               denied.error,
               missing,
               premature[0],
               premature[1]);
        if (missing != 13 || denied.error != 13 || forbidden.handle)
        {
            primary = 22;
        }
        fflush(stdout);
    }
    for (attempt = 0; !primary && (active[0] || active[1]) && attempt < 600; ++attempt)
    {
        for (index = 0; !primary && index < 2; ++index)
        {
            Feedback feedback = {0};
            Result result = {0};
            roswasmc_result response;
            size_t length = 0;
            static unsigned char const message[] = "cancel A\xe4\xb8\xad";
            if (!active[index])
            {
                continue;
            }
#if 0
            feedback.current_width = index ? 0.046875 : 0.03125;
            feedback.current_force = goals[index].force;
            feedback.moving = 1;
#endif
            response = roswasmc_bounded_1_franka_gripper_Grasp_respond_feedback(&owners[1], ids[index], &feedback);
#if !0
            if (response.error == 9)
            {
                active[index] = 0;
                printf("TERMINAL id=%llu origin=native-retirement error=9\n", (unsigned long long)ids[index]);
                fflush(stdout);
                continue;
            }
#endif
            primary = response.error;
            if (!primary)
            {
                primary = roswasmc_bounded_1_franka_gripper_GraspFeedback_encode(
                    &feedback, feedback_wire, sizeof feedback_wire, &length);
            }
            if (!primary)
            {
                printf("FEEDBACK id=%llu round=%u wire=", (unsigned long long)ids[index], attempt);
                print_bytes(feedback_wire, length);
                puts("");
            }
            result.success = 0;
            result.error.size = sizeof message - 1;
            memcpy(result.error.data, message, sizeof message - 1);
            if (!primary)
            {
                response = roswasmc_bounded_1_franka_gripper_Grasp_respond_result(&owners[1], ids[index], 4, &result);
                if (!response.error)
                {
                    primary = roswasmc_bounded_1_franka_gripper_GraspResult_encode(
                        &result, result_wire, sizeof result_wire, &length);
                    if (!primary)
                    {
                        active[index] = 0;
                        printf("TERMINAL id=%llu origin=guest-kind4 wire=", (unsigned long long)ids[index]);
                        print_bytes(result_wire, length);
                        puts("");
                    }
                }
                else if (response.error != 13
#if !0
                         && response.error != 9
#endif
                )
                {
                    primary = response.error;
                }
            }
        }
        fflush(stdout);
        if (!primary && (active[0] || active[1]))
        {
            primary = uwvm_ros_command_pause(UINT64_C(40000000));
        }
    }
    if (!primary && (active[0] || active[1]))
    {
        primary = 110;
    }
    if (!primary)
    {
        primary = uwvm_ros_command_pause(UINT64_C(200000000));
    }
    if (forbidden.handle)
    {
        unsigned error = roswasmc_close(&forbidden);
        if (!cleanup)
        {
            cleanup = error;
        }
    }
    for (index = 3; index != 0; --index)
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
    fprintf(stderr, "primary=%u cleanup=%u goals=%u\n", primary, cleanup, received);
    return primary ? (int)primary : (int)cleanup;
}
