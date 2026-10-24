// SPDX-License-Identifier: Apache-2.0
/** @file wasip1.c
 * @brief Initialize the real MoonBit allocator and terminate genuine guest panics.
 * @details The pinned C backend calls these two runtime entry points. Its
 * desktop env.c also supplies process/environment/terminal APIs outside this
 * synchronous WASI profile. This port initializes the same allocator directly;
 * Agibot argument helpers read actual WASI arguments. No desktop event loop,
 * signal handler, thread pool, backtrace service or native process is started.
 */
#include "moonbit_runtime.h"
#include <stdio.h>
#include <stdlib.h>

/** @brief Initialize the official runtime allocator before generated MoonBit code.
 * @param argc Actual WASI argument count supplied by Clang's command startup.
 * @param argv Borrowed argument vector; used only for structural validation.
 * @details No argument pointer is retained. WASI owns command arguments for the
 * invocation; public SDK helpers copy them into separately owned Bytes values.
 */
void moonbit_runtime_init(int argc, char** argv)
{
    if(argc < 0 || (argc != 0 && argv == NULL)) { abort(); }
    moonbit_allocator_init();
}

/** @brief Terminate after a genuine runtime invariant or allocation failure.
 * @return Never returns; WASI abort traps and outer Instance cleanup retires
 * outstanding resources. No fabricated successful value is substituted.
 */
_Noreturn void moonbit_panic(void)
{
    fflush(stdout);
    fputs("PanicError: MoonBit Wasm runtime failure\n", stderr);
    abort();
}
