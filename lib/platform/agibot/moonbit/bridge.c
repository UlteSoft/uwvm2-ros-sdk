// SPDX-License-Identifier: Apache-2.0
/** @file bridge.c
 * @brief Checked, reference-count-correct MoonBit C-backend guest FFI.
 * @details Link this source with the official MoonBit runtime, original AimDK
 * observation codecs and WASI libc into one Wasm command. No host function
 * beyond the exact ROS/WASI imports is introduced. Borrowed Bytes are never
 * decref'd here; newly returned Bytes begin with the runtime's owned reference.
 */
#include <agibot/shared/observation_json.h>
#include <agibot/shared/command_io.h>
#include <moonbit.h>
#include <stdlib.h>
#include <string.h>
#include <wasi/api.h>

/** @brief Marshal one operation using aligned, disjoint native metadata slots.
 * @param operation Original observation selector 1..3.
 * @param name Borrowed MoonBit UTF-8 alias bytes.
 * @param timeout_ms State deadline 1..30000 ms.
 * @param output Borrowed exclusive writable JSON buffer.
 * @param metadata Borrowed distinct sixteen-byte outcome buffer.
 * @return Original primary errno; no pointer or capability escapes.
 */
uint32_t agibot_moon_observe(uint32_t operation, moonbit_bytes_t name, uint32_t timeout_ms, moonbit_bytes_t output, moonbit_bytes_t metadata)
{
    if(Moonbit_array_length(metadata) != 16 || metadata == name || metadata == output)
    {
        return 22;
    }
    uint32_t written = 0;
    uint32_t cleanup = 0;
    int64_t vendor = 0;
    uint32_t code =
        agibot_json_observe(operation, name, Moonbit_array_length(name), timeout_ms, output, Moonbit_array_length(output), &written, &cleanup, &vendor);
    memcpy(metadata, &written, 4);
    memcpy(metadata + 4, &cleanup, 4);
    memcpy(metadata + 8, &vendor, 8);
    return code;
}

/** @brief Read one complete initialized u32 metadata slot without unaligned access. */
uint32_t agibot_moon_metadata_u32(moonbit_bytes_t metadata, uint32_t index)
{
    uint32_t value = 0;
    if(Moonbit_array_length(metadata) == 16 && index < 2)
    {
        memcpy(&value, metadata + 4 * index, 4);
    }
    return value;
}

/** @brief Preserve all bits of the original signed int64 service code. */
int64_t agibot_moon_metadata_vendor(moonbit_bytes_t metadata)
{
    int64_t value = 0;
    if(Moonbit_array_length(metadata) == 16)
    {
        memcpy(&value, metadata + 8, 8);
    }
    return value;
}

/** @brief Read the real WASI argument count; errors retain their negative errno. */
int32_t agibot_moon_argument_count(void)
{
    __wasi_size_t count = 0;
    __wasi_size_t bytes = 0;
    uint32_t code = __wasi_args_sizes_get(&count, &bytes);
    return code ? -(int32_t)code : count > INT32_MAX ? -90 : (int32_t)count;
}

/** @brief Copy a bounded argument into an owned runtime Bytes object.
 * @param index Zero-based WASI argument index; the SDK alias normally uses one.
 * @return Owned exact bytes, or an empty owned array on failure.
 * @details Temporary argv storage is freed before returning. No native pointer
 * is stored in the returned MoonBit value or retained globally.
 */
moonbit_bytes_t agibot_moon_argument(int32_t index)
{
    __wasi_size_t count = 0;
    __wasi_size_t bytes = 0;
    if(__wasi_args_sizes_get(&count, &bytes) || index < 0 || (uint32_t)index >= count || count > 65536 || bytes > 1048576)
    {
        return moonbit_make_bytes(0, 0);
    }
    char** arguments = calloc(count ? count : 1, sizeof *arguments);
    char* text = malloc(bytes ? bytes : 1);
    moonbit_bytes_t result = NULL;
    if(arguments && text && __wasi_args_get((uint8_t**)arguments, (uint8_t*)text) == 0)
    {
        size_t length = strlen(arguments[index]);
        if(length <= 255)
        {
            result = moonbit_make_bytes((int32_t)length, 0);
            memcpy(result, arguments[index], length);
        }
    }
    free(arguments);
    free(text);
    return result ? result : moonbit_make_bytes(0, 0);
}

/** @brief Emit only initialized bytes; no pointer is retained by the writer. */
uint32_t agibot_moon_write_json(moonbit_bytes_t output, uint32_t written)
{
    return written > (uint32_t)Moonbit_array_length(output) ? 22 : agibot_guest_write_json(output, written);
}

/** @brief End the guest process after explicit SDK cleanup. */
_Noreturn void agibot_moon_exit(uint32_t status)
{
    exit(status > 125 ? 1 : (int)status);
}
