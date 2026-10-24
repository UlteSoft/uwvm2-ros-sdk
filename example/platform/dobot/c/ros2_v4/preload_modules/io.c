/** @file io.c
 * @brief Export actual WASI stdout using only io-owned storage and scalar inputs.
 */
#include <dobot/c/module_demo.h>
#include <stdio.h>

__attribute__((export_name("emit"))) uint32_t
    uwvm_demo_emit(uint32_t primary, uint32_t cleanup, uint32_t present, uint32_t bits, uint32_t score, uint32_t denied)
{
    int failed = printf("{\"primary\":%u,\"cleanup\":%u,\"response_present\":%s,\"score\":%u,\"algorithm_denied\":%u,\"wire_hex\":\"",
                        primary,
                        cleanup,
                        present ? "true" : "false",
                        score,
                        denied) < 0;
    if(!failed && present)
        failed = printf("%02x%02x", bits & 1u, (bits >> 1) & 1u) < 0;
    if(!failed)
        failed = puts("\"}") < 0;
    return failed ? 5u : 0u;
}
