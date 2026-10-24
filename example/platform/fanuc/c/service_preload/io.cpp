/**
 * @file io.cpp
 * @brief Export a genuine C++ shared Wasm with its own WASI stream binding.
 * @details Only scalars cross the C ABI. Initialization and stdout use this
 * module's own memory and default basic streams. The module has no ROS grant.
 */
#include <cstdint>
#include <cstdio>
#include <ros2/c/roswasm/ros2.h>

namespace
{
    std::uint32_t initialized;

    /** @brief Make the public shared-module constructor observable. */
    __attribute__((constructor)) void initialize_io()
    { initialized = 29; }
}  // namespace

/**
 * @brief Exercise the IO module's explicitly ungranted ROS binding.
 * @return Actual open denial13; an unexpected owner is checked and closed.
 */
extern "C" __attribute__((visibility("default"))) std::uint32_t payload_io_denial()
{
    roswasmc_context context{roswasmc_ros2_backend()};
    roswasmc_capability owner{};
    roswasmc_capability_init(&owner, &context);
    auto error = roswasmc_open(&owner, "sample", 6);
    if(!error)
    {
        auto const cleanup = roswasmc_close(&owner);
        error = cleanup ? cleanup : 65;
    }
    return error;
}

/**
 * @brief Write an actual copied-wire checksum using this module's WASI stdout.
 * @param checksum Scalar digest of canonical bytes copied by the C main.
 * @return Digest plus constructor value29, or UINT32_MAX on stream failure.
 */
extern "C" __attribute__((visibility("default"))) std::uint32_t payload_io_write(std::uint32_t checksum)
{
    auto const result = checksum + initialized;
    if(std::printf("payload_io_cpp=%u\n", static_cast<unsigned>(result)) < 0 || std::fflush(stdout)) { return UINT32_MAX; }
    return result;
}
