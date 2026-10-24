/**
 * @file common/asyncify-v1/asyncify/wasm/setjmp_core.S
 * @brief Preserve the Wasm C stack pointer around the original Asyncify setjmp entry.
 * @details The wrapper spills its stack pointer in a Wasm local, calls the unchanged capture helper and restores
 * the pointer. Its instruction-line boundaries are significant and retained exactly.
 */
/* clang-format off */
    # extern int _rb_wasm_setjmp_internal(rb_wasm_jmp_buf *env);
    .functype   _rb_wasm_setjmp_internal (i32) -> (i32)
    # extern int __stack_pointer;
    .globaltype     __stack_pointer, i32

    # A wrapper of _rb_wasm_setjmp_internal to save and restore stack pointer
    # This cannot be implemented in C because there is no way to manipulate stack pointer
    # without C-epilogue.

    # extern int _rb_wasm_setjmp(rb_wasm_jmp_buf *env);
/**
 * @brief Capture a jump context while preserving the linear C stack pointer.
 * @details The assembly wrapper saves/restores __stack_pointer around the internal Asyncify operation; do not
 * target an expired C frame.
 * @param env Caller-owned jump context, initialized by rb_wasm_setjmp and kept alive for later longjmp.
 * @return Zero after capture or the later nonzero payload when restored.
 */
    .section    .text._rb_wasm_setjmp,"",@
    .globl      _rb_wasm_setjmp
    .type       _rb_wasm_setjmp,@function
_rb_wasm_setjmp:
    .functype   _rb_wasm_setjmp (i32) -> (i32)
    .local      i32, i32
    # save sp (this local is stored in asyncify stack and restored when rewinding)
    global.get  __stack_pointer
    local.set   1

    local.get   0
    call        _rb_wasm_setjmp_internal

    # restore sp
    local.get   1
    global.set  __stack_pointer
    end_function
