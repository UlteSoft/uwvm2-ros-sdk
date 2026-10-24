/** @file main.c
 * @brief Compose three real modules through primitive values and owned tokens.
 * @details Two explicitly requested publication samples aid native discovery;
 * a failed operation is never replayed. Cleanup is observed independently.
 */
#include <preload_api.h>
MODULE_IMPORT("io", "begin") uint32_t io_begin(uint32_t);
MODULE_IMPORT("io", "put") uint32_t io_put(uint32_t, uint32_t, uint32_t);
MODULE_IMPORT("io", "commit") uint32_t io_commit(uint32_t);
MODULE_IMPORT("io", "abort") uint32_t io_abort(uint32_t);
MODULE_IMPORT("io", "wait_ms") uint32_t io_wait_ms(uint32_t);
MODULE_IMPORT("algorithm", "compute") int32_t algorithm_compute(int32_t);
MODULE_IMPORT("ros_comm", "begin") uint32_t ros_begin(void);
MODULE_IMPORT("ros_comm", "send") uint32_t ros_send(int32_t);
MODULE_IMPORT("ros_comm", "end") uint32_t ros_end(void);

/** @brief Copy one bounded caller string byte by byte; retire on either path. */
static uint32_t write_line(char const* text, uint32_t size)
{
    uint32_t token = io_begin(size), error = 0, index;
    if(!token)
    {
        return 22;
    }
    for(index = 0; index != size && !error; ++index)
    {
        error = io_put(token, index, (uint8_t)text[index]);
    }
    if(error)
    {
        (void)io_abort(token);
        return error;
    }
    return io_commit(token);
}
#ifdef PRELOAD_DENIAL_PROBE
MODULE_IMPORT("algorithm", "clock_denial") uint32_t clock_denial(void);
MODULE_IMPORT("algorithm", "random_denial") uint32_t random_denial(void);
MODULE_IMPORT("algorithm", "ros_denial") uint32_t ros_denial(void);
#endif
int main(void)
{
    int32_t result = algorithm_compute(7);
    uint32_t io_error;
    if(result != 42)
    {
        return 1;
    }
#ifdef PRELOAD_DENIAL_PROBE
    if(clock_denial() != 76 || random_denial() != 76 || ros_denial() != 13)
    {
        return 2;
    }
    {
        uint32_t token, next;
        if(io_begin(97) != 0)
        {
            return 3;
        }
        token = io_begin(1);
        if(!token || io_put(token, 1, 0) != 22 || io_put(token, 0, 256) != 22)
        {
            return 3;
        }
        if(io_abort(token) || io_put(token, 0, 0) != 22 || io_commit(token) != 22)
        {
            return 3;
        }
        next = io_begin(1);
        if(!next || next == token || io_put(token, 0, 0) != 22 || io_abort(next))
        {
            return 3;
        }
    }
    {
        char const message[] = "algorithm clock=76 random=76 ros=13\n";
        io_error = write_line(message, sizeof message - 1);
        return io_error ? (int)io_error : 0;
    }
#else
    uint32_t primary, cleanup = 0;
    primary = ros_begin();
    if(!primary)
    {
        primary = io_wait_ms(1000);
        if(!primary)
        {
            primary = ros_send(result);
        }
        if(!primary)
        {
            primary = io_wait_ms(1000);
        }
        if(!primary)
        {
            primary = ros_send(result);
        }
        cleanup = ros_end();
    }
    {
        char const message[] = "algorithm=42 ros=0 cleanup=0\n";
        if(primary || cleanup)
        {
            return (int)(primary ? primary : cleanup);
        }
        io_error = write_line(message, sizeof message - 1);
    }
    return (int)io_error;
#endif
}
