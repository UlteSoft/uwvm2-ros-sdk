/** @file algorithm_core.c
 * @brief Actual relocatable C algorithm implementation for archive extraction.
 */
#include <franka/c/module_algorithm.h>
#include <stdio.h>
static volatile uint32_t initialized;

/** @brief Execute as the extracted archive's constructor, before its consumer. */
__attribute__((constructor(101))) static void initialize_archive(void)
{
    if(puts("archive-init") != EOF && fflush(stdout) == 0)
    {
        initialized = 101;
    }
}

uint32_t franka_module_archive_ready(void)
{
    return initialized;
}

uint32_t franka_module_algorithm_core(uint32_t value)
{
    return (value * UINT32_C(1664525) + UINT32_C(1013904223)) ^ UINT32_C(2654435769);
}
