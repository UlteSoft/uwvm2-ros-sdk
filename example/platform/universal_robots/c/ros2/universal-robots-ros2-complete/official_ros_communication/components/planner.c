/* SPDX-License-Identifier: Apache-2.0 */
#include "component_stream.h"
#include "planner_kernel.h"
#include <ros/portable/v0_1_0/abi.h>
#include <stdio.h>

static unsigned char payload[SDK03_PAYLOAD_MAX], command[UPR_COMMAND_HEADER + UPR_COMMAND_JOINT * UPR_MAX_JOINTS];
static sdk03_joint_limit limits[SDK03_MAX_JOINTS];
static int64_t initial[SDK03_MAX_JOINTS], target[SDK03_MAX_JOINTS];

static uint32_t plan(void)
{
    static unsigned char const alias[] = "robot";
    uint64_t denied_slot = UINT64_C(0x1122334455667788);
    if (upr_abi_version() != 1) return 95;
    uint32_t error = upr_open(0, upr_offset(alias), sizeof alias - 1, upr_offset(&denied_slot));
    if (error != 13 || denied_slot != UINT64_C(0x1122334455667788))
    {
        if (!error && denied_slot != UINT64_C(0x1122334455667788) && denied_slot) (void)upr_close(denied_slot);
        return 95;
    }
    fputs("{\"component\":\"planner\",\"phase\":\"await-snapshot\",\"ROS-open-denied\":true}\n", stderr);
    unsigned kind = 0; uint32_t length = 0;
    error = sdk03_receive(&kind, payload, sizeof payload, &length);
    if (error) return error;
    if (kind == SDK03_RESULT)
        return length == 16 && sdk03_get32(payload) && !sdk03_get32(payload+4) &&
            !sdk03_get32(payload+8) && !sdk03_get32(payload+12) ? sdk03_get32(payload) : 22;
    if (kind != SDK03_SNAPSHOT || length < 8) return 22;
    uint32_t dbytes = sdk03_get32(payload), sbytes = sdk03_get32(payload + 4);
    if (dbytes > length - 8 || sbytes != length - 8 - dbytes) return 22;
    unsigned char const* descriptor = payload + 8;
    unsigned char const* state = descriptor + dbytes;
    if (dbytes < UPR_DESCRIPTOR_HEADER || sbytes < UPR_STATE_HEADER) return 22;
    uint32_t n = upr_u32(descriptor + 12);
    if (!n || n > SDK03_MAX_JOINTS ||
        !upr_frame(descriptor, dbytes, 1, UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT*n) ||
        !upr_frame(state, sbytes, 2, UPR_STATE_HEADER + UPR_STATE_JOINT*n) || upr_u32(state + 12) != n ||
        upr_u32(descriptor + 24) != UPR_REQUIRED_RIGHTS || upr_u32(descriptor + 28) != UPR_SOFTWARE_SIMULATION) return 22;
    uint64_t epoch = upr_u64(descriptor + 16), sequence = upr_u64(state + 24);
    if (!epoch || !sequence || upr_u64(state + 16) != epoch) return 22;
    error = sdk03_fresh(upr_u64(state+32), upr_u64(state+40));
    if (error) return error;
    for (unsigned i = 48; i != 64; ++i) if (state[i]) return 22;
    for (uint32_t i = 0; i != n; ++i)
    {
        unsigned char const* d = descriptor + UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT*i;
        unsigned char const* s = state + UPR_STATE_HEADER + UPR_STATE_JOINT*i;
        if (upr_u32(d) != i || upr_u32(d + 4) != 1 || upr_u32(s) != i || upr_u32(s + 4) != 1) return 22;
        limits[i] = (sdk03_joint_limit){upr_i64(d+8), upr_i64(d+16), upr_u64(d+24), upr_u64(d+32)};
        initial[i] = upr_i64(s+8);
    }
    error = sdk03_bounded_plan(n, limits, initial, target);
    if (error) return error;
    uint32_t command_bytes = UPR_COMMAND_HEADER + UPR_COMMAND_JOINT*n;
    upr_header(command, 3, command_bytes, n); upr_put64(command+16, epoch);
    upr_put64(command+24, 1); upr_put64(command+32, sequence);
    memcpy(command+40, descriptor+32, 32); upr_put64(command+72, UINT64_C(1000000000));
    for (uint32_t i = 0; i != n; ++i)
    {
        upr_put32(command+UPR_COMMAND_HEADER+UPR_COMMAND_JOINT*i, i);
        upr_put64(command+UPR_COMMAND_HEADER+UPR_COMMAND_JOINT*i+8, (uint64_t)target[i]);
    }
    error = sdk03_send(SDK03_PLAN, command, command_bytes);
    if (error) return error;
    error = sdk03_receive(&kind, payload, sizeof payload, &length);
    if (error) return error;
    if (kind != SDK03_RESULT || length < 16 || sdk03_get32(payload+12)) return 22;
    uint32_t primary = sdk03_get32(payload), rbytes = sdk03_get32(payload+4);
    sbytes = sdk03_get32(payload+8);
    if (rbytes > length-16 || sbytes != length-16-rbytes) return 22;
    if (primary) return (!rbytes && !sbytes) ? primary : 22;
    unsigned char const* receipt = payload+16;
    state = receipt+rbytes;
    if (rbytes != UPR_RECEIPT_BYTES || !upr_frame(receipt, rbytes, 4, UPR_RECEIPT_BYTES) ||
        upr_u64(receipt+16) != epoch || upr_u64(receipt+24) != 1 || upr_u32(receipt+32) != UPR_SUCCEEDED ||
        upr_u32(receipt+12) || upr_u32(receipt+36) || upr_u64(receipt+40) <= sequence ||
        !upr_frame(state, sbytes, 2, UPR_STATE_HEADER+UPR_STATE_JOINT*n) || upr_u32(state+12) != n ||
        upr_u64(state+16) != epoch || upr_u64(state+24) < upr_u64(receipt+40)) return 5;
    for (unsigned i = 88; i != 96; ++i) if (receipt[i]) return 22;
    for (unsigned i = 48; i != 64; ++i) if (state[i]) return 22;
    error = sdk03_fresh(upr_u64(state+32), upr_u64(state+40));
    if (error) return error;
    for (uint32_t i = 0; i != n; ++i)
    {
        unsigned char const* s = state+UPR_STATE_HEADER+UPR_STATE_JOINT*i;
        int64_t value = upr_i64(s+8);
        if (upr_u32(s) != i || upr_u32(s+4) != 1 || value < limits[i].lower || value > limits[i].upper ||
            limits[i].lower < -1000000000 || limits[i].upper > 1000000000) return 5;
        int64_t delta = value-target[i];
        if (delta < 0) delta = -delta;
        if ((uint64_t)delta > limits[i].tolerance) return 5;
    }
    return 0;
}

int main(void)
{
    sdk03_stream stream = {0};
    uint32_t error = sdk03_stream_open(&stream);
    if (!error) error = plan();
    error = sdk03_stream_close(&stream, error);
    fprintf(stderr, "{\"component\":\"planner\",\"error\":%u,\"same-node-isolation-qualified\":false}\n", error);
    return error < 126 ? (int)error : 125;
}
