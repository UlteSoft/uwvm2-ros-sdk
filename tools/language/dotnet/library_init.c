/**
 * @file library_init.c
 * @brief Initialize the genuine module-owned Mono runtime before a native export.
 * @details Mono emits this callback inside its real native-to-managed wrapper.
 * The upstream WASM_LIBRARY_MODE initialize_runtime path invokes the actual
 * reactor CRT constructors when needed and loads the embedded AOT assemblies.
 * No loader-specific automatic _initialize convention is assumed here.
 */
#include <stdbool.h>
#include <stdlib.h>

extern int initialize_runtime(void);

/**
 * @brief Complete the original Mono WASI library initialization exactly once.
 * @details A failed or recursive initialization terminates rather than calling
 * managed code against a partial runtime. The route is explicitly single-threaded.
 */
void uwvm_ros_managed_library_initialize(void)
{
    static bool initialized;
    static bool initializing;
    if (initialized)
    {
        return;
    }
    if (initializing)
    {
        abort();
    }
    initializing = true;
    if (initialize_runtime() != 0)
    {
        abort();
    }
    initialized = true;
    initializing = false;
}
