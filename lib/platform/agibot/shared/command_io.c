// SPDX-License-Identifier: Apache-2.0
/** @file command_io.c
 * @brief Preserve complete guest output and explicit I/O error propagation.
 */
#include <agibot/shared/command_io.h>
#include <stdio.h>

uint32_t agibot_guest_write_json(uint8_t const* bytes, uint32_t length)
{
    if(bytes == NULL || length == 0 || length > 65536)
    {
        return 22;
    }
    if(fwrite(bytes, 1, length, stdout) != length || fputc('\n', stdout) == EOF || fflush(stdout) != 0)
    {
        return 5;
    }
    return 0;
}

uint32_t agibot_guest_usage(void)
{
    return fputs("Expected exactly one granted Agibot alias\n", stderr) < 0 ? 5 : 22;
}

uint32_t agibot_guest_diagnostic(uint32_t error, uint32_t cleanup)
{
    return fprintf(stderr, "Agibot observation failed: %u; close: %u\n", error, cleanup) < 0 ? 5 : 1;
}
