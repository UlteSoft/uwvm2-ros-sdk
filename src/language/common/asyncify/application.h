/**
 * @file application.h
 * @brief Reserve one versioned application bundle inside an initialized data segment.
 * @details Xmake patches only this checked byte slot. The genuine interpreter
 * parses and executes the embedded source at runtime; application builds never
 * require a host compiler, host interpreter, package manager or source mounts.
 */
#ifndef UWVM_EMBEDDED_APPLICATION_H
#define UWVM_EMBEDDED_APPLICATION_H
#include <stdint.h>
#define UWVM_APPLICATION_CAPACITY 4194304u

/**
 * @brief Retain the full slot with a nonzero guard and volatile runtime length.
 */
static volatile struct
{
    unsigned char magic[16];
    unsigned char length[4];
    unsigned char source[UWVM_APPLICATION_CAPACITY];
    unsigned char guard;
} application = {{'U', 'W', 'V', 'M', '-', 'S', 'R', 'C', '-', 'A', 'P', 'P', '-', 'v', '1', '!'}, {0}, {0}, 0xa7};

/**
 * @brief Decode a checked little-endian word without pointer aliasing.
 * @param value Four initialized bytes.
 * @return Unsigned exact word.
 */
static inline uint32_t uwvm_load32(unsigned char const volatile* value)
{
    return (uint32_t)value[0] | (uint32_t)value[1] << 8 | (uint32_t)value[2] << 16 | (uint32_t)value[3] << 24;
}
#endif
