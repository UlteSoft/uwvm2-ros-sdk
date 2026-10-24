/**
 * @file common/asyncify-v1/asyncify/runtime.c
 * @brief Dispatch real interpreter entry points through the retained Asyncify state machine.
 * @details The top-level loop distinguishes completed execution, jump restoration and fiber transfer. It owns no
 * host callback and leaves argument and context storage with the VM.
 */
#include "wasm/asyncify.h"
#include "wasm/setjmp.h"
#include "wasm/fiber.h"
#include <stddef.h>

/**
 * @brief Drive a genuine interpreter through Asyncify unwind and rewind cycles.
 * @details The selected single-threaded VM owns all jump/fiber contexts. This driver retains no argument
 * allocation after the VM returns.
 * @param entry Borrowed VM startup function, callable with the supplied WASI argument vector.
 * @param argc Original WASI argument count.
 * @param argv Borrowed original argument vector; ownership remains with the command startup.
 * @return The VM entry status when no unwind is pending, or 22 when an unwind has no recognized owner.
 */
int uwvm_asyncify_start(int (*entry)(int, char**), int argc, char** argv)
{
    int result;
    void (*fiber_entry)(void*, void*) = NULL;
    void *arg0 = NULL, *arg1 = NULL;
    while (1)
    {
        if (fiber_entry != NULL)
        {
            fiber_entry(arg0, arg1);
        }
        else
        {
            result = entry(argc, argv);
        }
        extern void* rb_asyncify_unwind_buf;
        if (rb_asyncify_unwind_buf == NULL)
        {
            return result;
        }
        asyncify_stop_unwind();
        void* buffer = rb_wasm_handle_jmp_unwind();
        if (buffer != NULL)
        {
            asyncify_start_rewind(buffer);
            continue;
        }
        bool starting = false;
        buffer = rb_wasm_handle_fiber_unwind(&fiber_entry, &arg0, &arg1, &starting);
        if (buffer != NULL)
        {
            asyncify_start_rewind(buffer);
        }
        else if (!starting)
        {
            return 22;
        }
    }
}
