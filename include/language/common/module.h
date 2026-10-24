/**
 * @file module.h
 * @brief Typed scalar interface for genuine interpreted Core library instances.
 * @details Define UWVM_LIBRARY_NAMESPACE to an explicit Core preload name when
 * importing this interface. Every instance owns its VM, source and memory; only
 * i32 arguments/results and independent u32 statuses cross the boundary.
 * This experimental profile does not transfer pointers or resource owners.
 */
#ifndef UWVM_GENUINE_SCALAR_MODULE_H
#define UWVM_GENUINE_SCALAR_MODULE_H
#include <stdint.h>
#ifdef UWVM_LIBRARY_NAMESPACE
#define UWVM_LIBRARY_API(name) __attribute__((import_module(UWVM_LIBRARY_NAMESPACE), import_name(name)))
#else
#define UWVM_LIBRARY_API(name)
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Return scalar interface version1 without initializing the VM. */
    UWVM_LIBRARY_API("uwvm_library_abi_version") uint32_t uwvm_library_abi_version(void);
    /** @brief Initialize/evaluate once; zero succeeds, errors never replay source effects. */
    UWVM_LIBRARY_API("uwvm_library_init") uint32_t uwvm_library_init(void);
    /**
     * @brief Call the original source-defined scalar entry.
     * @param value Exact signed i32 input.
     * @return Exact i32 result or zero on failure; always inspect the separate status.
     */
    UWVM_LIBRARY_API("uwvm_library_call_i32") int32_t uwvm_library_call_i32(int32_t value);
    /** @brief Read the latest operation's independent u32 status. */
    UWVM_LIBRARY_API("uwvm_library_status") uint32_t uwvm_library_status(void);
    /** @brief Retire once; later entries/retirements report125, with no resurrection. */
    UWVM_LIBRARY_API("uwvm_library_retire") uint32_t uwvm_library_retire(void);
#ifdef __cplusplus
}
#endif
#undef UWVM_LIBRARY_API
#endif
