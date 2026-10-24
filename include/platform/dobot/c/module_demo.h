/**
 * @file module_demo.h
 * @brief Define scalar-only exports between independently owned Wasm module memories.
 * @details Every argument/result is exactly u32/i32 bits. No buffer, capability,
 * object or borrowed linear-memory pointer crosses a module boundary. Serialize
 * observe/read operations; report values belong to the ros_comm module instance.
 */
#pragma once
#include <stdint.h>
#if defined(UWVM_DEMO_MAIN)
# define UWVM_DEMO_IMPORT(module, name) __attribute__((import_module(module), import_name(name)))
#else
# define UWVM_DEMO_IMPORT(module, name)
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Compute an ordinary unsigned transform in the linked real static archive.
     * @param value Exact u32 input. @return Deterministic modulo-2^32 calculation. */
    uint32_t uwvm_demo_core_score(uint32_t value);
    /** @brief Compute from observed source bits through the algorithm module.
     * @param value Complete source bits, not an address. @return Actual calculated u32. */
    UWVM_DEMO_IMPORT("algorithm", "score") uint32_t uwvm_demo_score(uint32_t value);
    /** @brief Attempt one ungranted algorithm-module acquisition without forging an owner.
     * @return Actual refusal13; any unexpected acquisition is closed and reported as22. */
    UWVM_DEMO_IMPORT("algorithm", "denied_probe") uint32_t uwvm_demo_denied_probe(void);
    /** @brief Observe one complete original RobotStatus and close once inside ros_comm.
     * @return Original primary status; cleanup and data presence remain separately readable. */
    UWVM_DEMO_IMPORT("ros_comm", "observe") uint32_t uwvm_demo_observe(void);
    /** @brief Copy the last independent close status as scalar bits. @return Actual cleanup errno. */
    UWVM_DEMO_IMPORT("ros_comm", "cleanup_status") uint32_t uwvm_demo_cleanup(void);
    /** @brief Copy response presence without publishing a fallback value. @return One after full decode, else zero. */
    UWVM_DEMO_IMPORT("ros_comm", "response_present") uint32_t uwvm_demo_present(void);
    /** @brief Copy both original Boolean fields in low bits. @return bit0 is_enable, bit1 is_connected. */
    UWVM_DEMO_IMPORT("ros_comm", "source_bits") uint32_t uwvm_demo_bits(void);
    /** @brief Write actual scalar facts through io's own WASI stream memory.
     * @param primary Original operation errno. @param cleanup Independent close errno.
     * @param present Actual full-record presence. @param bits Original Boolean source fields.
     * @param score Actual algorithm output. @param denied Actual ungranted-module probe status.
     * @return Zero after complete stdout, otherwise5. */
    UWVM_DEMO_IMPORT("io", "emit")
    uint32_t uwvm_demo_emit(uint32_t primary, uint32_t cleanup, uint32_t present, uint32_t bits, uint32_t score, uint32_t denied);
#ifdef __cplusplus
}
#endif
#undef UWVM_DEMO_IMPORT
