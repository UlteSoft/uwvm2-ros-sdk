/** @file
 * @brief Counted-byte C boundary to the optional C++20 fast_io component.
 * @details The caller can use C++98 or newer while the implementation requires
 * C++20. No C++ object, allocator or exception crosses this function boundary.
 * @see roswasm_fast_io_stdout_v1
 */
#pragma once
#include <stddef.h>
#include <stdint.h>
/** @brief Write an exact byte range to ordinary standard output.
 * @details The implementation writes synchronously with fast_io::write_all.
 * It does not open a ROS alias, device or file. In a WASI Guest the embedding
 * Host must explicitly provide ordinary stdout; this call grants no fd rights.
 * Output may be partial on failure and is never automatically replayed. With
 * exceptions enabled, caught output failures map to 107. With exceptions
 * disabled, lower-level fatal failures follow fast_io's termination policy.
 * Callers serialize writes when output ordering matters.
 * @param[in] bytes Caller-owned readable range, borrowed only for this call;
 * may be null when length is zero. Embedded zero bytes are written verbatim.
 * @param[in] length Exact byte count within the live source allocation.
 * @return Zero after completion (including an empty write), 22 for null bytes
 * with nonzero length, or 107 for a caught output exception. No exception escapes.
 * @see roswasmcpp::library_encode_string
 */
extern "C" uint32_t roswasm_fast_io_stdout_v1(char const* bytes, size_t length);
