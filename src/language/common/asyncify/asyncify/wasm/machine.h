/**
 * @file common/asyncify-v1/asyncify/wasm/machine.h
 * @brief Declare the original VM stack-pointer and conservative-local scan hooks.
 * @details Stack pointers refer to linear-memory regions owned by the VM. Scan callbacks borrow spill ranges;
 * declarations alone do not add a scan implementation, native host stack or allocation.
 */
#ifndef RB_WASM_SUPPORT_MACHINE_H
#define RB_WASM_SUPPORT_MACHINE_H

// Function pointer used as scan callbacks
typedef void (*rb_wasm_scan_func)(void*, void*);

// Scan WebAssembly locals in the all call stack (like registers) spilled by Asyncify
// Used by conservative GC
/**
 * @brief Spill WebAssembly locals for a conservative VM garbage-collection scan.
 * @details The VM top-level handler must cooperate with Asyncify. This header declares the original support entry;
 * it does not supply a second GC implementation.
 * @param scan Borrowed scan callback receiving the live spill range; it must not retain range ownership.
 */
void rb_wasm_scan_locals(rb_wasm_scan_func scan);

// Get base address of userland C-stack memory space in WebAssembly. Used by conservative GC
/**
 * @brief Declare the VM's linear-memory C stack base for conservative scanning.
 * @details This compatibility declaration supplies no allocation and does not expose a host native stack.
 * @return Borrowed stack-base address owned by the running VM.
 */
void* rb_wasm_stack_get_base(void);

// Get the current stack pointer
/**
 * @brief Read the current WebAssembly linear-memory C stack pointer.
 * @details The raw Wasm assembly avoids compiler-generated C prologue/epilogue adjustments.
 * @return Borrowed current stack address; ownership stays with the VM's stack region.
 */
void* rb_wasm_get_stack_pointer(void);

// Set the current stack pointer
/**
 * @brief Restore the WebAssembly linear-memory C stack pointer directly.
 * @details The assembly entry changes only __stack_pointer. Its caller must already have arranged a valid context
 * and a live destination stack.
 * @param sp Live stack position belonging to the selected context's caller-owned linear stack.
 */
void rb_wasm_set_stack_pointer(void* sp);

// Returns the Asyncify buffer of next rewinding if unwound for spilling locals.
// Used by the top level Asyncify handling in wasm/runtime.c
/**
 * @brief Declare the top-level handler for a pending conservative-local scan.
 * @details The declaration alone supplies no scan implementation or host execution path.
 * @return Borrowed Asyncify rewind buffer when the original scan implementation has a pending scan.
 */
void* rb_wasm_handle_scan_unwind(void);

#endif
