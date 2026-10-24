/** @file algorithm.c
 * @brief Preloadable algorithm wrapper with a transitive static dependency.
 * @details Default WASI retains standard streams. No additional resource or
 * ROS grant is requested; denial is measured through this module's own imports.
 */
#define FRANKA_BUILD_ALGORITHM
#include <franka/c/module_pipeline.h>
#include <stdio.h>
static volatile uint32_t initialized;

/** @brief Require the extracted archive constructor before this module's entry. */
__attribute__((constructor(201))) static void initialize_algorithm(void)
{
    if(franka_module_archive_ready() == 101 && puts("algorithm-init") != EOF && fflush(stdout) == 0)
    {
        initialized = 202;
    }
}

__attribute__((export_name("ready"))) uint32_t franka_module_algorithm_ready(void)
{
    return initialized;
}

__attribute__((export_name("width_echo"))) uintptr_t franka_module_width_echo(uintptr_t bits)
{
    return bits;
}

__attribute__((export_name("step"))) uint32_t franka_module_step(uint32_t value)
{
    return franka_module_algorithm_core(value);
}

__attribute__((export_name("denied_probe"))) uint64_t franka_module_algorithm_probe(void)
{
    return franka_module_denied_probe();
}
