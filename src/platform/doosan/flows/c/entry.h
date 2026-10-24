/**
 * @file entry.h
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/* Actual finite WASI entry: raw|state|command ALIAS.
 * command reads u32LE size + exact canonical selected complete stop bytes from basic stdin
 * only after admission. No command is synthesized. state writes one full value.
 */
#include <string.h>
#include <wasi/api.h>
#include <doosan/c/state.h>
#ifndef UWVM_DOOSAN_EXAMPLE_POLL
# define UWVM_DOOSAN_EXAMPLE_POLL(c, v, s) uwvm_doosan_poll_status(c, v, s)
# define UWVM_DOOSAN_EXAMPLE_PUBLISH(c, v, b, n) uwvm_doosan_publish_stop(c, v, b, n)
#endif
static uint32_t uwvm_doosan_read(unsigned char* b, size_t n)
{
    size_t i = 0;
    while(i < n)
    {
        __wasi_iovec_t v = {b + i, n - i};
        __wasi_size_t count = 0;
        if(__wasi_fd_read(0, &v, 1, &count) || !count || count > n - i)
            return 22;
        i += count;
    }
    return 0;
}

static int uwvm_doosan_entry(int argc, char** argv)
{
    roswasmc_context context = {0};
    roswasmc_capability cap = {0};
    uwvm_doosan_status state = {0};
    uwvm_doosan_status_storage scratch = {0};
    UWVM_DOOSAN_COMMAND command = {0};
    unsigned char wire[UWVM_DOOSAN_COMMAND_CAPACITY], prefix[4];
    size_t used = 0;
    uint32_t primary = 0, cleanup = 0;
    if(argc != 3 || !argv[2] || !argv[2][0] || strlen(argv[2]) > 255 || (strcmp(argv[1], "raw") && strcmp(argv[1], "state") && strcmp(argv[1], "command")))
        return 22;
    context.backend = UWVM_DOOSAN_BACKEND();
    roswasmc_capability_init(&cap, &context);
    primary = roswasmc_open(&cap, argv[2], strlen(argv[2]));
    if(!primary && !strcmp(argv[1], "state"))
    {
        primary = roswasmc_subscribe(&cap);
        if(!primary)
            primary = UWVM_DOOSAN_EXAMPLE_POLL(&cap, &state, &scratch);
        if(!primary)
            primary = UWVM_DOOSAN_STATUS_ENCODE(&state, scratch.bytes, sizeof scratch.bytes, &used);
        if(!primary)
        {
            __wasi_ciovec_t v = {scratch.bytes, used};
            __wasi_size_t n = 0;
            if(__wasi_fd_write(1, &v, 1, &n) || n != used)
                primary = 5;
        }
    }
    if(!primary && !strcmp(argv[1], "command"))
    {
        primary = uwvm_doosan_read(prefix, 4);
        if(!primary)
        {
            uint32_t n = (uint32_t)prefix[0] | (uint32_t)prefix[1] << 8 | (uint32_t)prefix[2] << 16 | (uint32_t)prefix[3] << 24;
            if(n > sizeof wire)
                primary = 90;
            else
            {
                primary = uwvm_doosan_read(wire, n);
                if(!primary)
                    primary = UWVM_DOOSAN_COMMAND_DECODE(wire, n, &command);
                if(!primary)
                    primary = UWVM_DOOSAN_EXAMPLE_PUBLISH(&cap, &command, wire, sizeof wire);
            }
        }
    }
    if(cap.handle)
        cleanup = roswasmc_close(&cap);
    uint32_t code = primary ? primary : cleanup;
    return code ? (int)(code < 126 ? code : 125) : 0;
}
