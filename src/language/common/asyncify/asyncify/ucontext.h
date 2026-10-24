/**
 * @file common/asyncify-v1/asyncify/ucontext.h
 * @brief Declare the exact caller-owned context layout used by Zend's fiber port.
 * @details Each context embeds its Asyncify spill buffer and borrows its stack region, entry and optional
 * continuation. Stack storage must outlive suspension and this profile accepts only zero-argument entries.
 */
#ifndef UWVM_ASYNCIFY_UCONTEXT_H
#define UWVM_ASYNCIFY_UCONTEXT_H
#include "wasm/fiber.h"
#include <stddef.h>

/**
 * @brief Describe the owning Zend-allocated linear-memory fiber stack.
 */
typedef struct
{
    void* ss_sp;
    size_t ss_size;
    int ss_flags;
} uwvm_stack_t;

/**
 * @brief Retain one complete VM fiber context and exact stack pointer.
 */
typedef struct uwvm_ucontext
{
    uwvm_stack_t uc_stack;
    struct uwvm_ucontext* uc_link;
    rb_wasm_fiber_context fiber;
    void* stack_pointer;
    void (*entry)(void);
} ucontext_t;

/**
 * @brief Initialize an unstarted VM context without acquiring a stack.
 * @details The embedded Asyncify buffer belongs to the context and must outlive any later suspension.
 * @param context Exclusive caller-owned context storage, cleared and initialized in place.
 * @return Zero; the caller must subsequently supply stack storage before makecontext.
 */
int getcontext(ucontext_t* context);
/**
 * @brief Prepare the zero-argument Zend entry on a caller-owned stack.
 * @details The region remains caller-owned and is aligned down to 16 bytes. An invalid count or empty stack
 * aborts; no native thread is created.
 * @param context Exclusive context with a nonempty uc_stack region already supplied by Zend.
 * @param entry Borrowed zero-argument trampoline retained until the context finishes.
 * @param count Must be zero in this selected adapter.
 * @param ... No variadic arguments are consumed; only the zero-argument profile is supported.
 */
void makecontext(ucontext_t* context, void (*entry)(void), int count, ...);
/**
 * @brief Suspend the current VM context and resume a prepared destination.
 * @details Contexts are single-threaded; the caller owns their storage and must not free a suspended stack.
 * @param from Current caller-owned context whose stack pointer and Asyncify locals are saved.
 * @param to Prepared destination context and stack, both alive throughout the transfer.
 * @return Zero when execution resumes in the original context.
 */
int swapcontext(ucontext_t* from, ucontext_t* to);
#endif
