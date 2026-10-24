/** @file archive_consumer.cpp
 * @brief Genuine C++ consumer of the C-produced scalar Wasm archive.
 * @details extern C is supplied by the public header. No pointer, standard
 * library object, allocator or exception crosses the language boundary.
 */
#include "algorithm_api.h"
#include <cstdio>

/** @brief Check the C archive through this genuine language frontend.
 * @return Zero for the expected result, 5 for output failure, or 22 for mismatch.
 */
int main()
{
    auto result = algorithm_apply(7);
    if(std::printf("{\"archive_result\":%u}\n", result) < 0)
    {
        return 5;
    }
    return result == 22 ? 0 : 22;
}
