/** @file io.c
 * @brief Own a bounded stream buffer; expose no cross-memory pointers.
 * @details Every successful begin returns a new nonzero generation. The caller
 * transfers bytes in order. Commit consumes the token even when fd_write fails.
 */
#include <preload_api.h>
#include <wasi/api.h>
static uint8_t buffer[96];
static uint32_t generation, active, expected, written;

MODULE_EXPORT("begin") uint32_t io_begin(uint32_t size)
{
    if(active || !size || size > sizeof buffer || generation == UINT32_MAX)
    {
        return 0;
    }
    active = ++generation;
    expected = size;
    written = 0;
    return active;
}

MODULE_EXPORT("put") uint32_t io_put(uint32_t token, uint32_t index, uint32_t byte)
{
    if(!active || token != active || index != written || index >= expected || byte > 255)
    {
        return 22;
    }
    buffer[written++] = (uint8_t)byte;
    return 0;
}

MODULE_EXPORT("abort") uint32_t io_abort(uint32_t token)
{
    if(!active || token != active)
    {
        return 22;
    }
    active = 0;
    return 0;
}

MODULE_EXPORT("commit") uint32_t io_commit(uint32_t token)
{
    __wasi_ciovec_t vector;
    __wasi_size_t count = 0;
    __wasi_errno_t error;
    if(!active || token != active || written != expected)
    {
        return 22;
    }
    active = 0;
    vector.buf = buffer;
    vector.buf_len = expected;
    error = __wasi_fd_write(1, &vector, 1, &count);
    return error ? error : count == expected ? 0 : 5;
}

/** @brief Wait through an explicitly granted IO-only monotonic clock. */
MODULE_EXPORT("wait_ms") uint32_t io_wait_ms(uint32_t milliseconds)
{
    __wasi_subscription_t subscription;
    __wasi_event_t event;
    __wasi_size_t count = 0;
    __wasi_errno_t error;
    if(milliseconds > 5000)
    {
        return 22;
    }
    subscription.userdata = 1;
    subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
    subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    subscription.u.u.clock.timeout = (uint64_t)milliseconds * UINT64_C(1000000);
    subscription.u.u.clock.precision = UINT64_C(1000000);
    subscription.u.u.clock.flags = 0;
    error = __wasi_poll_oneoff(&subscription, &event, 1, &count);
    return error ? error : count == 1 ? event.error : 5;
}
