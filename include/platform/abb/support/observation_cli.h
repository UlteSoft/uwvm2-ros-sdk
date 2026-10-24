/**
 * @file observation_cli.h
 * @brief Render complete observation facts and canonical response bytes as JSON.
 * @details This example helper has no ROS transport. wire_hex preserves every
 * byte of a successfully encoded response, including nested SystemState data.
 * A failed stdout operation produces error 5 unless an earlier primary or
 * cleanup error already exists. Call only from a serialized WASI command.
 * @see abb_example_output
 */
#ifndef UWVM_ABB_EXAMPLE_OUTPUT_H
#define UWVM_ABB_EXAMPLE_OUTPUT_H

#include <abb/c/observation.h>
#include <stdio.h>
#include <wasi/api.h>

/**
 * @brief Wait twenty milliseconds using the actual WASI monotonic clock.
 * @return Zero only after one successful clock event; otherwise SDK IO error 5.
 * @details The host must explicitly grant monotonic-clock access. No descriptor,
 * file, background thread, or ROS owner is created. Called only between idle
 * topic polls, with at most 249 pauses in the bounded state example.
 * @see abb_wait_system_state
 */
inline static uint32_t abb_example_wait(void)
{
    __wasi_subscription_t input;
    __wasi_event_t output;
    memset(&input, 0, sizeof input);
    memset(&output, 0, sizeof output);
    __wasi_size_t count = 0;
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = 20000000;
    input.u.u.clock.precision = 1000000;
    if(__wasi_poll_oneoff(&input, &output, 1, &count) || count != 1 || output.error || output.type != __WASI_EVENTTYPE_CLOCK)
    {
        return 5;
    }
    return 0;
}

/**
 * @brief Write an owned observation without dropping independent failure facts.
 * @param[in] facts Initialized report borrowed until return.
 * @param[in] wire Complete canonical response bytes; NULL is permitted at size zero.
 * @param[in] size Active wire byte count, excluding padding and unused capacity.
 * @param[in] encoded Original encoder status; zero if no response was present.
 * @return Process status clamped to 125, preserving operation then cleanup then
 * encode/output failure precedence. A zero return includes a successful flush.
 * @details One JSON line records primary, cleanup, response/rpc presence,
 * original RPC status, required-length presence/value, encoding status, and the
 * full canonical body. No wire bytes are printed when encoding failed.
 * @see abb_observation_status
 */
inline static int abb_example_output(abb_observation const* facts, unsigned char const* wire, size_t size, uint32_t encoded)
{
    uint32_t status = abb_observation_status(facts);
    size_t index;
    int failed = printf("{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%d,"
                        "\"response_present\":%d,\"rpc_present\":%d,\"rpc_status\":%u,"
                        "\"required_present\":%d,\"required\":%llu,\"encoding\":%u,\"wire_hex\":\"",
                        (unsigned)facts->primary,
                        (unsigned)facts->cleanup,
                        facts->cleanup_present,
                        facts->response_present,
                        facts->rpc_present,
                        (unsigned)(facts->rpc_present ? facts->rpc.error : 0),
                        facts->rpc_present && facts->rpc.has_length,
                        (unsigned long long)(facts->rpc_present && facts->rpc.has_length ? facts->rpc.length : 0),
                        (unsigned)encoded) < 0;
    if(!encoded)
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
        status = encoded ? encoded : failed ? 5 : 0;
    }
    return (int)(status > 125 ? 125 : status);
}

#endif
