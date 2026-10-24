/** @file algorithm_wrong.c
 * @brief Negative fixture: actual i64 step signature mismatches main's i32 import.
 * @details This must be rejected before positive communication. Denial itself
 * is still obtained from the module's real ROS imports, never hardcoded.
 */
#include <franka/c/module_probe.h>
static volatile uint32_t initialized;

/** @brief Keep all other required exports valid for the signature-only negative. */
__attribute__((constructor(201))) static void initialize_wrong(void)
{
    initialized = 202;
}

__attribute__((export_name("ready"))) uint32_t franka_wrong_ready(void)
{
    return initialized;
}

__attribute__((export_name("width_echo"))) uintptr_t franka_wrong_width_echo(uintptr_t bits)
{
    return bits;
}

__attribute__((export_name("step"))) uint64_t franka_wrong_step(uint64_t value)
{
    return value * UINT64_C(3) + 1;
}

__attribute__((export_name("denied_probe"))) uint64_t franka_wrong_probe(void)
{
    return franka_module_denied_probe();
}
