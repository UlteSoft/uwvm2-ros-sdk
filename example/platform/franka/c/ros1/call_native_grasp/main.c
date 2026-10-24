/**
 * @file main.c
 * @brief Track a complete original Grasp goal through native feedback and result.
 * @details Each Action role has its own manually granted alias. Send once;
 * only idle 11 permits another bounded feedback/result poll. Native correlated
 * goal IDs remain distinct from capabilities. Consume a terminal result before
 * closing the four role owners in reverse order. Use an offline fixture only.
 */
#include <stdio.h>
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#include <platform/ros1/c/roswasm/ros1.h>
#include <platform/ros/c/command.h>

/**
 * @brief Observe one event stream with a finite deadline and explicit clock grant.
 * @param bundle Initialized unique Action owner and caller-owned goal table.
 * @param id Exact live native-correlated goal, never a capability handle.
 * @param kind Terminal kind destination, used only for result polling.
 * @param result Complete original result destination.
 * @param terminal Zero selects feedback; nonzero selects the terminal result.
 * @return Actual error, including timeout110; no external operation is replayed.
 */
static unsigned observe(roswasmc_action_bundle* bundle,
                        uint64_t id,
                        uint8_t* kind,
                        roswasmc_bounded_1_franka_gripper_GraspResult* result,
                        int terminal)
{
    unsigned attempt;
    for(attempt = 0; attempt < 250; ++attempt)
    {
        roswasmc_bounded_1_franka_gripper_GraspFeedback feedback = {0};
        roswasmc_result event = terminal ? roswasmc_bounded_1_franka_gripper_Grasp_result(bundle, id, kind, result)
                                         : roswasmc_bounded_1_franka_gripper_Grasp_feedback(bundle, id, &feedback);
        if(event.error != 11)
        {
            return event.error;
        }
        if(attempt == 249)
        {
            return 110;
        }
        {
            unsigned error = uwvm_ros_command_pause(UINT64_C(20000000));
            if(error)
            {
                return error;
            }
        }
    }
    return 110;
}

/**
 * @brief Send one complete goal and preserve its terminal data through cleanup.
 * @details Initialize four independently granted action roles, observe the empty
 * original feedback, consume the terminal result and close every acquired role.
 * The cancel role is owned for the complete bundle; this example does not cancel.
 * @return Primary transport or codec error, otherwise the first cleanup error.
 */
int main(void)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_action_bundle bundle = {0};
    roswasmc_action_aliases aliases = {
        {"send",     4},
        {"cancel",   6},
        {"feedback", 8},
        {"result",   6},
        {NULL,       0}
    };
    uint64_t goals[1] = {0}, id = 0;
    uint8_t kind = 0;
    uint32_t statuses[4] = {0};
    roswasmc_bounded_1_franka_gripper_GraspGoal goal = {0};
    roswasmc_bounded_1_franka_gripper_GraspResult value = {0};
    roswasmc_cleanup_report cleanup;
    unsigned char wire[261];
    size_t index, length = 0;
    unsigned primary = roswasmc_action_bundle_init(&context, &bundle, &aliases, goals, 1);
    goal.width = 0.03125;
    goal.speed = 0.0625;
    goal.force = 3.75;
    goal.epsilon.inner = 0.001953125;
    goal.epsilon.outer = 0.00390625;
    if(!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_Grasp_send(&bundle, &goal, &id).error;
    }
    if(!primary)
    {
        primary = observe(&bundle, id, &kind, &value, 0);
    }
    if(!primary)
    {
        primary = observe(&bundle, id, &kind, &value, 1);
    }
    if(!primary && bundle.count != 0)
    {
        primary = 22;
    }
    if(!primary)
    {
        primary = roswasmc_bounded_1_franka_gripper_GraspResult_encode(&value, wire, sizeof wire, &length);
    }
    cleanup = bundle.active ? roswasmc_action_bundle_close_checked(&bundle, primary, statuses, 4) : bundle.rollback;
    if(!primary)
    {
        printf("franka_gripper/Grasp goal=%llu kind=%u success=%u bytes=%zu\n",
               (unsigned long long)id,
               (unsigned)kind,
               (unsigned)value.success,
               length);
        for(index = 0; index < length; ++index)
        {
            printf("%02x", (unsigned)wire[index]);
        }
        puts("");
    }
    fprintf(stderr, "primary=%u cleanup=%u attempts=%zu\n", primary, cleanup.cleanup_error, cleanup.attempted);
    return primary ? (int)primary : (int)cleanup.cleanup_error;
}
