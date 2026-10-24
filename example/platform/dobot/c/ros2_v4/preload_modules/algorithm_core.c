/** @file algorithm_core.c
 * @brief Supply a real separately compiled Wasm archive member used by algorithm.
 * @details Unsigned arithmetic is defined modulo2^32; no resource or ROS import occurs.
 */
#include <dobot/c/module_demo.h>

uint32_t uwvm_demo_core_score(uint32_t value)
{
    uint32_t rotated = (value << 13) | (value >> 19);
    return (value * UINT32_C(1664525) + UINT32_C(1013904223)) ^ rotated;
}
