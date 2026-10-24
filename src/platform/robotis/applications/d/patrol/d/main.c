/**
 * @file main.c
 * @brief Preserve the original robotis explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Actual WASI startup for the BetterC D application. All application behavior
 * and ROS ownership remain in Patrol.d; this adds no ROS bridge or permission.
 */
#include <stdint.h>

extern uint32_t patrolMain(int argc, char const* const* argv);

int main(int argc, char** argv)
{
    uint32_t code = patrolMain(argc, (char const* const*)argv);
    return (int)(code > 125 ? 125 : code);
}
