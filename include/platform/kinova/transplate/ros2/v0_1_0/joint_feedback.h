/* SPDX-License-Identifier: Apache-2.0 */
/** @file joint_feedback.h
 * @brief Owned Kinova joint/action values over SDK01's real Wasm imports.
 * @details This is a custom typed resource binding, not upstream rcl/rclcpp API
 * compatibility. All callbacks below execute inside the calling Wasm module.
 * Aliases and authority are external. No ROS host client, process, socket,
 * dynamic loader, implicit grant or retry of an admitted goal exists here.
 */
#ifndef UWVM_KINOVA_TRANSPLATE_V0_1_0_JOINT_FEEDBACK_H
#define UWVM_KINOVA_TRANSPLATE_V0_1_0_JOINT_FEEDBACK_H
#include <platform/ros/transplate/v0_1_0/transport.h>
#include <kinova/c/ros2/mobile-fjt-humble-complete/bounded_records.h>
#include <string.h>
typedef roswasmc_bounded_2_sensor_msgs_msg_JointState kinova_joint_state;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal kinova_joint_goal;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback kinova_joint_feedback;
typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result kinova_joint_result;
enum {KINOVA_STATE = 0, KINOVA_SEND = 1, KINOVA_FEEDBACK = 2, KINOVA_RESULT = 3, KINOVA_CANCEL = 4};
typedef struct kinova_joint_client
{
    uint64_t role[5], goal_id, state_callbacks, feedback_callbacks, result_callbacks;
    void* userdata;
    void (*on_state)(void*, kinova_joint_state const*);
    void (*on_feedback)(void*, uint64_t, kinova_joint_feedback const*);
    void (*on_result)(void*, uint64_t, uint8_t, kinova_joint_result const*);
} kinova_joint_client;
static inline uint64_t kinova_joint_u64(unsigned char const* p)
{
    uint64_t v = 0; unsigned i;
    for(i = 0; i != 8; ++i) v |= (uint64_t)p[i] << (i * 8);
    return v;
}
static inline void kinova_joint_id_bytes(unsigned char p[8], uint64_t v)
{
    unsigned i; for(i = 0; i != 8; ++i) p[i] = (unsigned char)(v >> (i * 8));
}
/** @brief Retire local ownership before each real close; preserve first cleanup error. */
static inline uint32_t kinova_joint_close(kinova_joint_client* c)
{
    uint32_t first = 0; unsigned i;
    if(!c) return 22;
    for(i = 5; i != 0; --i)
    {
        uint64_t h = c->role[i-1]; uint32_t e;
        c->role[i-1] = 0;
        if(h && (e = uwvm_transplate_v0_1_0_ros2_capability_close(h)) != 0 && !first) first = e;
    }
    c->goal_id = 0; return first;
}
/** @brief Open exactly five independently granted aliases; never selects a fallback. */
static inline uint32_t kinova_joint_open(kinova_joint_client* c, char const* const aliases[5], uint32_t* cleanup)
{
    unsigned i;
    if(!c || !aliases || !cleanup) return 22;
    *cleanup = 0;
    for(i = 0; i != 5; ++i) if(c->role[i]) return 17;
    if(uwvm_transplate_v0_1_0_ros2_abi_version() != 1) return 38;
    for(i = 0; i != 5; ++i)
    {
        unsigned char handle[8] = {0}; size_t n = 0; uint32_t code;
        if(!aliases[i]) { *cleanup = kinova_joint_close(c); return 22; }
        while(n < 256 && aliases[i][n]) ++n;
        if(!n || n == 256) { *cleanup = kinova_joint_close(c); return 22; }
        code = uwvm_transplate_v0_1_0_ros2_capability_open(0,
            uwvm_transplate_v0_1_0_address(aliases[i]), n, uwvm_transplate_v0_1_0_address(handle));
        if(code) { *cleanup = kinova_joint_close(c); return code; }
        c->role[i] = kinova_joint_u64(handle);
        if(!c->role[i]) { *cleanup = kinova_joint_close(c); return 22; }
    }
    return 0;
}
static inline uint32_t kinova_joint_subscribe(kinova_joint_client const* c)
{
    if(!c || !c->role[KINOVA_STATE]) return 9;
    return uwvm_transplate_v0_1_0_ros2_topic_subscribe(c->role[KINOVA_STATE]);
}
/** @brief Decode the actual inbound value, then dispatch its callback in Wasm. */
static inline uint32_t kinova_joint_poll_state(kinova_joint_client* c)
{
    unsigned char wire[1404]; unsigned char length[8];
    kinova_joint_state state = {0}; uint64_t n; uint32_t code;
    if(!c || !c->role[KINOVA_STATE]) return 9;
    memset(length, 0xff, sizeof length);
    code = uwvm_transplate_v0_1_0_ros2_event_poll(c->role[KINOVA_STATE], 0,
        uwvm_transplate_v0_1_0_address(wire), sizeof wire, uwvm_transplate_v0_1_0_address(length));
    if(code) return code;
    n = kinova_joint_u64(length);
    if(n > sizeof wire || roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(wire, (size_t)n, &state)) return 22;
    ++c->state_callbacks;
    if(c->on_state) c->on_state(c->userdata, &state);
    return 0;
}
/** @brief Encode and submit once. Any timeout/error is returned without replay. */
static inline uint32_t kinova_joint_submit(kinova_joint_client* c, kinova_joint_goal const* goal)
{
    unsigned char wire[8580], result[8], length[8]; size_t n = 0; uint64_t id; uint32_t code;
    if(!c || !c->role[KINOVA_SEND]) return 9;
    if(c->goal_id) return 17;
    code = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(goal, wire, sizeof wire, &n);
    if(code) return code;
    memset(length, 0xff, sizeof length);
    code = uwvm_transplate_v0_1_0_ros2_action_send_goal(c->role[KINOVA_SEND], 0,
        uwvm_transplate_v0_1_0_address(wire), n, uwvm_transplate_v0_1_0_address(result),
        sizeof result, uwvm_transplate_v0_1_0_address(length));
    if(code) return code;
    if(kinova_joint_u64(length) != 8 || !(id = kinova_joint_u64(result))) return 22;
    c->goal_id = id; return 0;
}
static inline uint32_t kinova_joint_poll_feedback(kinova_joint_client* c)
{
    unsigned char request[8], wire[4716], length[8]; uint64_t n; uint32_t code;
    kinova_joint_feedback value = {0};
    if(!c || !c->goal_id || !c->role[KINOVA_FEEDBACK]) return 9;
    kinova_joint_id_bytes(request, c->goal_id); memset(length, 0xff, sizeof length);
    code = uwvm_transplate_v0_1_0_ros2_action_receive_feedback(c->role[KINOVA_FEEDBACK], 0,
        uwvm_transplate_v0_1_0_address(request), 8, uwvm_transplate_v0_1_0_address(wire),
        sizeof wire, uwvm_transplate_v0_1_0_address(length));
    if(code) return code;
    n = kinova_joint_u64(length);
    if(n < 8 || n > sizeof wire || kinova_joint_u64(wire) != c->goal_id ||
       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(wire+8, (size_t)n-8, &value)) return 22;
    ++c->feedback_callbacks;
    if(c->on_feedback) c->on_feedback(c->userdata, c->goal_id, &value);
    return 0;
}
static inline uint32_t kinova_joint_poll_result(kinova_joint_client* c)
{
    unsigned char request[8], wire[273], length[8]; uint64_t n, id; uint8_t kind; uint32_t code;
    kinova_joint_result value = {0};
    if(!c || !c->goal_id || !c->role[KINOVA_RESULT]) return 9;
    id = c->goal_id; kinova_joint_id_bytes(request, id); memset(length, 0xff, sizeof length);
    code = uwvm_transplate_v0_1_0_ros2_action_receive_result(c->role[KINOVA_RESULT], 0,
        uwvm_transplate_v0_1_0_address(request), 8, uwvm_transplate_v0_1_0_address(wire),
        sizeof wire, uwvm_transplate_v0_1_0_address(length));
    if(code) return code;
    n = kinova_joint_u64(length);
    if(n < 9 || n > sizeof wire || kinova_joint_u64(wire) != id || wire[8] < 2 || wire[8] > 4 ||
       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(wire+9, (size_t)n-9, &value)) return 22;
    kind = wire[8]; c->goal_id = 0; ++c->result_callbacks;
    if(c->on_result) c->on_result(c->userdata, id, kind, &value);
    return 0;
}
/** @brief Cancel only this module's admitted goal; acknowledgment is not a result. */
static inline uint32_t kinova_joint_cancel(kinova_joint_client const* c)
{
    unsigned char request[8], response[64], length[8];
    if(!c || !c->goal_id || !c->role[KINOVA_CANCEL]) return 9;
    kinova_joint_id_bytes(request, c->goal_id); memset(length, 0xff, sizeof length);
    return uwvm_transplate_v0_1_0_ros2_action_cancel_own_goal(c->role[KINOVA_CANCEL], 0,
        uwvm_transplate_v0_1_0_address(request), 8, uwvm_transplate_v0_1_0_address(response),
        sizeof response, uwvm_transplate_v0_1_0_address(length));
}
#endif
