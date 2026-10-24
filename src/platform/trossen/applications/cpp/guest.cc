/**
 * @file guest.cc
 * @brief Preserve the original trossen explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* Borrowed C++ facades preserve explicit C ownership and complete values. */
#include <trossen/cpp/state.hpp>

static uint32_t read_state(roswasmc_capability const* c, uwvm_trossen_status* v, uwvm_trossen_status_storage*)
{
    return roswasm_trossen::Reader(*c).poll(*v);
}

static uint32_t write_command(roswasmc_capability const* c, UWVM_TROSSEN_COMMAND const* v, unsigned char*, size_t)
{
    return roswasm_trossen::Publisher(*c).publish(*v);
}

#define UWVM_TROSSEN_EXAMPLE_POLL(c, v, s) read_state(c, v, s)
#define UWVM_TROSSEN_EXAMPLE_PUBLISH(c, v, b, n) write_command(c, v, b, n)
#include "../c/entry.h"

int main(int argc, char** argv)
{
    return uwvm_trossen_entry(argc, argv);
}
