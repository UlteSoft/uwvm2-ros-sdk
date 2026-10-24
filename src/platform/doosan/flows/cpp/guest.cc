/**
 * @file guest.cc
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/* Borrowed C++ facades preserve explicit C ownership and complete values. */
#include <doosan/cpp/state.hpp>

static std::uint32_t read_state(roswasmc_capability const* c, uwvm_doosan_status* v, uwvm_doosan_status_storage*)
{
    return roswasm_doosan::Reader(*c).poll(*v);
}

static std::uint32_t write_command(roswasmc_capability const* c, UWVM_DOOSAN_COMMAND const* v, unsigned char*, size_t)
{
    return roswasm_doosan::Publisher(*c).publish(*v);
}

#define UWVM_DOOSAN_EXAMPLE_POLL(c, v, s) read_state(c, v, s)
#define UWVM_DOOSAN_EXAMPLE_PUBLISH(c, v, b, n) write_command(c, v, b, n)
#include <doosan/flows/c/entry.h>

int main(int argc, char** argv)
{
    return uwvm_doosan_entry(argc, argv);
}
