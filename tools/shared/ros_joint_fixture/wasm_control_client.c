/* SPDX-License-Identifier: Apache-2.0
 * Official software-controller example. Planning, message encoding, feedback
 * interpretation and all business assertions execute inside this Wasm program. */
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/command.h>
#include "bounded_interfaces.h"
#include <uwvm_ros/pid.h>
#include <uwvm_ros/trajectory.h>
#include <wasi/api.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <float.h>
#include <errno.h>
#include <math.h>
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
static double initial[JOINT_CAPACITY], target[JOINT_CAPACITY], actual[JOINT_CAPACITY];
static double lower[JOINT_CAPACITY], upper[JOINT_CAPACITY], last_command[JOINT_CAPACITY];
static char const *phase = "initialization";
static void require(int ok, unsigned code) {
    ++assertions;
    if (!ok) {
        printf("{\"format\":\"uwvm-control-guest-v1\",\"case\":\"%s\",\"status\":\"FAIL\",\"assertions\":%u,\"code\":%u}\n",
               scenario, assertions, code);
        fprintf(stderr, "Joint fixture failed: phase=%s code=%u\n", phase, code);
        for (unsigned i = 0; i < joint_count; ++i)
            fprintf(stderr, "joint[%u]=%s initial=%.17g target=%.17g actual=%.17g command=%.17g limits=[%.17g,%.17g]\n",
                    i, names[i] ? names[i] : "unparsed", initial[i], target[i], actual[i], last_command[i], lower[i], upper[i]);
        fflush(stderr);
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
    roswasmc_capability state_cap, command_cap;
    JointState state = {0}, command = {0};
    double stopped[JOINT_CAPACITY] = {0};
    uwvm_ros_pid *controllers[JOINT_CAPACITY] = {0};
    uwvm_ros_segment *trajectory = NULL;
    uint64_t deadline, samples = 0, commands = 0, stamp_before = 0;
    unsigned cancelled = 0, i;
    char gate = 0, *end = NULL;
    scenario = argc > 1 ? argv[1] : "missing";
    require(argc > 4 && (argc - 4) % 3 == 0 && (unsigned)(argc - 4) / 3 <= JOINT_CAPACITY, 1);
    joint_count = (unsigned)(argc - 4) / 3;
    errno = 0;
    unsigned long parsed = strtoul(argv[2], &end, 10);
    require(!errno && end != argv[2] && !*end && parsed > 0 && parsed <= 1000, 2);
    unsigned challenge = (unsigned)parsed;
    errno = 0;
    position_tolerance = strtod(argv[3], &end);
    require(!errno && end != argv[3] && !*end && position_tolerance > 0 &&
            position_tolerance < challenge / 40000.0, 4);
    for (i = 0; i < joint_count; ++i) {
        names[i] = argv[3 * i + 4];
        errno = 0; lower[i] = strtod(argv[3 * i + 5], &end);
        require(!errno && end != argv[3 * i + 5] && !*end && !isnan(lower[i]), 6);
        errno = 0; upper[i] = strtod(argv[3 * i + 6], &end);
        require(!errno && end != argv[3 * i + 6] && !*end && !isnan(upper[i]) && lower[i] < upper[i], 7);
    }
    printf("{\"format\":\"uwvm-control-guest-v1\",\"case\":\"%s\",\"status\":\"READY\"}\n", scenario);
    fflush(stdout);
    require(read(0, &gate, 1) == 1 && gate == 'I', 3);
    deadline = monotonic() + UINT64_C(20000000000);
    roswasmc_capability_init(&state_cap, &context);
    roswasmc_capability_init(&command_cap, &context);
    require(!roswasmc_open(&state_cap, "joint_state", 11), 30);
    require(!roswasmc_subscribe(&state_cap), 31);
    if (!strcmp(scenario, "timeout")) {
        uint64_t before = monotonic(), until = before + UINT64_C(200000000);
        while (monotonic() < until) {
            require(!sample(&state_cap, &state, actual), 32);
            pause_once(deadline);
        }
        require(monotonic() - before >= UINT64_C(200000000) &&
                monotonic() - before < UINT64_C(3000000000), 33);
        goto finished;
    }
    phase = "initial state";
    while (!sample(&state_cap, &state, initial)) pause_once(deadline);
    memcpy(actual, initial, sizeof actual);
    stamp_before = (uint64_t)state.header.stamp.sec * UINT64_C(1000000000) + state.header.stamp.nanosec;
    for (i = 0; i < joint_count; ++i) {
        target[i] = fmax(lower[i], fmin(upper[i], initial[i]));
        if (i == 0) {
            double step = challenge / 10000.0;
            target[i] = initial[i] + step <= upper[i] ? initial[i] + step : initial[i] - step;
            require(target[i] >= lower[i] && target[i] <= upper[i], 8);
        }
    }
    if (!strcmp(scenario, "owner") || !strcmp(scenario, "foreign")) {
        if (!strcmp(scenario, "owner")) {
            roswasmc_capability extra;
            roswasmc_capability_init(&extra, &context);
            require(!roswasmc_open(&extra, "joint_state", 11) && !roswasmc_subscribe(&extra), 110);
            require(extra.handle != state_cap.handle, 111);
            require(!roswasmc_close(&state_cap), 112);
            state_cap = extra;
        }
        printf("{\"format\":\"uwvm-control-guest-v1\",\"case\":\"%s\",\"status\":\"OWNED_HANDLE\",\"handle\":%llu}\n",
               scenario, (unsigned long long)state_cap.handle);
        fflush(stdout);
        if (!strcmp(scenario, "owner")) {
            require(read(0, &gate, 1) == 1 && gate == 'C', 113);
        } else {
            unsigned char bytes[8]; size_t count = 0;
            while (count < sizeof bytes) {
                ssize_t n = read(0, bytes + count, sizeof bytes - count);
                require(n > 0, 114); count += (size_t)n;
            }
            uint64_t foreign = uwvm_bounded_get(bytes, 8);
            uint64_t value = UINT64_C(0x123456789abcdef0), length = UINT64_C(0x76543210fedcba98);
            require(foreign && foreign != state_cap.handle, 115);
            require(uwvm_ros2_capability_close(foreign) == UWVM_ROS_BAD_HANDLE, 116);
            require(uwvm_ros2_event_poll(foreign, 0, (uintptr_t)&value, sizeof value, (uintptr_t)&length) == UWVM_ROS_BAD_HANDLE, 117);
            require(value == UINT64_C(0x123456789abcdef0) && length == UINT64_C(0x76543210fedcba98), 118);
        }
        while (1) {
            if (sample(&state_cap, &state, actual)) {
                ++samples; require(same(initial, actual), 119);
                if ((uint64_t)state.header.stamp.sec * UINT64_C(1000000000) + state.header.stamp.nanosec > stamp_before) break;
            }
            pause_once(deadline);
        }
        goto finished;
    }
    if (!strcmp(scenario, "disconnect")) {
        printf("{\"format\":\"uwvm-control-guest-v1\",\"case\":\"disconnect\",\"status\":\"WAITING_DISCONNECT\"}\n");
        fflush(stdout);
        require(read(0, &gate, 1) == 1 && gate == 'D', 90);
        unsigned char bytes[16]; memset(bytes, 0x5a, sizeof bytes);
        roswasmc_result r = roswasmc_poll(&state_cap, bytes, sizeof bytes);
        require(r.error == UWVM_ROS_DISCONNECTED, 9000 + r.error);
        for (i = 0; i < sizeof bytes; ++i) require(bytes[i] == 0x5a, 91);
        uint64_t retired = state_cap.handle;
        unsigned error = roswasmc_close(&state_cap);
        require(!error || error == UWVM_ROS_DISCONNECTED, 9100 + error);
        require(uwvm_ros2_capability_close(retired) == UWVM_ROS_BAD_HANDLE, 92);
        goto finished;
    }
    unsigned error = roswasmc_open(&command_cap, "joint_command", 13);
    if (!strcmp(scenario, "denied")) require(error == UWVM_ROS_DENIED, 3200 + error);
    else require(!error, 3300 + error);
    command.name.size = command.position.size = joint_count;
    for (i = 0; i < joint_count; ++i) {
        size_t n = strlen(names[i]);
        require(n <= sizeof command.name.data[i].data, 40);
        command.name.data[i].size = (uint32_t)n;
        memcpy(command.name.data[i].data, names[i], n);
        command.position.data[i] = initial[i];
    }
    unsigned char wire[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES];
    size_t length = 0;
    if (!strcmp(scenario, "boundaries")) {
        require(!roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&command, wire, sizeof wire, &length), 70);
        for (size_t n = 0; n < length; ++n)
            require(uwvm_ros2_topic_publish(command_cap.handle, 0, (uintptr_t)wire, n) == UWVM_ROS_INVALID, 71);
        uint64_t memory_end = (uint64_t)__builtin_wasm_memory_size(0) * 65536;
        require(uwvm_ros2_topic_publish(command_cap.handle, 0, memory_end - 1, length) == UWVM_ROS_INVALID, 72);
        require(uwvm_ros2_topic_publish(command_cap.handle, 1, (uintptr_t)wire, length) == UWVM_ROS_INVALID, 73);
        require(uwvm_ros2_topic_publish(command_cap.handle, 0, UINT64_MAX - 1, 8) == UWVM_ROS_INVALID, 74);
        roswasmc_capability extra;
        roswasmc_capability_init(&extra, &context);
        require(!roswasmc_open(&extra, "joint_state", 11), 75);
        uint64_t stale = extra.handle;
        require(!roswasmc_close(&extra), 76);
        require(uwvm_ros2_capability_close(stale) == UWVM_ROS_BAD_HANDLE, 77);
        require(uwvm_ros2_topic_publish(stale, 0, (uintptr_t)wire, length) == UWVM_ROS_BAD_HANDLE, 78);
    }
    if (!strcmp(scenario, "denied") || !strcmp(scenario, "boundaries")) {
        uint64_t until = monotonic() + UINT64_C(500000000);
        while (monotonic() < until) {
            if (sample(&state_cap, &state, actual)) { require(same(initial, actual), 80); ++samples; }
            pause_once(deadline);
        }
        require(samples > 0, 81);
        goto finished;
    }
    require(!strcmp(scenario, "positive") || !strcmp(scenario, "cancel"), 5);
    phase = "Wasm trajectory and original ROS Controls PID";
    double zero_derivatives[JOINT_CAPACITY] = {0}, planned[JOINT_CAPACITY];
    uwvm_ros_trajectory_point from = {initial, zero_derivatives, NULL, NULL};
    uwvm_ros_trajectory_point to = {target, zero_derivatives, NULL, NULL};
    trajectory = uwvm_ros_segment_create(joint_count, &from, &to, INT64_C(1000000000));
    require(trajectory != NULL, 121);
    for (i = 0; i < joint_count; ++i) {
        controllers[i] = uwvm_ros_pid_create(0.4, 1.2, 0);
        require(controllers[i] != NULL, 109);
    }
    uint64_t begin = monotonic(), previous = begin, stable = 0, last_fresh = begin;
    while (1) {
        uint64_t now = monotonic();
        int fresh = 0;
        while (sample(&state_cap, &state, actual)) {
            ++samples; fresh = 1;
            uint64_t stamp = (uint64_t)state.header.stamp.sec * UINT64_C(1000000000) + state.header.stamp.nanosec;
            require(stamp > stamp_before, 100); stamp_before = stamp;
        }
        if (!fresh) {
            require(now - last_fresh < UINT64_C(1000000000), 101);
            pause_once(deadline);
            continue;
        }
        last_fresh = now;
        double dt = (double)(now - previous) / 1e9;
        previous = now;
        double fraction = (double)(now - begin) / 1e9;
        if (fraction > 1) fraction = 1;
        require(!uwvm_ros_segment_sample(trajectory, (int64_t)(now - begin), planned,
                                         NULL, NULL, NULL, joint_count), 122);
        if (!strcmp(scenario, "cancel") && !cancelled && now - begin >= UINT64_C(250000000)) {
            for (i = 0; i < joint_count; ++i)
                stopped[i] = fmax(lower[i], fmin(upper[i], actual[i]));
            cancelled = 1;
        }
        for (i = 0; i < joint_count; ++i) {
            double desired = cancelled ? stopped[i] : planned[i];
            desired = fmax(lower[i], fmin(upper[i], desired));
            double delta = desired - actual[i];
            double correction = 0;
            require(!uwvm_ros_pid_set_limits(controllers[i], lower[i] - desired, upper[i] - desired), 120);
            require(!uwvm_ros_pid_compute(controllers[i], delta, dt, &correction), 110);
            /* Final rounding can cross an endpoint by one ULP. Keep the original
               actuator contract after the upstream PID's conditional integration. */
            command.position.data[i] = fmax(lower[i], fmin(upper[i], desired + correction));
            last_command[i] = command.position.data[i];
            require(command.position.data[i] >= -DBL_MAX && command.position.data[i] <= DBL_MAX, 102);
        }
        require(now / UINT64_C(1000000000) <= INT32_MAX, 103);
        command.header.stamp.sec = (int32_t)(now / UINT64_C(1000000000));
        command.header.stamp.nanosec = (uint32_t)(now % UINT64_C(1000000000));
        require(!roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&command, wire, sizeof wire, &length), 104);
        require(!roswasmc_publish(&command_cap, wire, length), 105);
        ++commands;
        if ((cancelled || fraction >= 1) && same(cancelled ? stopped : target, actual)) {
            if (!stable) stable = now;
            if (now - stable >= UINT64_C(500000000)) break;
        } else stable = 0;
        pause_once(deadline);
    }
    require(commands > 0 && samples > 0, 106);
    if (cancelled) require(!same(target, actual) && same(stopped, actual), 107);
    else require(same(target, actual), 108);
finished:
    uwvm_ros_segment_destroy(trajectory);
    for (i = 0; i < joint_count; ++i) uwvm_ros_pid_destroy(controllers[i]);
    if (command_cap.handle) require(!roswasmc_close(&command_cap), 60);
    if (state_cap.handle) require(!roswasmc_close(&state_cap), 61);
    printf("{\"format\":\"uwvm-control-guest-v1\",\"case\":\"%s\",\"status\":\"PASS\",\"control_in_wasm\":true,\"control_source\":\"ros-controls/control_toolbox@4.11.1\",\"trajectory_source\":\"ros-controls/ros2_controllers@4.42.1\","
           "\"assertions\":%u,\"challenge\":%u,\"commands\":%llu,\"samples\":%llu,\"cancelled\":%u,\"initial\":[",
           scenario, assertions, challenge, (unsigned long long)commands, (unsigned long long)samples, cancelled);
    for (i = 0; i < joint_count; ++i) printf("%s%.12g", i ? "," : "", initial[i]);
    printf("],\"target\":[");
    for (i = 0; i < joint_count; ++i) printf("%s%.12g", i ? "," : "", target[i]);
    printf("],\"actual\":[");
    for (i = 0; i < joint_count; ++i) printf("%s%.12g", i ? "," : "", actual[i]);
    printf("],\"position_tolerance_radians\":%.17g}\n", position_tolerance);
    return 0;
}
