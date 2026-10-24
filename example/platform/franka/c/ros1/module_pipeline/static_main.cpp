/** @file static_main.cpp
 * @brief Genuine C++ consumer of a separately produced C Wasm archive.
 */
#include <franka/c/module_algorithm.h>
#include <array>
#include <charconv>
#include <cinttypes>
#include <cstdint>
#include <cstdio>
#include <cstring>

int main()
{
    std::array<char, 32> input{};
    std::uint32_t value{};
    if(std::puts("static-cpp-main-enter") == EOF || std::fflush(stdout))
    {
        return 5;
    }
    if(franka_module_archive_ready() != 101)
    {
        return 78;
    }
    if(!std::fgets(input.data(), static_cast<int>(input.size()), stdin))
    {
        return 22;
    }
    auto length = std::strlen(input.data());
    if(length && input[length - 1] == '\n')
    {
        --length;
    }
    if(std::getchar() != EOF)
    {
        return 22;
    }
    auto parsed = std::from_chars(input.data(), input.data() + length, value);
    if(parsed.ec != std::errc{} || parsed.ptr != input.data() + length)
    {
        return 22;
    }
    std::printf("%" PRIu32 "\n", franka_module_algorithm_core(value));
    return 0;
}
