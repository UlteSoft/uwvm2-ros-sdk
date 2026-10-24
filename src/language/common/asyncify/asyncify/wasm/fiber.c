/**
 * @file common/asyncify-v1/asyncify/wasm/fiber.c
 * @brief Transfer genuine VM fiber program state using the original Asyncify buffers.
 * @details A single pending destination is consumed by the top-level handler. These operations save locals and
 * control state only; the ucontext caller separately preserves the linear C stack pointer.
 */
/*
 This is a ucontext-like userland context switching API for WebAssembly based on Binaryen's Asyncify.

 * NOTE:
 * This mechanism doesn't take care of stack state. Just save and restore program counter and
 * registers (rephrased as locals by Wasm term). So use-site need to save and restore the C stack pointer.
 * This Asyncify based implementation is not much efficient and will be replaced with future stack-switching
 feature.
 */

#include <stdlib.h>
#include "wasm/fiber.h"
#include "wasm/asyncify.h"

#ifdef RB_WASM_ENABLE_DEBUG_LOG
#include <stdio.h>
#define RB_WASM_DEBUG_LOG(...) fprintf(stderr, __VA_ARGS__)
#else
#define RB_WASM_DEBUG_LOG(...)
#endif

/**
 * @brief Initialize caller-owned storage for one unstarted Asyncify fiber.
 * @details Initialization clears start/rewind flags and points the buffer at its embedded array; it neither
 * allocates nor saves the C stack pointer.
 * @param fcp Exclusive fiber context with embedded spill storage that remains alive while suspended.
 * @param func Borrowed two-argument entry; NULL represents the main context.
 * @param arg0 First opaque borrowed argument retained for the entry.
 * @param arg1 Second opaque borrowed argument retained for the entry.
 */
void rb_wasm_init_context(rb_wasm_fiber_context* fcp, void (*func)(void*, void*), void* arg0, void* arg1)
{
    fcp->asyncify_buf.top = &fcp->asyncify_buf.buffer[0];
    fcp->asyncify_buf.end = &fcp->asyncify_buf.buffer[WASM_FIBER_STACK_BUFFER_SIZE];
    fcp->is_rewinding = false;
    fcp->is_started = false;
    fcp->entry_point = func;
    fcp->arg0 = arg0;
    fcp->arg1 = arg1;
    RB_WASM_DEBUG_LOG("[%s] fcp->asyncify_buf %p\n", __func__, &fcp->asyncify_buf);
}

static rb_wasm_fiber_context* _rb_wasm_active_next_fiber;

/**
 * @brief Record a destination and unwind the currently executing fiber.
 * @details A resumed source stops rewinding and returns. The caller separately saves/restores the linear C stack
 * pointer; this entry owns only Asyncify program state.
 * @param ofcp Actual running fiber context, retained through its later rewind.
 * @param fcp Initialized destination context, retained through the transfer.
 */
void rb_wasm_swapcontext(rb_wasm_fiber_context* ofcp, rb_wasm_fiber_context* fcp)
{
    RB_WASM_DEBUG_LOG("[%s] enter ofcp = %p fcp = %p\n", __func__, ofcp, fcp);
    if (ofcp->is_rewinding)
    {
        asyncify_stop_rewind();
        ofcp->is_rewinding = false;
        return;
    }
    _rb_wasm_active_next_fiber = fcp;
    RB_WASM_DEBUG_LOG("[%s] start unwinding asyncify_buf = %p\n", __func__, &ofcp->asyncify_buf);
    asyncify_start_unwind(&ofcp->asyncify_buf);
}

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
                                  bool* is_new_fiber_started)
{
    rb_wasm_fiber_context* next_fiber;
    if (!_rb_wasm_active_next_fiber)
    {
        RB_WASM_DEBUG_LOG("[%s] no next fiber\n", __func__);
        *is_new_fiber_started = false;
        return NULL;
    }

    next_fiber = _rb_wasm_active_next_fiber;
    _rb_wasm_active_next_fiber = NULL;

    RB_WASM_DEBUG_LOG("[%s] next_fiber->asyncify_buf = %p\n", __func__, &next_fiber->asyncify_buf);

    *new_fiber_entry = next_fiber->entry_point;
    *arg0 = next_fiber->arg0;
    *arg1 = next_fiber->arg1;

    if (!next_fiber->is_started)
    {
        RB_WASM_DEBUG_LOG("[%s] new fiber started\n", __func__);
        // start a new fiber if not started yet.
        next_fiber->is_started = true;
        *is_new_fiber_started = true;
        return NULL;
    }
    else
    {
        RB_WASM_DEBUG_LOG("[%s] resume a fiber\n", __func__);
        // resume a fiber again
        next_fiber->is_rewinding = true;
        *is_new_fiber_started = false;
        return &next_fiber->asyncify_buf;
    }
}
