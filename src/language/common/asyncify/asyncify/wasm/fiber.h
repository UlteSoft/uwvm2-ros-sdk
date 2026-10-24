/**
 * @file common/asyncify-v1/asyncify/wasm/fiber.h
 * @brief Declare caller-owned VM fiber state and its embedded Asyncify spill storage.
 * @details Entries and opaque arguments remain borrowed from the VM. Suspended contexts must stay alive, and the
 * caller is responsible for saving and restoring the separate linear C stack pointer.
 */
#ifndef RB_WASM_SUPPORT_FIBER_H
#define RB_WASM_SUPPORT_FIBER_H

#include <stdbool.h>

#ifndef WASM_FIBER_STACK_BUFFER_SIZE
#define WASM_FIBER_STACK_BUFFER_SIZE 6144
#endif

struct __rb_wasm_asyncify_fiber_ctx
{
    void* top;
    void* end;
    char buffer[WASM_FIBER_STACK_BUFFER_SIZE];
};

// Fiber execution context needed to perform context switch
typedef struct
{
    // Fiber entry point called when the fiber started for the first time.
    // NULL if the entry point is main
    void (*entry_point)(void*, void*);
    // Opaque argument pointers passed to the entry point function
    void *arg0, *arg1;

    // Internal asyncify buffer space
    struct __rb_wasm_asyncify_fiber_ctx asyncify_buf;

    bool is_rewinding;
    bool is_started;
} rb_wasm_fiber_context;

// Initialize a given fiber context to be ready to pass to `rb_wasm_swapcontext`
/**
 * @brief Initialize caller-owned storage for one unstarted Asyncify fiber.
 * @details Initialization clears start/rewind flags and points the buffer at its embedded array; it neither
 * allocates nor saves the C stack pointer.
 * @param fcp Exclusive fiber context with embedded spill storage that remains alive while suspended.
 * @param func Borrowed two-argument entry; NULL represents the main context.
 * @param arg0 First opaque borrowed argument retained for the entry.
 * @param arg1 Second opaque borrowed argument retained for the entry.
 */
void rb_wasm_init_context(rb_wasm_fiber_context* fcp, void (*func)(void*, void*), void* arg0, void* arg1);

// Swap the execution control with `target_fiber` and save the current context in `old_fiber`
// NOTE: `old_fiber` must be the current executing fiber context
/**
 * @brief Record a destination and unwind the currently executing fiber.
 * @details A resumed source stops rewinding and returns. The caller separately saves/restores the linear C stack
 * pointer; this entry owns only Asyncify program state.
 * @param old_fiber Actual running fiber context, retained through its later rewind.
 * @param target_fiber Initialized destination context, retained through the transfer.
 */
void rb_wasm_swapcontext(rb_wasm_fiber_context* old_fiber, rb_wasm_fiber_context* target_fiber);

// Returns the Asyncify buffer of next fiber if unwound for fiber context switch.
// Used by the top level Asyncify handling in wasm/runtime.c
/**
 * @brief Consume the pending fiber transfer in the top-level VM driver.
 * @details The pending destination pointer is consumed once. For no pending fiber, only the start flag is written;
 * other outputs retain their caller values.
 * @param new_fiber_entry Required output for the destination's borrowed entry function.
 * @param arg0 Required output for its first borrowed entry argument.
 * @param arg1 Required output for its second borrowed entry argument.
 * @param is_new_fiber_started Required output flag: true only when an unstarted destination must be entered
 * directly.
 * @return Borrowed destination buffer for a resumed fiber, or NULL for a new fiber or absent pending transfer.
 */
void* rb_wasm_handle_fiber_unwind(void (**new_fiber_entry)(void*, void*),
                                  void** arg0,
                                  void** arg1,
                                  bool* is_new_fiber_started);

#endif
