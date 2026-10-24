/**
 * @file command.h
 * @brief Print complete observation bytes and independent error facts through WASI.
 * @details Output helpers own no ROS capability. The caller completes once-only
 * cleanup before output. A failed write never repeats the native operation.
 */
#ifndef UWVM_VENDOR_CATALOG_COMMAND_H
#define UWVM_VENDOR_CATALOG_COMMAND_H
#include <deep_robotics/support/observation.h>
#include <stdio.h>

/**
 * @brief Emit every validated canonical byte as hexadecimal with complete result facts.
 * @param[in] facts Borrowed initialized report after all native owners have closed.
 * @param[in] wire Complete canonical record, or null only when size is zero.
 * @param size Active canonical byte count; unused inline capacities are excluded.
 * @param encoding Original complete encoder status; nonzero suppresses data output.
 * @return Primary error, then cleanup, encoding, or IO error, clamped to 125.
 * @details Successful zero-length messages remain distinguishable from absent
 * responses. The output format does not hide cleanup failures or print fallback data.
 */
inline static int uwvm_vendor_output(uwvm_vendor_observation const* facts, uint8_t const* wire, size_t size, uint32_t encoding)
{
    if(!facts || (!wire && size))
    {
        return 22;
    }
    uint32_t status = facts->primary ? facts->primary : facts->cleanup;
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
    if(facts->response_present && !encoding)
    {
        for(size_t index = 0; index != size; ++index)
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
