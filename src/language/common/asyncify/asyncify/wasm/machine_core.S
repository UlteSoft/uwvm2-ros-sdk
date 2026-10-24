/**
 * @file common/asyncify-v1/asyncify/wasm/machine_core.S
 * @brief Read and restore the Wasm C stack pointer without C prologue adjustments.
 * @details The raw functions access the existing __stack_pointer global. Instruction and assembler-directive line
 * boundaries are preserved verbatim in token order; callers retain all stack ownership.
 */
/* clang-format off */
    # extern int __stack_pointer;
    .globaltype __stack_pointer, i32

    # NOTE: Implement this in raw assembly to avoid stack pointer
    #       operations in C-prologue and epilogue.

    # void *rb_wasm_get_stack_pointer(void);
/**
 * @brief Read the current WebAssembly linear-memory C stack pointer.
 * @details The raw Wasm assembly avoids compiler-generated C prologue/epilogue adjustments.
 * @return Borrowed current stack address; ownership stays with the VM's stack region.
 */
    .section    .text.rb_wasm_get_stack_pointer,"",@
    .globl  rb_wasm_get_stack_pointer
    .type   rb_wasm_get_stack_pointer,@function
rb_wasm_get_stack_pointer:
    .functype   rb_wasm_get_stack_pointer () -> (i32)
    global.get  __stack_pointer
    end_function

    # void rb_wasm_set_stack_pointer(void *sp);
/**
 * @brief Restore the WebAssembly linear-memory C stack pointer directly.
 * @details The assembly entry changes only __stack_pointer. Its caller must already have arranged a valid context
 * and a live destination stack.
 * @param sp Live stack position belonging to the selected context's caller-owned linear stack.
 */
    .section    .text.rb_wasm_set_stack_pointer,"",@
    .globl  rb_wasm_set_stack_pointer
    .type   rb_wasm_set_stack_pointer,@function
rb_wasm_set_stack_pointer:
    .functype   rb_wasm_set_stack_pointer (i32) -> ()
    local.get   0
    global.set  __stack_pointer
    end_function

