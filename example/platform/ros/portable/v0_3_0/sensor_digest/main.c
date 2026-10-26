/* SPDX-License-Identifier: Apache-2.0 */
/* Version0.3.0 sensor.frame.integrity.v1: real simulator data flows INTO Wasm.
 * This computes byte integrity, not object detection or camera calibration. */
#include <ros/portable/v0_1_0/abi.h>
#include <inttypes.h>
#include <stdio.h>

static unsigned char frame[1048576 + 96];
static uint32_t digest(uint64_t h)
{
    unsigned char d[96] = {0}; uint64_t len = 0;
    uint32_t e = upr_describe(h, 0, upr_offset(d), sizeof d, upr_offset(&len));
    if (e) return e;
    if (!upr_frame(d, len, 33, 96) || upr_u32(d + 12) || upr_u32(d + 24) != 3 || upr_u32(d + 28) != 1) return 95;
    uint64_t epoch = upr_u64(d + 16), cap = upr_u64(d + 64);
    uint32_t maxw = upr_u32(d + 72), maxh = upr_u32(d + 76), formats = upr_u32(d + 80);
    if (!epoch || !cap || cap > 1048576 || !maxw || maxw > 512 || !maxh || maxh > 512 || !formats || (formats & ~3u)) return 95;
    for (uint32_t i = 84; i != 96; ++i) if (d[i]) return 22;
    len = 0; e = upr_read_state(h, 0, upr_offset(frame), sizeof frame, upr_offset(&len));
    if (e) return e;
    if (len < 96 || len > sizeof frame || !upr_frame(frame, len, 32, (uint32_t)len)
        || upr_u64(frame + 16) != epoch || !upr_u64(frame + 24)) return 22;
    uint32_t bytes = upr_u32(frame + 12), w = upr_u32(frame + 48), height = upr_u32(frame + 52);
    uint32_t stride = upr_u32(frame + 56), format = upr_u32(frame + 60);
    uint32_t channels = format == 1 ? 1 : format == 2 ? 3 : 0;
    if (!channels || !(formats & (1u << (format - 1))) || !w || w > maxw || !height || height > maxh
        || stride < w * channels || (uint64_t)height * stride != bytes || bytes > cap || len != 96 + (uint64_t)bytes) return 22;
    uint32_t hash = UINT32_C(2166136261);
    for (uint32_t i = 0; i != bytes; ++i) hash = (hash ^ frame[96 + i]) * UINT32_C(16777619);
    static char const hex[] = "0123456789abcdef";
    char frame_key[65];
    for (uint32_t i = 0; i != 32; ++i) {
        frame_key[2 * i] = hex[frame[64 + i] >> 4];
        frame_key[2 * i + 1] = hex[frame[64 + i] & 15];
    }
    frame_key[64] = 0;
    int written = printf("{\"family\":\"sensor.frame.integrity.v1\",\"epoch\":\"%" PRIu64 "\",\"sample_sequence\":\"%" PRIu64 "\",\"frame_key_sha256\":\"%s\",\"encoding\":%" PRIu32 ",\"width\":%" PRIu32 ",\"height\":%" PRIu32 ",\"row_stride\":%" PRIu32 ",\"payload_bytes\":%" PRIu32 ",\"fnv1a32\":\"%08" PRIx32 "\"}\n",
        epoch, upr_u64(frame + 24), frame_key, format, w, height, stride, bytes, hash);
    return written < 0 || fflush(stdout) ? 5 : 0;
}

int main(void)
{
    static unsigned char const alias[] = "sensor";
    uint64_t h = 0;
    if (upr_abi_version() != 1) return 95;
    uint32_t e = upr_open(0, upr_offset(alias), sizeof alias - 1, upr_offset(&h));
    if (e) return e < 126 ? (int)e : 125;
    if (!h) return 22;
    e = digest(h); uint32_t close = upr_close(h); e = e ? e : close;
    return e < 126 ? (int)e : 125;
}
