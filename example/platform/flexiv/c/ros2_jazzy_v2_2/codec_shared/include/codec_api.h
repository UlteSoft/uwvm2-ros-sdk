/**
 * @file codec_api.h
 * @brief Transfer complete encoded values through scalar-only module exports.
 * @details Every module owns its buffers and typed value. No pointer, C++ object,
 * memory, ROS handle or permission crosses a separately instantiated Core module.
 */
#pragma once
#include <stdint.h>
#if defined(CODEC_SHARED_IMPORT)
# define CODEC_API(name) __attribute__((import_module("record_codec"), import_name(#name)))
#else
# define CODEC_API(name) __attribute__((visibility("default")))
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Observe eager constructor completion without repairing initialization. */
    uint32_t record_codec_ready(void) CODEC_API(record_codec_ready);
    /** @brief Reset module-owned input/output extents before one complete value. */
    uint32_t record_codec_reset(void) CODEC_API(record_codec_reset);
    /** @brief Append exactly one byte, refusing invalid scalars or bounded overflow. */
    uint32_t record_codec_push(uint32_t value) CODEC_API(record_codec_push);
    /** @brief Decode and re-encode every original field; return zero or original errno. */
    uint32_t record_codec_validate(void) CODEC_API(record_codec_validate);
    /** @brief Return the successful encoded extent, owned exclusively by this module. */
    uint32_t record_codec_size(void) CODEC_API(record_codec_size);
    /** @brief Return one encoded byte or UINT32_MAX for an invalid index. */
    uint32_t record_codec_byte(uint32_t index) CODEC_API(record_codec_byte);
#ifdef __cplusplus
}
#endif
