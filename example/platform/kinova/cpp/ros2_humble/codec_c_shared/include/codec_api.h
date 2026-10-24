/**
 * @file codec_api.h
 * @brief Transfer complete encoded values through scalar-only module exports.
 * @details Every module owns its buffers and typed value. No pointer, C++ object,
 * memory, ROS handle or permission crosses a separately instantiated Core module.
 */
#pragma once
#include <stdint.h>
#if defined(CODEC_SHARED_IMPORT)
#define CODEC_API(name) __attribute__((import_module("record_codec"), import_name(#name)))
#else
#define CODEC_API(name) __attribute__((visibility("default")))
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Observe the eager initializer before the first library call.
     * @return 101 when the real module initializer has completed, otherwise zero.
     * @details This observation neither initializes the module nor changes state.
     */
    uint32_t record_codec_ready(void) CODEC_API(record_codec_ready);
    /**
     * @brief Start one complete original component in this library's storage.
     * @param component 0 for Goal, 1 for Feedback, or 2 for Result.
     * @return Zero on selection, or 22 for another selector without changing state.
     * @details Call before every value. Previous output becomes unavailable. Calls
     * on the same module are sequential; no pointer or storage ownership is shared.
     */
    uint32_t record_codec_reset(uint32_t component) CODEC_API(record_codec_reset);
    /**
     * @brief Append one byte to this module's bounded canonical input.
     * @param value Integer byte in [0,255].
     * @return Zero after appending, or 22 for an invalid byte or a full buffer.
     * @details The 8581-byte input holds the largest bounded Goal plus one byte
     * for trailing-data rejection. Failure does not append or transfer ownership.
     */
    uint32_t record_codec_push(uint32_t value) CODEC_API(record_codec_push);
    /**
     * @brief Decode and re-encode the selected complete original component.
     * @return Zero for a complete valid value, or 22 for invalid canonical data.
     * @details Reject truncated/trailing data, exceeded deployment bounds, invalid
     * UTF-8/time representations and nonfinite scalars. Only read output after
     * success. Controller feasibility and native ROS transport are outside this call.
     */
    uint32_t record_codec_validate(void) CODEC_API(record_codec_validate);
    /**
     * @brief Read the successful output length in bytes.
     * @return Canonical byte count after successful validation; zero after reset.
     * @details Maximum Goal/Feedback/Result sizes are 8580/4708/264 bytes. Storage
     * remains module-owned and is replaced by the next reset/validation cycle.
     */
    uint32_t record_codec_size(void) CODEC_API(record_codec_size);
    /**
     * @brief Read one byte without exposing this module's memory.
     * @param index Zero-based offset below record_codec_size().
     * @return Byte in [0,255], or UINT32_MAX if the index is outside the output.
     * @details Copy scalar bytes before starting another reset/validation cycle.
     */
    uint32_t record_codec_byte(uint32_t index) CODEC_API(record_codec_byte);
#ifdef __cplusplus
}
#endif
