/** @file io.c
 * @brief Preloadable WASI stream output module with scalar-only arguments.
 */
#define FRANKA_BUILD_IO
#include <franka/c/module_pipeline.h>
#include <inttypes.h>
#include <stdio.h>
static volatile uint32_t initialized;

/** @brief Observe actual preload initialization without a lazy entry-point repair. */
__attribute__((constructor(201))) static void initialize_io(void)
{
    if(puts("io-init") != EOF && fflush(stdout) == 0)
    {
        initialized = 201;
    }
}

__attribute__((export_name("ready"))) uint32_t franka_module_io_ready(void)
{
    return initialized;
}

__attribute__((export_name("report"))) void franka_module_report(uint32_t length,
                                                                 uint32_t digest,
                                                                 uint32_t value,
                                                                 uint32_t primary,
                                                                 uint32_t cleanup,
                                                                 uint64_t main_probe,
                                                                 uint64_t io_probe,
                                                                 uint64_t algorithm_probe)
{
    printf("bytes=%" PRIu32 " digest=%" PRIu32 " value=%" PRIu32 " primary=%" PRIu32 " cleanup=%" PRIu32 " main_probe=%" PRIu64 " io_probe=%" PRIu64
           " algorithm_probe=%" PRIu64 "\n",
           length,
           digest,
           value,
           primary,
           cleanup,
           main_probe,
           io_probe,
           algorithm_probe);
}

__attribute__((export_name("denied_probe"))) uint64_t franka_module_io_probe(void)
{
    return franka_module_denied_probe();
}
