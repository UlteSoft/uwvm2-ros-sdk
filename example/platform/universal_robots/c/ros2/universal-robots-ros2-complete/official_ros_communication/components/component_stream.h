/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK03_COMPONENT_STREAM_H
#define SDK03_COMPONENT_STREAM_H
#if !defined(__wasm__)
#error "These application components execute only as genuine Wasm guests"
#endif
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <wasi/api.h>

/* Application payload framing over existing WASIp1 FDs, NOT a common channel
 * ABI or an authority token. A qualified VM/SDK01 adapter must bind each
 * instance's FDs3/4 to its authenticated generation-bound typed copy channels.
 * No private pointer, numeric component ID, grant or owner handle is sent. */
#define SDK03_PAYLOAD_MAX 2048u
#define SDK03_SNAPSHOT 1u
#define SDK03_PLAN 2u
#define SDK03_RESULT 3u
typedef struct { unsigned live; } sdk03_stream;

static uint32_t sdk03_get32(unsigned char const* p)
{
    return (uint32_t)p[0] | (uint32_t)p[1] << 8 | (uint32_t)p[2] << 16 | (uint32_t)p[3] << 24;
}
static void sdk03_put32(unsigned char* p, uint32_t v)
{
    for (unsigned i = 0; i != 4; ++i) p[i] = (unsigned char)(v >> (8*i));
}
static uint32_t sdk03_stream_open(sdk03_stream* stream)
{
    __wasi_fdstat_t info;
    __wasi_errno_t error;
    __wasi_rights_t rights[2] = {__WASI_RIGHTS_FD_READ | __WASI_RIGHTS_POLL_FD_READWRITE,
                               __WASI_RIGHTS_FD_WRITE | __WASI_RIGHTS_POLL_FD_READWRITE};
    stream->live = 0;
    for (unsigned i = 0; i != 2; ++i)
    {
        error = __wasi_fd_fdstat_get((__wasi_fd_t)(3+i), &info);
        if (error) return error;
        if (info.fs_rights_base != rights[i] || info.fs_rights_inheriting ||
            info.fs_flags != __WASI_FDFLAGS_NONBLOCK) return 95;
        stream->live |= 1u << i;
    }
    return 0;
}
static uint32_t sdk03_stream_close(sdk03_stream* stream, uint32_t primary)
{
    for (unsigned i = 0; i != 2; ++i)
        if (stream->live & (1u << i))
        {
            uint32_t error = __wasi_fd_close((__wasi_fd_t)(3+i));
            stream->live &= ~(1u << i);
            if (!primary) primary = error;
        }
    return primary;
}
static uint32_t sdk03_transfer(int writing, unsigned char* bytes, uint32_t length)
{
    uint32_t done = 0;
    /* A malicious/closed/backpressured peer cannot cause unbounded waiting or
     * an operation replay. Each finite transfer has at most 8 one-second waits. */
    for (unsigned attempt = 0; done < length && attempt != 8; ++attempt)
    {
        __wasi_subscription_t subscriptions[2] = {0};
        __wasi_event_t events[2] = {0};
        __wasi_size_t count = 0, moved = 0;
        __wasi_errno_t error;
        subscriptions[0].userdata = 1;
        subscriptions[0].u.tag = writing ? __WASI_EVENTTYPE_FD_WRITE : __WASI_EVENTTYPE_FD_READ;
        if (writing) subscriptions[0].u.u.fd_write.file_descriptor = 4;
        else subscriptions[0].u.u.fd_read.file_descriptor = 3;
        subscriptions[1].userdata = 2;
        subscriptions[1].u.tag = __WASI_EVENTTYPE_CLOCK;
        subscriptions[1].u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
        subscriptions[1].u.u.clock.timeout = UINT64_C(1000000000);
        error = __wasi_poll_oneoff(subscriptions, events, 2, &count);
        if (error == __WASI_ERRNO_INTR) continue;
        if (error) return error;
        if (!count || count > 2) return 5;
        int ready = 0;
        for (__wasi_size_t i = 0; i != count; ++i)
        {
            if (events[i].error) return events[i].error;
            if (events[i].userdata == 2) return 110;
            if (events[i].userdata != 1) return 22;
            ready = 1;
        }
        if (!ready) return 110;
        if (writing)
        {
            __wasi_ciovec_t vector = {bytes + done, length - done};
            error = __wasi_fd_write(4, &vector, 1, &moved);
        }
        else
        {
            __wasi_iovec_t vector = {bytes + done, length - done};
            error = __wasi_fd_read(3, &vector, 1, &moved);
        }
        if (error == __WASI_ERRNO_AGAIN || error == __WASI_ERRNO_INTR) continue;
        if (error) return error;
        if (!moved) return 107;
        if (moved > length - done) return 5;
        done += (uint32_t)moved;
    }
    return done == length ? 0 : 110;
}
static uint32_t sdk03_fresh(uint64_t observed, uint64_t valid_until)
{
    __wasi_timestamp_t now = 0;
    __wasi_errno_t error = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1000, &now);
    if (error) return error;
    return observed && observed <= now && now < valid_until &&
        valid_until - observed <= UINT64_C(250000000) ? 0 : 116;
}
static uint32_t sdk03_receive(unsigned* kind, unsigned char* payload, uint32_t capacity, uint32_t* length)
{
    unsigned char header[16] = {0};
    uint32_t error = sdk03_transfer(0, header, sizeof header);
    if (error) return error;
    uint32_t n = sdk03_get32(header + 8);
    if (memcmp(header, "U3CP", 4) || header[4] != 1 || header[5] || header[7] ||
        header[6] < SDK03_SNAPSHOT || header[6] > SDK03_RESULT || sdk03_get32(header + 12)) return 22;
    if (n > capacity || n > SDK03_PAYLOAD_MAX) return 90;
    error = sdk03_transfer(0, payload, n);
    if (error) return error;
    *kind = header[6]; *length = n;
    return 0;
}
static uint32_t sdk03_send(unsigned kind, unsigned char const* payload, uint32_t length)
{
    unsigned char frame[16 + SDK03_PAYLOAD_MAX] = {0};
    if (kind < SDK03_SNAPSHOT || kind > SDK03_RESULT || length > SDK03_PAYLOAD_MAX) return 22;
    memcpy(frame, "U3CP", 4); frame[4] = 1; frame[6] = (unsigned char)kind;
    sdk03_put32(frame + 8, length); memcpy(frame + 16, payload, length);
    return sdk03_transfer(1, frame, 16 + length);
}
#endif
