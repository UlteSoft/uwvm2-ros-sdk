/** @file
 * @brief Explicit profile-specific boundary for the optional C++ source library.
 * @details Link library_profile.cpp compiled for the same selected standard and
 * coherent toolchain. Only counted storage and fixed scalar results cross this
 * boundary; standard-library objects and exceptions do not cross it.
 * @see roswasmcpp::library_profile
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <stddef.h>
#include <stdint.h>
#define ROSWASM_CPP_JOIN_I(a, b) a##b
#define ROSWASM_CPP_JOIN(a, b) ROSWASM_CPP_JOIN_I(a, b)
#define ROSWASM_CPP_PROFILE_FUNCTION_I(n, s) ROSWASM_CPP_JOIN(ROSWASM_CPP_JOIN(roswasm_cpp, s), n)
#define ROSWASM_CPP_PROFILE_FUNCTION(n) ROSWASM_CPP_PROFILE_FUNCTION_I(n, ROSWASM_CPP_STANDARD)
extern "C"
{
    /** @brief Return the compiled library's standard selector.
     * @details The symbol name embeds ROSWASM_CPP_STANDARD. A missing or mismatched
     * source library fails at link time. This query allocates nothing, imports no
     * Host operation and is safe for concurrent calls.
     * @return One of 98, 3, 11, 14, 17, 20, 23 or 26; 3 means C++03 and 26 is draft.
     * @see roswasmcpp::library_profile
     */
    uint32_t ROSWASM_CPP_PROFILE_FUNCTION(_library_profile)(void);
    /** @brief Encode the canonical counted String representation into caller storage.
     * @details Delegates to roswasmc_encode_string. Input and output are borrowed for
     * this synchronous call. Storage must not overlap. The output may change on a
     * failed encoding; used changes only on success. No Host permission, retry or
     * internal synchronization is involved; separate buffers may be used concurrently.
     * @param[in] input Exactly length readable bytes; null is allowed for zero length.
     * @param[in] length UTF-8 byte count without a terminator, at most UWVM_ROS_U32_MAX.
     * @param[out] output Writable capacity-byte range; a nonempty result requires storage.
     * @param[in] capacity Output capacity in bytes; a canonical String needs length + 4.
     * @param[in,out] used Nonnull output count; unchanged on failure.
     * @return Zero on success or UWVM_ROS_INVALID for invalid storage, malformed
     * UTF-8, an excessive canonical size or insufficient destination capacity.
     * @see roswasmc_encode_string
     */
    uint32_t ROSWASM_CPP_PROFILE_FUNCTION(_encode_string)(char const* input, size_t length, void* output, size_t capacity, size_t* used);
}

namespace roswasmcpp
{
    /** @brief Query the linked C++ source library's standard contract.
     * @details Calls the selected profile-specific C symbol. This is a link/profile
     * witness, not a query for compiler features or a grant of Guest authority.
     * It performs no allocation, retry, synchronization or Host import.
     * @return The library's standard selector, with 3 identifying C++03 and 26 draft.
     * @see roswasmcpp::library_encode_string
     */
    inline uint32_t library_profile()
    {
        return ROSWASM_CPP_PROFILE_FUNCTION(_library_profile)();
    }

    /** @brief Encode a counted String using the optional compiled source library.
     * @details Writes the canonical 4-byte little-endian byte count followed by text.
     * Buffers are caller-owned and borrowed only for the call; they must not overlap.
     * The used count is transactional, but scratch output is not. No ROS alias or
     * other Host permission is required. Concurrent calls need independent writable
     * buffers. The library and caller must use the same selected C++ profile.
     * @param[in] text Exactly size readable bytes; null is allowed when size is zero.
     * @param[in] size UTF-8 byte count without a terminator, at most UWVM_ROS_U32_MAX.
     * @param[out] output Writable capacity-byte destination.
     * @param[in] capacity Destination size in bytes; must hold size + 4 for success.
     * @param[in,out] used Receives the encoded byte count on success; unchanged on failure.
     * @return Zero or UWVM_ROS_INVALID for invalid pointers, malformed UTF-8,
     * insufficient capacity or an excessive canonical size.
     * @see roswasmc_encode_string
     */
    inline uint32_t library_encode_string(char const* text, size_t size, void* output, size_t capacity, size_t& used)
    {
        return ROSWASM_CPP_PROFILE_FUNCTION(_encode_string)(text, size, output, capacity, &used);
    }
}  // namespace roswasmcpp
#ifdef ROSWASM_CPP_REQUIRE_LIBRARY
namespace roswasmcpp
{
    namespace detail
    {
        /* Dynamic initialization deliberately references the selected external symbol
         * in every linked translation unit opting into the compiled-library target. */
        struct ProfileLink
        {
            ProfileLink()
            {
                (void)ROSWASM_CPP_PROFILE_FUNCTION(_library_profile)();
            }
        };

        static ProfileLink profile_link;
    }  // namespace detail
}  // namespace roswasmcpp
#endif
