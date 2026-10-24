/**
 * @file embed.h
 * @brief Enter one genuine persistent CRuby VM from its owning Wasm module.
 * @details This experimental C interface belongs to a single module instance.
 * Calls are synchronous and serialized; source/name pointers must address that
 * instance's memory. Independent Core memories cannot exchange these pointers.
 * Each instance initializes once and retires once. A new independent instance
 * is required after retirement. The ordinary Xmake library route is still open.
 */
#ifndef UWVM_SDK_RUBY_EMBED_H
#define UWVM_SDK_RUBY_EMBED_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief Evaluate original UTF-8 Ruby source using the genuine parser and VM.
     * @param source Borrowed readable buffer in the owning module; no embedded NUL.
     * @param length Byte extent in 1..4194304; no terminator is required.
     * @return Zero, invalid input 22, allocation failure 12, condition failure 5,
     * reentry 16, or retired-instance status 125.
     * @details The caller keeps the entire buffer readable until return. This
     * function retains language-level values, not the borrowed source pointer.
     * Failed evaluations and application effects are never automatically retried.
     */
    uint32_t uwvm_ruby_embed_eval(char const* source, size_t length);

    /**
     * @brief Call a real source-defined method with one exact signed i32 argument.
     * @param module Borrowed nonempty constant path, NUL terminated within 256 bytes.
     * @param method Borrowed nonempty method name, NUL terminated within 128 bytes.
     * @param argument Original signed i32 value; no numeric narrowing is performed.
     * @return Exact i32 result, or zero on failure; read last_status after each call.
     * @details Names stay readable through return and belong to the same memory.
     * An exception, wrong result type or out-of-range result reports status 5.
     * The returned scalar does not convey a pointer or capability to another module.
     */
    int32_t uwvm_ruby_embed_call_i32(char const* module, char const* method, int32_t argument);

    /**
     * @brief Read the preceding serialized operation's independent status.
     * @return Unchanged status, or 16 while another entry is active.
     */
    uint32_t uwvm_ruby_embed_last_status(void);

    /**
     * @brief Retire the instance before invoking genuine Ruby cleanup.
     * @return Zero, cleanup failure 5, reentry 16, or 125 after retirement.
     * @details An unused instance retires without initializing a VM. Repeated
     * retirement and subsequent evaluation/calls cannot resurrect the old instance.
     */
    uint32_t uwvm_ruby_embed_retire(void);

    /**
     * @brief Register statically linked genuine Ruby C bindings during VM startup.
     * @return Zero on success; a nonzero result retires the failed VM with status 5.
     * @details The embed source supplies a weak no-op implementation. An explicitly
     * linked strong definition may register native methods through the real Ruby C
     * API. It executes once inside the original VM/Asyncify root, after Uwvm::Native
     * exists. It must not reenter the embedding API or evaluate application effects.
     * Imported peer functions retain their own module identities and permissions.
     * This hook does not imply automatic extraction of a weakly referenced archive.
     */
    uint32_t uwvm_ruby_embed_bindings(void);

#ifdef __cplusplus
}
#endif

#endif
