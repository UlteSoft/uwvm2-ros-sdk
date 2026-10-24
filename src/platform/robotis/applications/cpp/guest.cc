/**
 * @file guest.cc
 * @brief Preserve the original robotis explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* Actual typed C++ Reader over the same complete original state. */
#include <robotis/cpp/state.hpp>

static uint32_t read_complete(roswasmc_capability const* cap, uwvm_turtlebot3_state* value, uwvm_turtlebot3_storage*)
{
    roswasm_turtlebot3::Reader reader(*cap);
    return reader.poll(*value);
}

#define UWVM_TURTLEBOT3_EXAMPLE_POLL(c, v, s) read_complete(c, v, s)
#include "../c/entry.h"

int main(int argc, char** argv)
{
    return uwvm_turtlebot3_entry(argc, argv);
}
