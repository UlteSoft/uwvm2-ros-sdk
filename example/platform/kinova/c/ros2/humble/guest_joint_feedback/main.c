/* SPDX-License-Identifier: Apache-2.0 */
#define _POSIX_C_SOURCE 200809L
#include <platform/kinova/transplate/ros2/v0_1_0/joint_feedback.h>
#include <errno.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
typedef struct guest_observation
{
    kinova_joint_state latest;
    uint64_t state_count, result_after_ns;
    uint8_t kind;
    int32_t native_error;
    uint32_t callback_error;
} guest_observation;
static guest_observation seen;
static kinova_joint_client client;
static kinova_joint_goal goal;
static uint64_t real_ns(void)
{
    struct timespec t;
    if(clock_gettime(CLOCK_REALTIME, &t) || t.tv_sec < 0 || t.tv_nsec < 0 || t.tv_nsec >= 1000000000) return 0;
    return (uint64_t)t.tv_sec * UINT64_C(1000000000) + (uint64_t)t.tv_nsec;
}
static uint32_t pause_guest(void)
{
    struct timespec t = {0, 5000000};
    return nanosleep(&t, NULL) ? (uint32_t)(errno ? errno : 5) : 0;
}
static void state_callback(void* user, kinova_joint_state const* value)
{
    guest_observation* o = user; unsigned i, j;
    if(value->name.size != 7 || value->position.size != 7 || value->header.stamp.sec < 0 ||
       value->header.stamp.nanosec >= 1000000000 ||
       (value->velocity.size && value->velocity.size != 7) ||
       (value->effort.size && value->effort.size != 7))
    { o->callback_error = 22; return; }
    for(i = 0; i < 7; ++i)
    {
        size_t n = value->name.data[i].size;
        if(!n || n > sizeof value->name.data[i].data || !isfinite(value->position.data[i]) ||
           (value->velocity.size && !isfinite(value->velocity.data[i])) ||
           (value->effort.size && !isfinite(value->effort.data[i])))
        { o->callback_error = 22; return; }
        for(j = 0; j < i; ++j)
            if(value->name.data[j].size == n && !memcmp(value->name.data[j].data, value->name.data[i].data, n))
            { o->callback_error = 22; return; }
        if(o->state_count && (o->latest.name.data[i].size != n ||
            memcmp(o->latest.name.data[i].data, value->name.data[i].data, n)))
        { o->callback_error = 22; return; }
    }
    /* A rejected callback never replaces the last completely validated state. */
    o->latest = *value; ++o->state_count;
    printf("{\"event\":\"guest_joint_state\",\"sequence\":%llu,\"source_sec\":%d,\"source_nanosec\":%u}\n",
        (unsigned long long)o->state_count, value->header.stamp.sec, value->header.stamp.nanosec);
}
static void feedback_callback(void* user, uint64_t id, kinova_joint_feedback const* value)
{
    guest_observation* o = user; unsigned i;
    if(!id || value->joint_names.size != 7 || value->actual.positions.size != 7 ||
       value->header.stamp.sec < 0 || value->header.stamp.nanosec >= 1000000000)
    { o->callback_error = 22; return; }
    for(i = 0; i < 7; ++i)
    {
        size_t n = goal.trajectory.joint_names.data[i].size;
        if(value->joint_names.data[i].size != n ||
           memcmp(value->joint_names.data[i].data, goal.trajectory.joint_names.data[i].data, n) ||
           !isfinite(value->actual.positions.data[i]))
        { o->callback_error = 22; return; }
    }
    printf("{\"event\":\"guest_action_feedback\",\"local_goal_id\":%llu}\n", (unsigned long long)id);
}
static void result_callback(void* user, uint64_t id, uint8_t kind, kinova_joint_result const* value)
{
    guest_observation* o = user;
    o->kind = kind; o->native_error = value->error_code; o->result_after_ns = real_ns();
    if(!id || !o->result_after_ns) o->callback_error = 13;
    printf("{\"event\":\"guest_action_result\",\"local_goal_id\":%llu,\"kind\":%u,\"native_error\":%d}\n",
        (unsigned long long)id, kind, value->error_code);
}
static uint32_t run(char const* mode, char const* const aliases[5], long step)
{
    uint32_t e, cleanup = 0; unsigned i, rounds; int cancel_sent = 0;
    client.userdata = &seen; client.on_state = state_callback;
    client.on_feedback = feedback_callback; client.on_result = result_callback;
    if((e = kinova_joint_open(&client, aliases, &cleanup)) != 0) return e;
    /* Unexpected authority in a denial case is a failure before any subscription or goal. */
    if(strcmp(mode, "denied") == 0) return 22;
    if((e = kinova_joint_subscribe(&client)) != 0) return e;
    for(rounds = 0; rounds < 1000 && !seen.state_count; ++rounds)
    {
        e = kinova_joint_poll_state(&client);
        if(e && e != 11) return e;
        if(seen.callback_error) return seen.callback_error;
        if((e = pause_guest()) != 0) return e;
    }
    if(!seen.state_count) return 110;
    if(seen.callback_error) return seen.callback_error;
    goal.trajectory.joint_names.size = 7; goal.trajectory.points.size = 1;
    goal.trajectory.points.data[0].positions.size = 7;
    goal.trajectory.points.data[0].time_from_start.sec = 2;
    for(i = 0; i < 7; ++i)
    {
        goal.trajectory.joint_names.data[i].size = seen.latest.name.data[i].size;
        memcpy(goal.trajectory.joint_names.data[i].data, seen.latest.name.data[i].data, seen.latest.name.data[i].size);
        goal.trajectory.points.data[0].positions.data[i] = seen.latest.position.data[i];
    }
    goal.trajectory.points.data[0].positions.data[0] += (double)step / 1000000.0;
    if((e = kinova_joint_submit(&client, &goal)) != 0) return e;
    printf("{\"event\":\"guest_goal_submitted\",\"local_goal_id\":%llu,\"step_microrad\":%ld}\n",
        (unsigned long long)client.goal_id, step);
    for(rounds = 0; rounds < 2000; ++rounds)
    {
        if(seen.callback_error) return seen.callback_error;
        e = kinova_joint_poll_state(&client); if(e && e != 11) return e;
        if(seen.callback_error) return seen.callback_error;
        if(client.goal_id)
        {
            e = kinova_joint_poll_feedback(&client); if(e && e != 11) return e;
            if(seen.callback_error) return seen.callback_error;
            if(!cancel_sent && client.feedback_callbacks && strcmp(mode, "cancel") == 0)
            { if((e = kinova_joint_cancel(&client)) != 0) return e; cancel_sent = 1; }
            e = kinova_joint_poll_result(&client); if(e && e != 11) return e;
            if(seen.callback_error) return seen.callback_error;
        }
        if(seen.result_after_ns)
        {
            uint64_t source_ns = (uint64_t)seen.latest.header.stamp.sec * UINT64_C(1000000000) + seen.latest.header.stamp.nanosec;
            if(source_ns > seen.result_after_ns && client.state_callbacks > 1 && client.feedback_callbacks)
            {
                if(strcmp(mode, "cancel") == 0) return cancel_sent && seen.kind == 4 ? 0 : 22;
                if(seen.kind != 2 || seen.native_error != 0) return 22;
                if(seen.latest.position.size != 7) return 22;
                for(i = 0; i < 7; ++i)
                    if(fabs(seen.latest.position.data[i] - goal.trajectory.points.data[0].positions.data[i]) > 0.0001) return 22;
                puts("{\"event\":\"guest_fresh_reverse_callback_verified\"}");
                return 0;
            }
        }
        if((e = pause_guest()) != 0) return e;
    }
    return 110;
}
int main(int argc, char** argv)
{
    char const* aliases[5]; char* end; long step; uint32_t primary, cleanup; unsigned i;
    if(argc != 8 || (strcmp(argv[1], "normal") && strcmp(argv[1], "reverse-callback") &&
                    strcmp(argv[1], "denied") && strcmp(argv[1], "cancel"))) return 95;
    errno = 0; step = strtol(argv[7], &end, 10);
    if(errno || *end || !step || step < -10000 || step > 10000) return 22;
    for(i = 0; i < 5; ++i) aliases[i] = argv[i+2];
    primary = run(argv[1], aliases, step); cleanup = kinova_joint_close(&client);
    fprintf(stderr, "guest_primary=%u guest_cleanup=%u state_callbacks=%llu feedback_callbacks=%llu result_callbacks=%llu\n",
        primary, cleanup, (unsigned long long)client.state_callbacks,
        (unsigned long long)client.feedback_callbacks, (unsigned long long)client.result_callbacks);
    return (int)(primary ? primary : cleanup);
}
