/* SPDX-License-Identifier: Apache-2.0 */
/* Heading uses6283186 integer ticks per exact turn, converted externally.
 * Version0.3.0 planar.pose.goal.v1 profile: one bounded SE(2) goal, not a motor or
 * gait controller. The host must implement this distinct profile before use. */
#include <ros/portable/v0_1_0/abi.h>

static uint32_t goal(uint64_t h)
{
    unsigned char d[128] = {0}, s[80] = {0}, c[112] = {0}, r[96] = {0}, digest[32];
    uint64_t len = 0;
    uint32_t e = upr_describe(h, 0, upr_offset(d), sizeof d, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(d, len, 48, 128) || upr_u32(d + 12) != 1 || upr_u32(d + 24) != 15 || upr_u32(d + 28) != 1) return 95;
    uint64_t epoch = upr_u64(d + 16), step = upr_u64(d + 96), tolerance = upr_u64(d + 104);
    int64_t xmin = upr_i64(d + 64), xmax = upr_i64(d + 72), ymin = upr_i64(d + 80), ymax = upr_i64(d + 88);
    if (!epoch || !step || step > 100 || tolerance > 20 || upr_u64(d + 112) > 100000 || upr_u64(d + 120)
        || xmin < -1000000000 || xmax > 1000000000 || xmin >= xmax || ymin < -1000000000 || ymax > 1000000000 || ymin >= ymax) return 95;
    len = 0; e = upr_read_state(h, 0, upr_offset(s), sizeof s, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(s, len, 49, 80) || upr_u32(s + 12) != 1 || upr_u64(s + 16) != epoch
        || !upr_u64(s + 24) || upr_u32(s + 72) != 1 || upr_u32(s + 76)) return 22;
    int64_t x = upr_i64(s + 48), y = upr_i64(s + 56), yaw = upr_i64(s + 64);
    if (x < xmin || x > xmax || y < ymin || y > ymax || yaw < -3141593 || yaw > 3141593) return 95;
    uint64_t seq = upr_u64(s + 24);
    int64_t room = xmax - x;
    int64_t target = room ? x + (room < (int64_t)step ? room : (int64_t)step)
        : x - ((x - xmin) < (int64_t)step ? (x - xmin) : (int64_t)step);
    upr_header(c, 50, sizeof c, 1); upr_put64(c + 16, epoch); upr_put64(c + 24, 1); upr_put64(c + 32, seq);
    for (uint32_t i = 0; i != 32; ++i) c[40 + i] = d[32 + i];
    upr_put64(c + 72, 1000000000); upr_put64(c + 80, (uint64_t)target);
    upr_put64(c + 88, (uint64_t)y); upr_put64(c + 96, (uint64_t)yaw);
    len = 0; e = upr_submit(h, 0, upr_offset(c), sizeof c, upr_offset(r), sizeof r, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(r, len, 4, 96) || upr_u32(r + 12) || upr_u64(r + 16) != epoch || upr_u64(r + 24) != 1
        || upr_u32(r + 32) != UPR_ACCEPTED || upr_u32(r + 36) || upr_u64(r + 88)) return 5;
    for (uint32_t i = 0; i != 32; ++i) digest[i] = r[56 + i];
    len = 0; e = upr_wait(h, 1, 0, upr_offset(r), sizeof r, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(r, len, 4, 96) || upr_u32(r + 12) || upr_u64(r + 16) != epoch || upr_u64(r + 24) != 1
        || upr_u32(r + 32) != UPR_SUCCEEDED || upr_u32(r + 36) || upr_u64(r + 40) <= seq || upr_u64(r + 88)) return 5;
    for (uint32_t i = 0; i != 32; ++i) if (r[56 + i] != digest[i]) return 5;
    uint64_t observed = upr_u64(r + 40);
    len = 0; e = upr_read_state(h, 0, upr_offset(s), sizeof s, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(s, len, 49, 80) || upr_u32(s + 12) != 1 || upr_u64(s + 16) != epoch
        || upr_u64(s + 24) < observed || upr_u32(s + 72) != 1 || upr_u32(s + 76)) return 22;
    int64_t a = upr_i64(s + 48), b = upr_i64(s + 56), angle = upr_i64(s + 64);
    if (a < xmin || a > xmax || b < ymin || b > ymax || angle < -3141593 || angle > 3141593) return 22;
    int64_t dx = a - target, dy = b - y, da = angle - yaw;
    if (dx < 0) dx = -dx;
    if (dy < 0) dy = -dy;
    if (da < 0) da = -da;
    if (da > 3141593) da = 6283186 - da;
    return (uint64_t)dx <= tolerance && (uint64_t)dy <= tolerance && (uint64_t)da <= upr_u64(d + 112) ? 0 : 5;
}

int main(void)
{
    static unsigned char const alias[] = "navigation";
    uint64_t h = 0;
    if (upr_abi_version() != 1) return 95;
    uint32_t e = upr_open(0, upr_offset(alias), sizeof alias - 1, upr_offset(&h));
    if (e) return e < 126 ? (int)e : 125;
    if (!h) return 22;
    e = goal(h); uint32_t close = upr_close(h); e = e ? e : close;
    return e < 126 ? (int)e : 125;
}
