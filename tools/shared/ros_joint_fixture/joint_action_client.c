/* SPDX-License-Identifier: Apache-2.0
 * Official software-controller example. Planning, message encoding, feedback
 * interpretation and all business assertions execute inside this Wasm program. */
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/command.h>
#include "bounded_interfaces.h"
#include <wasi/api.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <float.h>
#include <errno.h>
#if defined(__FAST_MATH__)
#error "ROS IEEE values require normal floating semantics"
#endif

typedef roswasmc_bounded_2_sensor_msgs_msg_JointState JointState;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal Goal;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback Feedback;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result Result;

static unsigned assertions;
static unsigned unknown_effort;
static char const *scenario;
/* Capacity comes from the explicitly selected message schema, not a fixed robot. */
enum { JOINT_CAPACITY = sizeof(((Goal *)0)->trajectory.joint_names.data) / sizeof(((Goal *)0)->trajectory.joint_names.data[0]) };
static char const *names[JOINT_CAPACITY];
static unsigned joint_count;
static void require(int ok, unsigned code) {
    ++assertions;
    if (!ok) {
        printf("{\"format\":\"uwvm-joint-guest-v1\",\"case\":\"%s\",\"status\":\"FAIL\",\"assertions\":%u,\"code\":%u}\n",
               scenario, assertions, code);
        fflush(stdout); uwvm_ros_command_exit(1);
    }
}
static uint64_t monotonic(void) {
    __wasi_timestamp_t t = 0;
    require(__wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 0, &t) == 0, 10);
    return t;
}
static void pause_once(uint64_t deadline) {
    require(monotonic() < deadline, 11);
    require(uwvm_ros_command_pause(5000000) == 0, 12);
}
static int positions(JointState const *state, double *values) {
    unsigned i, j;
    if (state->name.size != state->position.size) return 0;
    for (i = 0; i != joint_count; ++i) {
        unsigned found = 0;
        for (j = 0; j != state->name.size; ++j) {
            if (strlen(names[i]) == state->name.data[j].size &&
                !memcmp(names[i], state->name.data[j].data, strlen(names[i]))) {
                if (found++) return 0;
                values[i] = state->position.data[j];
                if (!(values[i] >= -DBL_MAX && values[i] <= DBL_MAX)) return 0;
            }
        }
        if (found != 1) return 0;
    }
    return 1;
}
static int sample(roswasmc_capability *cap, JointState *state, double *values) {
    unsigned char wire[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES];
    roswasmc_result r = roswasmc_poll(cap, wire, sizeof wire);
    if (r.error == UWVM_ROS_AGAIN) return 0;
    require(!r.error && r.has_length && r.length <= sizeof wire, 20 + r.error);
    require(!roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(wire, (size_t)r.length, state), 21);
    require(positions(state, values), 22);
    for (unsigned i = 0; i != state->effort.size; ++i) if (state->effort.data[i] != state->effort.data[i]) ++unknown_effort;
    return 1;
}
static double position_tolerance;
static int same(double const *a, double const *b) {
    unsigned i;
    for (i = 0; i != joint_count; ++i) {
        double d = a[i] - b[i];
        if (!(d >= -position_tolerance && d <= position_tolerance)) return 0;
    }
    return 1;
}
int main(int argc, char **argv) {
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability state_cap;
    roswasmc_action_bundle bundle = {0};
    roswasmc_action_aliases aliases = {
        {"joint_send", 10}, {"joint_cancel", 12},
        {"joint_feedback", 14}, {"joint_result", 12}, {NULL, 0}
    };
    uint64_t owned[2] = {0}, id = 0, deadline, samples = 0, feedbacks = 0;
    JointState state = {0};
    Goal goal = {0};
    Result result = {0};
    Feedback feedback = {0};
    double initial[JOINT_CAPACITY] = {0}, target[JOINT_CAPACITY] = {0}, actual[JOINT_CAPACITY] = {0};
    uint8_t kind = 0;
    unsigned i, error;
    char gate = 0;
    scenario = argc > 1 ? argv[1] : "missing";
    require(argc > 4 && (unsigned)(argc - 4) <= JOINT_CAPACITY, 1);
    joint_count = (unsigned)(argc - 4);
    require(joint_count <= sizeof goal.goal_tolerance.data / sizeof goal.goal_tolerance.data[0] &&
            joint_count <= sizeof goal.trajectory.points.data[0].positions.data / sizeof goal.trajectory.points.data[0].positions.data[0], 5);
    for (i = 0; i != joint_count; ++i) names[i] = argv[i + 4];
    char *challenge_end = NULL, *tolerance_end = NULL;
    errno = 0;
    unsigned long parsed_challenge = strtoul(argv[2], &challenge_end, 10);
    require(!errno && challenge_end != argv[2] && *challenge_end == 0 &&
            argv[2][0] >= '0' && argv[2][0] <= '9' &&
            parsed_challenge > 0 && parsed_challenge <= 1000, 2);
    unsigned challenge = (unsigned)parsed_challenge;
    errno = 0;
    position_tolerance = strtod(argv[3], &tolerance_end);
    require(!errno && tolerance_end != argv[3] && *tolerance_end == 0 &&
            position_tolerance > 0 && position_tolerance < (double)challenge / 40000.0, 4);
    printf("{\"format\":\"uwvm-joint-guest-v1\",\"case\":\"%s\",\"status\":\"READY\"}\n", scenario);
    fflush(stdout);
    require(read(0, &gate, 1) == 1 && gate == 'I', 3);
    deadline = monotonic() + 15000000000ULL;
    roswasmc_capability_init(&state_cap, &context);
    require(!roswasmc_open(&state_cap, "joint_state", 11), 30);
    require(!roswasmc_subscribe(&state_cap), 31);
    while (!sample(&state_cap, &state, initial)) pause_once(deadline);
    uint64_t first_stamp = (uint64_t)state.header.stamp.sec * 1000000000ULL + state.header.stamp.nanosec;
    if (!strcmp(scenario, "owner") || !strcmp(scenario, "foreign")) {
        if (!strcmp(scenario, "owner")) {
            /* Per-instance handle bit patterns can coincide. Keep a real second
             * owner slot so this test exercises a non-colliding foreign token. */
            roswasmc_capability extra;
            roswasmc_capability_init(&extra, &context);
            require(!roswasmc_open(&extra, "joint_state", 11), 116);
            require(!roswasmc_subscribe(&extra), 117);
            require(extra.handle != state_cap.handle, 118);
            require(!roswasmc_close(&state_cap), 119);
            state_cap = extra; extra.handle = 0;
        }
        printf("{\"format\":\"uwvm-joint-guest-v1\",\"case\":\"%s\",\"status\":\"OWNED_HANDLE\",\"handle\":%llu}\n",
               scenario, (unsigned long long)state_cap.handle);
        fflush(stdout);
        if (!strcmp(scenario, "owner")) {
            require(read(0, &gate, 1) == 1 && gate == 'C', 110);
        } else {
            unsigned char bytes[8]; size_t got = 0;
            while (got != sizeof bytes) { ssize_t n = read(0, bytes + got, sizeof bytes - got); require(n > 0, 111); got += (size_t)n; }
            uint64_t foreign = uwvm_bounded_get(bytes, sizeof bytes);
            require(foreign && foreign != state_cap.handle, 112);
            require(uwvm_ros2_capability_close(foreign) == UWVM_ROS_BAD_HANDLE, 113);
            uint64_t output = UINT64_C(0x123456789abcdef0), length = UINT64_C(0x76543210fedcba98);
            unsigned status = uwvm_ros2_event_poll(foreign, 0, (uintptr_t)&output, sizeof output, (uintptr_t)&length);
            require(status == UWVM_ROS_BAD_HANDLE, 11000 + status);
            require(output == UINT64_C(0x123456789abcdef0) && length == UINT64_C(0x76543210fedcba98), 114);
        }
        int fresh = 0;
        while (!fresh) {
            if (sample(&state_cap, &state, actual)) {
                ++samples; require(same(initial, actual), 115);
                uint64_t stamp = (uint64_t)state.header.stamp.sec * 1000000000ULL + state.header.stamp.nanosec;
                fresh = stamp > first_stamp;
            }
            if (!fresh) pause_once(deadline);
        }
        goto finished;
    }
    if (!strcmp(scenario, "disconnect")) {
        printf("{\"format\":\"uwvm-joint-guest-v1\",\"case\":\"disconnect\",\"status\":\"WAITING_DISCONNECT\"}\n");
        fflush(stdout); require(read(0, &gate, 1) == 1 && gate == 'D', 90);
        unsigned char bytes[16]; memset(bytes, 0x5a, sizeof bytes);
        roswasmc_result r = roswasmc_poll(&state_cap, bytes, sizeof bytes);
        require(r.error == UWVM_ROS_DISCONNECTED, 9000 + r.error);
        for (unsigned n = 0; n != sizeof bytes; ++n) require(bytes[n] == 0x5a, 91);
        uint64_t retired = state_cap.handle;
        unsigned status = roswasmc_close(&state_cap);
        require(status == 0 || status == UWVM_ROS_DISCONNECTED, 9100 + status);
        require(uwvm_ros2_capability_close(retired) == UWVM_ROS_BAD_HANDLE, 92);
        goto finished;
    }
    error = roswasmc_action_bundle_init(&context, &bundle, &aliases, owned, 2);
    if (!strcmp(scenario, "denied")) {
        require(error == UWVM_ROS_DENIED, 32 + error);
        uint64_t finish = monotonic() + 500000000;
        while (monotonic() < finish) {
            if (sample(&state_cap, &state, actual)) {
                require(same(initial, actual), 33); ++samples;
            }
            pause_once(deadline);
        }
        require(samples > 0, 34);
    } else if (!strcmp(scenario, "boundaries")) {
        unsigned char input[ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_MAX_WIRE_BYTES];
        uint64_t output = UINT64_C(0x3ac05eed7ffeed43), length = UINT64_C(0xba11c0ffee13579a);
        size_t size = 0;
        require(!error, 70 + error);
        require(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_default(&goal), 71);
        require(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(&goal, input, sizeof input, &size), 72);
        for (size_t cut = 0; cut < size; ++cut) {
            unsigned status = uwvm_ros2_action_send_goal(bundle.cap[0].handle, 0,
                (uintptr_t)input, cut, (uintptr_t)&output, 8, (uintptr_t)&length);
            require(status == UWVM_ROS_INVALID, 8000 + status);
            require(output == UINT64_C(0x3ac05eed7ffeed43) && length == UINT64_C(0xba11c0ffee13579a), 73);
        }
        uint64_t end = (uint64_t)__builtin_wasm_memory_size(0) * 65536;
        for (unsigned slot = 0; slot != 4; ++slot) {
            uint64_t address = slot == 0 ? end - 2 : (uintptr_t)input;
            uint64_t destination = slot == 1 ? end - 2 : (uintptr_t)&output;
            uint64_t count_address = slot == 2 ? end - 2 : (uintptr_t)&length;
            unsigned memory = slot == 3 ? 1 : 0;
            unsigned status = uwvm_ros2_action_send_goal(bundle.cap[0].handle, memory,
                address, size, destination, 8, count_address);
            require(status == UWVM_ROS_INVALID, 8100 + status);
            require(output == UINT64_C(0x3ac05eed7ffeed43) && length == UINT64_C(0xba11c0ffee13579a), 74);
        }
        unsigned status = uwvm_ros2_action_send_goal(bundle.cap[0].handle, 0,
            UINT64_MAX - 1, 8, (uintptr_t)&output, 8, (uintptr_t)&length);
        require(status == UWVM_ROS_INVALID, 8200 + status);
        roswasmc_capability extra;
        roswasmc_capability_init(&extra, &context);
        require(!roswasmc_open(&extra, "joint_state", 11), 75);
        uint64_t stale = extra.handle;
        require(!roswasmc_close(&extra), 76);
        require(uwvm_ros2_capability_close(stale) == UWVM_ROS_BAD_HANDLE, 77);
        require(uwvm_ros2_capability_close(UINT64_MAX) == UWVM_ROS_BAD_HANDLE, 78);
        unsigned char selector[8], accepted = 77;
        uwvm_bounded_put(selector, UINT64_MAX, 8);
        roswasmc_result refusal = roswasmc_action_cancel_own_goal(&bundle.cap[1], selector, 8, &accepted, 1);
        require(refusal.error == UWVM_ROS_BAD_HANDLE && accepted == 77, 7900 + refusal.error);
        uwvm_bounded_put(selector, 0, 8);
        refusal = roswasmc_action_cancel_any_goal(&bundle.cap[1], selector, 8, &accepted, 1);
        require(refusal.error == UWVM_ROS_DENIED && accepted == 77, 8000 + refusal.error);
        uint64_t finish = monotonic() + 500000000;
        while (monotonic() < finish) {
            if (sample(&state_cap, &state, actual)) { require(same(initial, actual), 81); ++samples; }
            pause_once(deadline);
        }
        require(samples > 0, 82);
        for (i = 0; i != bundle.roles; ++i) require(!roswasmc_close(&bundle.cap[i]), 83 + i);
    } else {
        require(!error, 40 + error);
        require(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_default(&goal), 41);
        goal.trajectory.joint_names.size = joint_count;
        goal.goal_tolerance.size = joint_count;
        goal.trajectory.points.size = 1;
        goal.trajectory.points.data[0].positions.size = joint_count;
        goal.trajectory.points.data[0].time_from_start.sec = !strcmp(scenario, "cancel") ? 5 : 1;
        for (i = 0; i != joint_count; ++i) {
            size_t n = strlen(names[i]);
            require(n <= sizeof goal.trajectory.joint_names.data[i].data, 42);
            goal.trajectory.joint_names.data[i].size = (uint32_t)n;
            memcpy(goal.trajectory.joint_names.data[i].data, names[i], n);
            require(n <= sizeof goal.goal_tolerance.data[i].name.data, 43);
            goal.goal_tolerance.data[i].name.size = (uint32_t)n;
            memcpy(goal.goal_tolerance.data[i].name.data, names[i], n);
            goal.goal_tolerance.data[i].position = position_tolerance;
            target[i] = initial[i] + (i == 0 ? (double)challenge / 10000.0 : 0);
            goal.trajectory.points.data[0].positions.data[i] = target[i];
        }
        uint64_t before_send = monotonic();
        roswasmc_result r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(&bundle, &goal, &id);
        if (!strcmp(scenario, "timeout")) {
            require(r.error == 110 && id == 0, 10000 + r.error);
            uint64_t elapsed = monotonic() - before_send;
            require(elapsed >= 90000000 && elapsed < 3000000000ULL, 10001);
            uint64_t finish = monotonic() + 300000000;
            while (monotonic() < finish) {
                if (sample(&state_cap, &state, actual)) { require(same(initial, actual), 10002); ++samples; }
                pause_once(deadline);
            }
            require(samples > 0, 10003);
            for (i = 0; i != bundle.roles; ++i) require(!roswasmc_close(&bundle.cap[i]), 10004 + i);
            goto finished;
        }
        require(!r.error && id, 1000 + r.error);
        if (!strcmp(scenario, "cancel")) {
            int accepted = 0;
            while (!feedbacks) {
                r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(&bundle, id, &feedback);
                if (!r.error) ++feedbacks;
                else require(r.error == UWVM_ROS_AGAIN, 2010 + r.error);
                if (!feedbacks) pause_once(deadline);
            }
            r = roswasmc_action_bundle_cancel_own(&bundle, id, &accepted);
            require(!r.error && accepted == 1, 2100 + r.error);
        }
        while (!kind) {
            r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(&bundle, id, &feedback);
            if (!r.error) ++feedbacks;
            else require(r.error == UWVM_ROS_AGAIN, 2000 + r.error);
            r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(&bundle, id, &kind, &result);
            if (r.error) require(r.error == UWVM_ROS_AGAIN, 3000 + r.error);
            if (!kind) pause_once(deadline);
        }
        require(kind == (!strcmp(scenario, "cancel") ? 4 : 2) && result.error_code == 0, 4000 + kind);
        require(feedbacks > 0, 4005);
        int matched = 0;
        while (!matched) {
            if (sample(&state_cap, &state, actual)) {
                ++samples;
                uint64_t stamp = (uint64_t)state.header.stamp.sec * 1000000000ULL + state.header.stamp.nanosec;
                matched = stamp > first_stamp && (!strcmp(scenario, "cancel") || same(target, actual));
            }
            if (!matched) pause_once(deadline);
        }
        if (!strcmp(scenario, "cancel")) {
            double stopped[JOINT_CAPACITY]; memcpy(stopped, actual, sizeof stopped);
            require(!same(target, actual), 4006);
            uint64_t finish = monotonic() + 300000000;
            while (monotonic() < finish) {
                if (sample(&state_cap, &state, actual)) { require(same(stopped, actual), 4007); ++samples; }
                pause_once(deadline);
            }
        }
        for (i = 0; i != bundle.roles; ++i) require(!roswasmc_close(&bundle.cap[i]), 50 + i);
    }
finished:
    if (state_cap.handle) require(!roswasmc_close(&state_cap), 60);
    printf("{\"format\":\"uwvm-joint-guest-v1\",\"case\":\"%s\",\"status\":\"PASS\",\"assertions\":%u,\"challenge\":%u,\"goal\":%llu,\"feedbacks\":%llu,\"samples\":%llu,\"initial\":[",
           scenario, assertions, challenge, (unsigned long long)id, (unsigned long long)feedbacks, (unsigned long long)samples);
    for (i = 0; i != joint_count; ++i) printf("%s%.12g", i ? "," : "", initial[i]);
    printf("],\"target\":[");
    for (i = 0; i != joint_count; ++i) printf("%s%.12g", i ? "," : "", target[i]);
    printf("],\"actual\":[");
    for (i = 0; i != joint_count; ++i) printf("%s%.12g", i ? "," : "", actual[i]);
    printf("],\"position_tolerance_radians\":%.17g,\"unknown_effort_samples\":%u,\"terminal_kind\":%u,\"result_error\":%d}\n", position_tolerance, unknown_effort, kind, result.error_code);
    return 0;
}
