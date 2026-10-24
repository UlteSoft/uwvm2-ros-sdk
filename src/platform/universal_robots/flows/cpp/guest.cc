/**
 * @file guest.cc
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/* Real typed C++ Reader; every original I/O field is preserved. */
#include <universal_robots/cpp/io.hpp>

static std::uint32_t read_complete(roswasmc_capability const* cap, uwvm_ur_io_state* value, uwvm_ur_storage*)
{
    roswasm_ur::Reader reader(*cap);
    return reader.poll(*value);
}

#define UWVM_UR_EXAMPLE_POLL(c, v, s) read_complete(c, v, s)
#include <universal_robots/flows/c/entry.h>

int main(int argc, char** argv)
{
    return uwvm_ur_entry(argc, argv);
}
