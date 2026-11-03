/* SPDX-License-Identifier: Apache-2.0 */
/* One bounded software-simulation command. No robot, ROS release, resource name,
 * coordinate transform, joint name, calibration, native unit or grant is encoded
 * here. Compile ONCE; adapters must consume the identical resulting Wasm bytes. */
#include <ros/portable/v0_1_0/abi.h>

static int receipt_valid(unsigned char const* receipt, uint64_t length, uint64_t epoch, uint32_t outcome)
{
    if (!upr_frame(receipt, length, 4, UPR_RECEIPT_BYTES) || upr_u32(receipt + 12)
        || upr_u64(receipt + 16) != epoch || upr_u64(receipt + 24) != 1
        || upr_u32(receipt + 32) != outcome || upr_u32(receipt + 36)) return 0;
    for (uint32_t i = 88; i != 96; ++i) if (receipt[i]) return 0;
    return 1;
}

static uint32_t execute(uint64_t handle)
{
    unsigned char descriptor[UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT * UPR_MAX_JOINTS] = {0};
    unsigned char state[UPR_STATE_HEADER + UPR_STATE_JOINT * UPR_MAX_JOINTS] = {0};
    unsigned char command[UPR_COMMAND_HEADER + UPR_COMMAND_JOINT * UPR_MAX_JOINTS] = {0};
    unsigned char receipt[UPR_RECEIPT_BYTES] = {0};
    unsigned char accepted_command_digest[32];
    int64_t target[UPR_MAX_JOINTS]; uint64_t tolerance[UPR_MAX_JOINTS];
    uint64_t length = 0;
    uint32_t status = upr_describe(handle, 0, upr_offset(descriptor), sizeof descriptor, upr_offset(&length));
    if (status) return status;
    if (length < UPR_DESCRIPTOR_HEADER || length > sizeof descriptor) return 22;
    uint32_t n = upr_u32(descriptor + 12);
    if (!n || n > UPR_MAX_JOINTS || !upr_frame(descriptor, length, 1, UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT * n)) return 22;
    uint64_t epoch = upr_u64(descriptor + 16);
    if (!epoch || upr_u32(descriptor + 24) != UPR_REQUIRED_RIGHTS || upr_u32(descriptor + 28) != UPR_SOFTWARE_SIMULATION) return 95;
    length = 0;
    status = upr_read_state(handle, 0, upr_offset(state), sizeof state, upr_offset(&length));
    if (status) return status;
    if (!upr_frame(state, length, 2, UPR_STATE_HEADER + UPR_STATE_JOINT * n)
        || upr_u32(state + 12) != n || upr_u64(state + 16) != epoch) return 22;
    uint64_t sequence = upr_u64(state + 24);
    if (!sequence) return 22;
    for (uint32_t i = 48; i != 64; ++i) if (state[i]) return 22;
    for (uint32_t i = 0; i != n; ++i)
    {
        unsigned char const* d = descriptor + UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT * i;
        unsigned char const* s = state + UPR_STATE_HEADER + UPR_STATE_JOINT * i;
        int64_t lower = upr_i64(d + 8), upper = upr_i64(d + 16), q = upr_i64(s + 8);
        uint64_t step = upr_u64(d + 24); tolerance[i] = upr_u64(d + 32);
        if (upr_u32(d) != i || upr_u32(d + 4) != 1 || upr_u32(s) != i || upr_u32(s + 4) != 1
            || lower < -1000000000 || upper > 1000000000 || lower >= upper || q < lower || q > upper
            || !step || step > 10000 || tolerance[i] > 1000) return 95;
        int64_t room = upper - q;
        if (room) target[i] = q + (room < (int64_t)step ? room : (int64_t)step);
        else
        {
            room = q - lower;
            target[i] = q - (room < (int64_t)step ? room : (int64_t)step);
        }
    }
    uint32_t command_bytes = UPR_COMMAND_HEADER + UPR_COMMAND_JOINT * n;
    upr_header(command, 3, command_bytes, n);
    upr_put64(command + 16, epoch); upr_put64(command + 24, 1); upr_put64(command + 32, sequence);
    for (uint32_t i = 0; i != 32; ++i) command[40 + i] = descriptor[32 + i];
    upr_put64(command + 72, 1000000000); /* Algorithm horizon: one second, host must admit it. */
    for (uint32_t i = 0; i != n; ++i)
    {
        upr_put32(command + UPR_COMMAND_HEADER + UPR_COMMAND_JOINT * i, i);
        upr_put64(command + UPR_COMMAND_HEADER + UPR_COMMAND_JOINT * i + 8, (uint64_t)target[i]);
    }
    length = 0;
    status = upr_submit(handle, 0, upr_offset(command), command_bytes, upr_offset(receipt), sizeof receipt, upr_offset(&length));
    if (status) return status; /* An error/timeout never causes replay or an invented cancellation. */
    if (!receipt_valid(receipt, length, epoch, UPR_ACCEPTED)) return 5;
    for (uint32_t i = 0; i != 32; ++i) accepted_command_digest[i] = receipt[56 + i];
    length = 0;
    status = upr_wait(handle, 1, 0, upr_offset(receipt), sizeof receipt, upr_offset(&length));
    if (status) return status;
    if (!receipt_valid(receipt, length, epoch, UPR_SUCCEEDED) || upr_u64(receipt + 40) <= sequence) return 5;
    for (uint32_t i = 0; i != 32; ++i) if (receipt[56 + i] != accepted_command_digest[i]) return 5;
    uint64_t acknowledged_state = upr_u64(receipt + 40);
    length = 0;
    status = upr_read_state(handle, 0, upr_offset(state), sizeof state, upr_offset(&length));
    if (status) return status;
    if (!upr_frame(state, length, 2, UPR_STATE_HEADER + UPR_STATE_JOINT * n)
        || upr_u32(state + 12) != n || upr_u64(state + 16) != epoch || upr_u64(state + 24) < acknowledged_state) return 5;
    for (uint32_t i = 48; i != 64; ++i) if (state[i]) return 22;
    for (uint32_t i = 0; i != n; ++i)
    {
        unsigned char const* s = state + UPR_STATE_HEADER + UPR_STATE_JOINT * i;
        if (upr_u32(s) != i || upr_u32(s + 4) != 1) return 22;
        int64_t q = upr_i64(s + 8);
        unsigned char const* d = descriptor + UPR_DESCRIPTOR_HEADER + UPR_DESCRIPTOR_JOINT * i;
        if (q < upr_i64(d + 8) || q > upr_i64(d + 16)) return 22;
        int64_t error = q - target[i];
        if (error < 0) error = -error;
        if ((uint64_t)error > tolerance[i]) return 5;
    }
    return 0;
}

int main(void)
{
    static unsigned char const alias[] = "robot";
    uint64_t handle = 0;
    if (upr_abi_version() != 1) return 95;
    uint32_t primary = upr_open(0, upr_offset(alias), sizeof alias - 1, upr_offset(&handle));
    if (primary) return primary < 126 ? (int)primary : 125;
    if (!handle) return 22;
    primary = execute(handle);
    uint32_t cleanup = upr_close(handle); /* One close for the acquired owner, including failure. */
    uint32_t status = primary ? primary : cleanup;
    return status < 126 ? (int)status : 125;
}
