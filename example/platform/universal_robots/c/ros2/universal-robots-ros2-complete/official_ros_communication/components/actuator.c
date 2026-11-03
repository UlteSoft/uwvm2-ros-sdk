/* SPDX-License-Identifier: Apache-2.0 */
#include "component_stream.h"
#include <ros/portable/v0_1_0/abi.h>
#include <stdio.h>

static unsigned char descriptor[UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT*UPR_MAX_JOINTS];
static unsigned char state[UPR_STATE_HEADER + UPR_STATE_JOINT*UPR_MAX_JOINTS];
static unsigned char command[UPR_COMMAND_HEADER + UPR_COMMAND_JOINT*UPR_MAX_JOINTS];
static unsigned char accepted[UPR_RECEIPT_BYTES], completed[UPR_RECEIPT_BYTES];
static unsigned char payload[SDK03_PAYLOAD_MAX];
static int64_t targets[UPR_MAX_JOINTS];
static uint64_t tolerances[UPR_MAX_JOINTS];
static uint32_t descriptor_bytes, state_bytes, joint_count, submit_attempted, accepted_receipt_checked, feedback_checked;
static uint64_t epoch, baseline_sequence;

static uint32_t state_shape(void)
{
    if (!upr_frame(state, state_bytes, 2, UPR_STATE_HEADER+UPR_STATE_JOINT*joint_count) ||
        upr_u32(state+12) != joint_count || upr_u64(state+16) != epoch || !upr_u64(state+24)) return 22;
    for (unsigned i = 48; i != 64; ++i) if (state[i]) return 22;
    for (uint32_t i = 0; i != joint_count; ++i)
    {
        unsigned char const* s = state+UPR_STATE_HEADER+UPR_STATE_JOINT*i;
        unsigned char const* d = descriptor+UPR_DESCRIPTOR_HEADER+UPR_DESCRIPTOR_JOINT*i;
        int64_t value = upr_i64(s+8);
        if (upr_u32(s) != i || upr_u32(s+4) != 1 || value < upr_i64(d+8) || value > upr_i64(d+16)) return 22;
    }
    return sdk03_fresh(upr_u64(state+32), upr_u64(state+40));
}
static uint32_t read_state(uint64_t handle)
{
    uint64_t length = 0;
    uint32_t error = upr_read_state(handle, 0, upr_offset(state), sizeof state, upr_offset(&length));
    if (error) return error;
    if (length > sizeof state) return 90;
    state_bytes = (uint32_t)length;
    return state_shape();
}
static int receipt_valid(unsigned char const* bytes, uint64_t length, uint32_t outcome)
{
    if (!upr_frame(bytes, length, 4, UPR_RECEIPT_BYTES) || upr_u32(bytes+12) ||
        upr_u64(bytes+16) != epoch || upr_u64(bytes+24) != 1 ||
        upr_u32(bytes+32) != outcome || upr_u32(bytes+36)) return 0;
    for (unsigned i = 88; i != 96; ++i) if (bytes[i]) return 0;
    return 1;
}
static uint32_t execute(uint64_t handle)
{
    uint64_t length = 0;
    uint32_t error = upr_describe(handle, 0, upr_offset(descriptor), sizeof descriptor, upr_offset(&length));
    if (error) return error;
    if (length < UPR_DESCRIPTOR_HEADER || length > sizeof descriptor) return 22;
    descriptor_bytes = (uint32_t)length; joint_count = upr_u32(descriptor+12);
    if (!joint_count || joint_count > UPR_MAX_JOINTS ||
        !upr_frame(descriptor, length, 1, UPR_DESCRIPTOR_HEADER+UPR_DESCRIPTOR_JOINT*joint_count) ||
        upr_u32(descriptor+24) != UPR_REQUIRED_RIGHTS || upr_u32(descriptor+28) != UPR_SOFTWARE_SIMULATION) return 95;
    epoch = upr_u64(descriptor+16);
    if (!epoch) return 22;
    for (uint32_t i = 0; i != joint_count; ++i)
    {
        unsigned char const* d = descriptor+UPR_DESCRIPTOR_HEADER+UPR_DESCRIPTOR_JOINT*i;
        if (upr_u32(d) != i || upr_u32(d+4) != 1 || upr_i64(d+8) < -1000000000 ||
            upr_i64(d+16) > 1000000000 || upr_i64(d+8) >= upr_i64(d+16) ||
            !upr_u64(d+24) || upr_u64(d+24) > 10000 || upr_u64(d+32) > 1000) return 95;
    }
    error = read_state(handle);
    if (error) return error;
    baseline_sequence = upr_u64(state+24);
    sdk03_put32(payload, descriptor_bytes); sdk03_put32(payload+4, state_bytes);
    memcpy(payload+8, descriptor, descriptor_bytes); memcpy(payload+8+descriptor_bytes, state, state_bytes);
    error = sdk03_send(SDK03_SNAPSHOT, payload, 8+descriptor_bytes+state_bytes);
    if (error) return error;
    unsigned kind = 0; uint32_t command_bytes = 0;
    error = sdk03_receive(&kind, command, sizeof command, &command_bytes);
    if (error) return error;
    if (kind != SDK03_PLAN || !upr_frame(command, command_bytes, 3, UPR_COMMAND_HEADER+UPR_COMMAND_JOINT*joint_count) ||
        upr_u32(command+12) != joint_count || upr_u64(command+16) != epoch || upr_u64(command+24) != 1 ||
        upr_u64(command+32) != baseline_sequence || memcmp(command+40, descriptor+32, 32) ||
        upr_u64(command+72) != UINT64_C(1000000000)) return 22;
    error = sdk03_fresh(upr_u64(state+32), upr_u64(state+40));
    if (error) return error;
    for (uint32_t i = 0; i != joint_count; ++i)
    {
        unsigned char const* c = command+UPR_COMMAND_HEADER+UPR_COMMAND_JOINT*i;
        unsigned char const* d = descriptor+UPR_DESCRIPTOR_HEADER+UPR_DESCRIPTOR_JOINT*i;
        int64_t target = upr_i64(c+8), previous = upr_i64(state+UPR_STATE_HEADER+UPR_STATE_JOINT*i+8);
        if (upr_u32(c) != i || upr_u32(c+4) || target < upr_i64(d+8) || target > upr_i64(d+16)) return 22;
        int64_t delta = target-previous;
        if (delta < 0) delta = -delta;
        if ((uint64_t)delta > upr_u64(d+24)) return 13;
        targets[i] = target; tolerances[i] = upr_u64(d+32);
    }
    length = 0;
    submit_attempted = 1;
    error = upr_submit(handle, 0, upr_offset(command), command_bytes, upr_offset(accepted), sizeof accepted, upr_offset(&length));
    if (error) return error;
    if (!receipt_valid(accepted, length, UPR_ACCEPTED)) return 5;
    accepted_receipt_checked = 1;
    length = 0;
    error = upr_wait(handle, 1, 0, upr_offset(completed), sizeof completed, upr_offset(&length));
    if (error) return error;
    if (!receipt_valid(completed, length, UPR_SUCCEEDED) || upr_u64(completed+40) <= baseline_sequence ||
        memcmp(completed+56, accepted+56, 32)) return 5;
    error = read_state(handle);
    if (error) return error;
    if (upr_u64(state+24) < upr_u64(completed+40)) return 5;
    for (uint32_t i = 0; i != joint_count; ++i)
    {
        int64_t delta = upr_i64(state+UPR_STATE_HEADER+UPR_STATE_JOINT*i+8)-targets[i];
        if (delta < 0) delta = -delta;
        if ((uint64_t)delta > tolerances[i]) return 5;
    }
    feedback_checked = 1;
    return 0;
}

int main(void)
{
    sdk03_stream stream = {0}; uint64_t handle = 0; unsigned acquired = 0;
    static unsigned char const alias[] = "robot";
    uint32_t primary = sdk03_stream_open(&stream);
    if (!primary && upr_abi_version() != 1) primary = 95;
    if (!primary)
    {
        primary = upr_open(0, upr_offset(alias), sizeof alias-1, upr_offset(&handle));
        acquired = !primary && handle;
    }
    if (!primary) primary = handle ? execute(handle) : 22;
    if (acquired)
    {
        uint32_t cleanup = upr_close(handle); /* One close; never replay a command. */
        if (!primary) primary = cleanup;
    }
    if (stream.live == 3)
    {
        uint32_t rbytes = primary ? 0 : UPR_RECEIPT_BYTES, sbytes = primary ? 0 : state_bytes;
        memset(payload, 0, sizeof payload); sdk03_put32(payload, primary);
        sdk03_put32(payload+4, rbytes); sdk03_put32(payload+8, sbytes);
        if (!primary) { memcpy(payload+16, completed, rbytes); memcpy(payload+16+rbytes, state, sbytes); }
        uint32_t send_error = sdk03_send(SDK03_RESULT, payload, 16+rbytes+sbytes);
        if (!primary) primary = send_error;
    }
    primary = sdk03_stream_close(&stream, primary);
    fprintf(stderr, "{\"component\":\"actuator\",\"error\":%u,\"submit-attempted\":%u,\"accepted-receipt-checked\":%u,\"feedback-checked\":%u,\"same-node-isolation-qualified\":false}\n",
            primary, submit_attempted, accepted_receipt_checked, feedback_checked);
    return primary < 126 ? (int)primary : 125;
}
