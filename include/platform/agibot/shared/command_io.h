// SPDX-License-Identifier: Apache-2.0
/** @file command_io.h
 * @brief Small WASI command I/O helpers for guest-language FFI examples.
 * @details These functions run inside the final Wasm module and transfer no
 * ownership. They add no transport or native process. Source languages without
 * C variadic interoperability can report the same precise errors through them.
 */
#ifndef UWVM_AGIBOT_SHARED_COMMAND_IO_H
#define UWVM_AGIBOT_SHARED_COMMAND_IO_H
#include <stdint.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Write complete UTF-8 JSON and one newline to guest stdout.
     * @param bytes Borrowed readable span, valid for length bytes until return.
     * @param length Initialized byte count, excluding any NUL terminator.
     * @return Zero after a complete flushed write, otherwise the I/O errno 5.
     */
    uint32_t agibot_guest_write_json(uint8_t const* bytes, uint32_t length);
    /** @brief Report the command's required single capability-alias argument.
     * @return Usage errno 22; an output failure returns I/O errno 5.
     */
    uint32_t agibot_guest_usage(void);
    /** @brief Report both the observation error and independent close outcome.
     * @param error Original observation/codec status, without translation.
     * @param cleanup Independent capability retirement status.
     * @return Application failure 1; an output failure returns I/O errno 5.
     */
    uint32_t agibot_guest_diagnostic(uint32_t error, uint32_t cleanup);
#ifdef __cplusplus
}
#endif
#endif
