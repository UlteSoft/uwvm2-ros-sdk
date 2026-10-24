/** @file main.c
 * @brief Call separately preloaded io/algorithm/ros_comm modules without sharing pointers.
 */
#define UWVM_DEMO_MAIN
#include <dobot/c/module_demo.h>

int main(void)
{
    uint32_t primary = uwvm_demo_observe(), cleanup = uwvm_demo_cleanup();
    uint32_t present = uwvm_demo_present(), bits = uwvm_demo_bits();
    uint32_t score = present ? uwvm_demo_score(bits) : 0;
    uint32_t denied = uwvm_demo_denied_probe();
    uint32_t output = uwvm_demo_emit(primary, cleanup, present, bits, score, denied);
    uint32_t status = primary ? primary : cleanup ? cleanup : denied != 13 ? 22u : output;
    return (int)(status > 125 ? 125 : status);
}
