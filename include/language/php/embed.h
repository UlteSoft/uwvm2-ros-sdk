/**
 * @file embed.h
 * @brief Enter one genuine persistent PHP/Zend request in its owning Wasm module.
 * @details This experimental C interface retains one genuine VM/request across
 * synchronous calls. All borrowed pointers belong to the same module memory.
 * Cross-module Core preload interfaces must exchange explicit scalar contracts;
 * a pointer in another memory is not accepted by this interface. Ordinary Xmake
 * shared/static integration and its full acceptance matrix remain open.
 */
#ifndef UWVM_SDK_PHP_EMBED_H
#define UWVM_SDK_PHP_EMBED_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief Evaluate original PHP source in Zend without an opening PHP tag.
     * @param source Borrowed readable bytes in the owning module, without NUL.
     * @param length Byte extent in 1..4194304; a trailing terminator is unnecessary.
     * @return Zero, invalid input 22, condition/startup failure 5, reentry 16,
     * or 125 after the instance is retired.
     * @details The buffer remains readable through return. Only genuine PHP values
     * persist; the borrowed buffer is not retained. No failed effect is replayed.
     */
    uint32_t uwvm_php_embed_eval(char const* source, size_t length);

    /**
     * @brief Call an actual PHP function with one exact signed i32 argument.
     * @param function Borrowed nonempty name, NUL terminated within 256 bytes.
     * @param argument Exact signed i32 value representable by wasm32 zend_long.
     * @return Exact i32 result, or zero on error; always inspect last_status.
     * @details The name remains readable until return. Exceptions, wrong types and
     * out-of-range results report 5. This scalar profile does not round wide values
     * through a double and never returns a peer-memory pointer or resource owner.
     */
    int32_t uwvm_php_embed_call_i32(char const* function, int32_t argument);

    /**
     * @brief Read the preceding serialized operation's independent status.
     * @return Unchanged status, or 16 while another entry is active.
     */
    uint32_t uwvm_php_embed_last_status(void);

    /**
     * @brief Retire once before executing genuine Zend request shutdown.
     * @return Zero, reentry 16, or 125 after retirement.
     * @details An unused instance retires without creating Zend. No later call
     * reinitializes this instance; callers must construct an independent instance.
     */
    uint32_t uwvm_php_embed_retire(void);

    /**
     * @brief Register statically linked genuine Zend functions during VM startup.
     * @return Zero on success; nonzero retires the failed request with status 5.
     * @details A strong explicitly linked definition overrides the weak no-op.
     * Registration runs once under the real Asyncify root after Uwvm Native raw
     * functions exist. Use Zend's original C API and do not reenter this interface
     * or evaluate application effects. Peer imports keep their original module
     * identities and permissions. Weak archive extraction is not promised.
     */
    uint32_t uwvm_php_embed_bindings(void);

#ifdef __cplusplus
}
#endif

#endif
