/**
 * @file common/asyncify-v1/asyncify/ucontext.c
 * @brief Adapt Zend's zero-argument contexts to the retained Asyncify fiber operations.
 * @details The caller supplies stack regions and context storage. This single-threaded adapter aligns the linear C
 * stack and returns to a live uc_link; no OS thread or signal mask is created.
 */
#include "ucontext.h"
#include "wasm/machine.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/**
 * @brief Track the single-threaded currently executing VM context.
 */
static ucontext_t* active_context;

/**
 * @brief Initialize an unstarted VM context without acquiring a stack.
 * @details The embedded Asyncify buffer belongs to the context and must outlive any later suspension.
 * @param context Exclusive caller-owned context storage, cleared and initialized in place.
 * @return Zero; the caller must subsequently supply stack storage before makecontext.
 */
int getcontext(ucontext_t* context)
{
    memset(context, 0, sizeof(*context));
    rb_wasm_init_context(&context->fiber, NULL, NULL, NULL);
    return 0;
}

/**
 * @brief Enter a prepared Zend trampoline on its aligned linear-memory stack.
 * @details If the entry returns, control transfers to uc_link when present; otherwise the unchanged implementation
 * aborts.
 * @param opaque Borrowed owning ucontext_t, retained throughout the fiber activation.
 * @param unused Unused upstream callback argument; no storage is accessed.
 */
static void fiber_entry(void* opaque, void* unused)
{
    (void)unused;
    ucontext_t* context = opaque;
    rb_wasm_set_stack_pointer(context->stack_pointer);
    context->entry();
    if (context->uc_link != NULL)
    {
        swapcontext(context, context->uc_link);
    }
    abort();
}

/**
 * @brief Prepare the zero-argument Zend entry on a caller-owned stack.
 * @details The region remains caller-owned and is aligned down to 16 bytes. An invalid count or empty stack
 * aborts; no native thread is created.
 * @param context Exclusive context with a nonempty uc_stack region already supplied by Zend.
 * @param entry Borrowed zero-argument trampoline retained until the context finishes.
 * @param count Must be zero in this selected adapter.
 * @param ... No variadic arguments are consumed; only the zero-argument profile is supported.
 */
void makecontext(ucontext_t* context, void (*entry)(void), int count, ...)
{
    if (count != 0 || context->uc_stack.ss_sp == NULL || context->uc_stack.ss_size == 0)
    {
        abort();
    }
    context->stack_pointer = (void*)(((uintptr_t)context->uc_stack.ss_sp + context->uc_stack.ss_size) & ~(uintptr_t)15);
    context->entry = entry;
    rb_wasm_init_context(&context->fiber, fiber_entry, context, NULL);
}

/**
 * @brief Suspend the current VM context and resume a prepared destination.
 * @details Contexts are single-threaded; the caller owns their storage and must not free a suspended stack.
 * @param from Current caller-owned context whose stack pointer and Asyncify locals are saved.
 * @param to Prepared destination context and stack, both alive throughout the transfer.
 * @return Zero when execution resumes in the original context.
 */
int swapcontext(ucontext_t* from, ucontext_t* to)
{
    if (active_context == NULL)
    {
        getcontext(from);
        from->fiber.is_started = true;
    }
    from->stack_pointer = rb_wasm_get_stack_pointer();
    active_context = to;
    rb_wasm_swapcontext(&from->fiber, &to->fiber);
    rb_wasm_set_stack_pointer(from->stack_pointer);
    active_context = from;
    return 0;
}
