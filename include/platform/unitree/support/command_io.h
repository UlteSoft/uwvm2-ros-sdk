/**
 * @file command_io.h
 * @brief Supply bounded WASI waiting and complete observation JSON output.
 * @details Helpers perform no ROS operation. The sole distributable remains
 * the compiled Wasm command; logs and deployment data stay external.
 */
#ifndef UWVM_UNITREE_COMMAND_IO_H
#define UWVM_UNITREE_COMMAND_IO_H
#include <unitree/c/observation.h>
#include <stdio.h>
#include <wasi/api.h>

/**
 * @brief Wait twenty milliseconds through the actual granted WASI monotonic clock.
 * @return Zero after exactly one successful clock event; otherwise error 5.
 * @details No descriptor, thread, capability, or hidden ROS retry is created.
 */
inline static uint32_t unitree_command_pause(void)
{
    __wasi_subscription_t input;
    __wasi_event_t output;
    __wasi_size_t ready = 0;
    memset(&input, 0, sizeof input);
    memset(&output, 0, sizeof output);
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = 20000000;
    input.u.u.clock.precision = 1000000;
    if(__wasi_poll_oneoff(&input, &output, 1, &ready) || ready != 1 || output.error || output.type != __WASI_EVENTTYPE_CLOCK)
    {
        return 5;
    }
    return 0;
}

/**
 * @brief Print every validated response byte and all independent error facts.
 * @param[in] facts Initialized report, borrowed through stdout flush.
 * @param[in] wire Complete encoded record; NULL permitted only at size zero.
 * @param[in] size Complete active record length, excluding C layout padding.
 * @param[in] encoding Encoder result; nonzero prevents printing any body bytes.
 * @return Status clamped to 125, with primary then cleanup then encoding/IO precedence.
 * @details JSON wire_hex contains the full canonical record. A short write does
 * not repeat the ROS operation. The caller closes all owners before output.
 */
inline static int unitree_command_output(unitree_observation const* facts, unsigned char const* wire, size_t size, uint32_t encoding)
{
    uint32_t status = unitree_observation_status(facts);
    size_t index;
    int failed =
        printf(
            "{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%d,\"response_present\":%d," "\"rpc_present\":%d,\"rpc_status\":%u,\"polls\":%u,\"required_present\":%d,\"required\":%llu,\"encoding\":%u,\"wire_hex\":\"",
            (unsigned)facts->primary,
            (unsigned)facts->cleanup,
            facts->cleanup_present,
            facts->response_present,
            facts->rpc_present,
            (unsigned)(facts->rpc_present ? facts->rpc.error : 0),
            (unsigned)facts->polls,
            facts->rpc_present && facts->rpc.has_length,
            (unsigned long long)(facts->rpc_present && facts->rpc.has_length ? facts->rpc.length : 0),
            (unsigned)encoding) < 0;
    if(!encoding)
    {
        for(index = 0; index < size; ++index)
        {
            if(printf("%02x", (unsigned)wire[index]) < 0)
            {
                failed = 1;
                break;
            }
        }
    }
    if(puts("\"}") == EOF || fflush(stdout) == EOF)
    {
        failed = 1;
    }
    if(!status)
    {
        status = encoding ? encoding : failed ? 5 : 0;
    }
    return (int)(status > 125 ? 125 : status);
}
#endif
