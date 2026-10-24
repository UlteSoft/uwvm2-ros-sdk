/**
 * @file patrol_client.c
 * @brief Preserve the original robotis explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Adapted from ROBOTIS TurtleBot3 Patrol Client (2018 ROBOTIS CO., LTD.;
 * Jeonggeun Lim, Ryan Shim, Gilbert), pinned original driver_humble entry.
 * One complete original goal, feedback and result over the controlled ROS ABI.
 * Native endpoint/type, permissions, physical limits and deadline are Host policy.
 */
#include <errno.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <platform/ros2/c/roswasm/ros2.h>
#include "bounded_interfaces.h"

#if !defined(UWVM_TURTLEBOT3_PROFILE) || UWVM_TURTLEBOT3_PROFILE < 2 || UWVM_TURTLEBOT3_PROFILE > 4
# error "Patrol needs the exact Humble=2, Jazzy=3 or main=4 original ROS2 family"
#endif

static int finite_number(char const* text, double* output, int integer)
{
    char* end;
    char const* p = text;
    double value;
    if(!p || !*p || strlen(p) > 255)
        return 0;
    if(integer)
    {
        if(*p == '+' || *p == '-')
            ++p;
        if(!*p)
            return 0;
        for(; *p; ++p)
            if(*p < '0' || *p > '9')
                return 0;
    }
    /* ASCII command arguments are explicit; no locale or native UI is inferred. */
    if(*text == ' ' || *text == '\t' || *text == '\n' || *text == '\r')
        return 0;
    errno = 0;
    value = strtod(text, &end);
    if(errno || end == text || *end || !isfinite(value))
        return 0;
    if(integer && value == 0)
        value = 0; /* Python float(int("-0")) is positive zero. */
    *output = value;
    return 1;
}

static int make_goal(char const* mode, char const* distance, char const* count, roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* goal)
{
    if(!mode || !mode[0] || mode[1] || (mode[0] != 's' && mode[0] != 't'))
        return 0;
    goal->goal.x = mode[0] == 's' ? 1.0 : 2.0;
    return finite_number(distance, &goal->goal.y, 0) && finite_number(count, &goal->goal.z, 1);
}

static unsigned poll_limit(char const* text)
{
    unsigned value = 0;
    char const* p = text;
    if(!p || !*p || strlen(p) > 4)
        return 0;
    for(; *p; ++p)
    {
        if(*p < '0' || *p > '9')
            return 0;
        value = value * 10 + (unsigned)(*p - '0');
    }
    return value && value <= 4096 ? value : 0;
}

static int write_value(char const* name, unsigned char const* text, size_t length)
{
    return fprintf(stdout, "%s[%zu]: ", name, length) < 0 || fwrite(text, 1, length, stdout) != length || fputc('\n', stdout) == EOF;
}

int main(int argc, char** argv)
{
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal goal = {0};
    roswasmc_context context = {0};
    roswasmc_action_bundle bundle = {0};
    roswasmc_action_aliases aliases = {0};
    uint64_t goals[1] = {0}, id = 0;
    uint32_t primary = 0, statuses[5] = {0};
    unsigned limit, i;
    int terminal = 0;
    roswasmc_cleanup_report cleanup = roswasmc_cleanup_init(0);
    if(argc == 5 && !strcmp(argv[1], "encode"))
    {
        unsigned char bytes[24];
        size_t used = 0;
        if(!make_goal(argv[2], argv[3], argv[4], &goal))
            return 22;
        if(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_encode(&goal, bytes, sizeof bytes, &used))
            return 22;
        return fwrite(bytes, 1, used, stdout) == used ? 0 : 5;
    }
    if(argc != 9)
        return 22;
    if(!strcmp(argv[5], "x"))
        return 0; /* No open, send, cleanup or native effect. */
    if(!make_goal(argv[5], argv[6], argv[7], &goal) || (limit = poll_limit(argv[8])) == 0)
        return 22;
    aliases.send.data = argv[1];
    aliases.send.size = strlen(argv[1]);
    aliases.cancel_own.data = argv[2];
    aliases.cancel_own.size = strlen(argv[2]);
    aliases.feedback.data = argv[3];
    aliases.feedback.size = strlen(argv[3]);
    aliases.result.data = argv[4];
    aliases.result.size = strlen(argv[4]);
    context.backend = roswasmc_ros2_backend();
    primary = roswasmc_action_bundle_init(&context, &bundle, &aliases, goals, 1);
    if(primary)
    {
        cleanup = bundle.rollback;
        memcpy(statuses, bundle.rollback_status, sizeof statuses);
    }
    else
    {
        roswasmc_result sent = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send(&bundle, &goal, &id);
        primary = sent.error;
        if(!primary && fprintf(stdout, "accepted goal=%llu\n", (unsigned long long)id) < 0)
            primary = 5;
        for(i = 0; !primary && !terminal && i < limit; ++i)
        {
            roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback feedback = {0};
            roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result result = {0};
            uint8_t kind = 0;
            roswasmc_result received;
            received = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_feedback(&bundle, id, &feedback);
            if(!received.error)
            {
                if(write_value("feedback", feedback.state.data, feedback.state.size))
                    primary = 5;
            }
            else if(received.error != 11)
                primary = received.error;
            if(primary)
                break;
            received = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_result(&bundle, id, &kind, &result);
            if(!received.error)
            {
                terminal = 1;
                if(fprintf(stdout, "terminal kind=%u goal=%llu\n", (unsigned)kind, (unsigned long long)id) < 0 ||
                   write_value("result", result.result.data, result.result.size))
                    primary = 5;
            }
            else if(received.error != 11)
                primary = received.error;
        }
        if(!primary && !terminal)
            primary = 110;
        if(!terminal && id)
            fprintf(stderr, "goal=%llu outcome unresolved; no replay or automatic cancel\n", (unsigned long long)id);
        cleanup = roswasmc_action_bundle_close_checked(&bundle, primary, statuses, 5);
    }
    fprintf(stderr,
            "primary=%u cleanup=%u attempted=%zu failed=%zu roles=%u,%u,%u,%u,%u\n",
            (unsigned)primary,
            (unsigned)cleanup.cleanup_error,
            (size_t)cleanup.attempted,
            (size_t)cleanup.failed,
            (unsigned)statuses[0],
            (unsigned)statuses[1],
            (unsigned)statuses[2],
            (unsigned)statuses[3],
            (unsigned)statuses[4]);
    if(!primary)
        primary = cleanup.cleanup_error;
    return primary ? (int)(primary < 126 ? primary : 125) : 0;
}
