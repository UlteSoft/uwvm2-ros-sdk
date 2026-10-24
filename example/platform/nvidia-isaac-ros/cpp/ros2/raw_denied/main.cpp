/** Raw numeric Core ABI capability attempt with unchanged output sentinel. */
#include <array>
#include <cstdint>
#include <ros2/c/roswasm/abi/ros2.h>

/**
 * @brief Verify a real ROS2 alias open is denied without modifying its sentinel.
 * @details Calls the actual numeric Core imports, expecting error 13 and all
 * eight output bytes unchanged. Unexpected success attempts actual handle close
 * before returning failure. Requires the wasm32 command C++20+ provider and an
 * empty-authority actual Runtime under finite outer ownership; grants no rights.
 * @return 0 for complete expected denial, 95 for ABI mismatch, otherwise 22.
 * @see uwvm_ros2_capability_open
 * @see README.xmake.md
 */
int main()
{
    if(uwvm_ros2_abi_version() != 1)
        return 95;
    constexpr char alias[]{"nvidia-apriltags"};
    std::array<unsigned char, 8> out{};
    out.fill(0xff);
    auto error = uwvm_ros2_capability_open(0,
                                           static_cast<std::uint64_t>(reinterpret_cast<std::uintptr_t>(alias)),
                                           sizeof(alias) - 1,
                                           static_cast<std::uint64_t>(reinterpret_cast<std::uintptr_t>(out.data())));
    if(error == 13)
    {
        for(auto b: out)
            if(b != 0xff)
                return 22;
        return 0;
    }
    if(!error)
    {
        std::uint64_t handle{};
        for(unsigned i{}; i < 8; ++i)
            handle |= std::uint64_t{out[i]} << (i * 8);
        if(handle && handle != UINT64_MAX)
            (void)uwvm_ros2_capability_close(handle);
    }
    return 22;
}
