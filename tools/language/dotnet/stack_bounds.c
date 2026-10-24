/**
 * @file stack_bounds.c
 * @brief Adapt Mono Preview 6's legacy thread-stack helpers to LLVM 23 symbols.
 * @details The old runtime assumes linear layout data, stack, heap. Modern
 * WASI Clang selects stack-first, so data_end/heap_base no longer bound the
 * native C stack. The official Mono source itself identifies stack_low/high
 * as its intended replacement. Only the two stack-query helpers are wrapped;
 * allocator, heap, managed execution mode and guest imports remain unchanged.
 */
#include <stdint.h>

/** @brief Standard LLVM linker symbol at the first native stack byte. */
extern unsigned char __stack_low;
/** @brief Standard LLVM linker symbol immediately above the native stack. */
extern unsigned char __stack_high;

/**
 * @brief Return the actual lower stack bound to Mono's legacy stack-base query.
 * @return Aligned usable lower bound after a sixteen-byte null/stack guard.
 * @details Mono's legacy size helper rejects a zero base. The first aligned
 * sixteen bytes are therefore excluded as a guard while the upper bound
 * remains exact. Link with --wrap=get_wasm_data_end. No ownership is transferred.
 */
uintptr_t __wrap_get_wasm_data_end(void)
{
    return (uintptr_t)&__stack_low + 16u;
}

/**
 * @brief Return the actual upper stack bound to Mono's legacy stack-size query.
 * @return Unsigned wasm32 address of __stack_high.
 * @details Link with --wrap=get_wasm_heap_base. This does not change the actual heap base.
 */
uintptr_t __wrap_get_wasm_heap_base(void)
{
    return (uintptr_t)&__stack_high;
}
