// @file library_profile.cpp
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** @file Compile this real codec source in each claimed standard.
 * The external ABI uses fixed scalars and counted storage, never std objects.
 * Including the complete facade also verifies its selected source contract.
 */
#include <platform/ros/cpp/roswasm/library_profile.hpp>
#ifndef ROSWASM_CPP_FREESTANDING
# include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#endif
#include <platform/ros/c/roswasm/codec.h>

extern "C" uint32_t ROSWASM_CPP_PROFILE_FUNCTION(_library_profile)(void)
{
    return ROSWASM_CPP_STANDARD;
}

extern "C" uint32_t ROSWASM_CPP_PROFILE_FUNCTION(_encode_string)(char const* input, size_t length, void* output, size_t capacity, size_t* used)
{
    roswasmc_string value = {input, length};
    return roswasmc_encode_string(value, output, capacity, used);
}
