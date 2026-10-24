/** @file roswasm_c_ffi.h
 * @brief Exact-width C Foreign Function Interface for source-language bindings.
 * @details Link with the matching generated shim and descriptor inventory.
 * The same numeric ROS argument widths apply to wasm32 and wasm64 guests.
 * Selecting a compiler ABI does not create native ROS authority or resources. */
#ifndef ROSWASM_C_FFI_PRIVATE_H
#define ROSWASM_C_FFI_PRIVATE_H
#include <stdint.h>
#if defined(__cplusplus)
extern "C"
{
#endif
    /** @brief Invoke one operation in this generated private compiler bridge.
     * @details The lexically ordered operation index belongs to this exact generated
     * source/schema pair. It is not a Runtime import ID, a ROS service identifier,
     * a host pointer or an authorization token. Link exactly one selected backend.
     * @param[in] operation Exact index from numeric-inventory.json.
     * @param[in] a0 First original ABI argument, zero-extended to 64 bits.
     * @param[in] a1 Second original ABI argument, zero-extended to 64 bits.
     * @param[in] a2 Third original ABI argument, zero-extended to 64 bits.
     * @param[in] a3 Fourth original ABI argument, zero-extended to 64 bits.
     * @param[in] a4 Fifth original ABI argument, zero-extended to 64 bits.
     * @param[in] a5 Sixth original ABI argument, zero-extended to 64 bits.
     * @param[in] a6 Seventh original ABI argument, zero-extended to 64 bits.
     * @return The original unsigned ABI result. Unknown/absent operations return 95;
     * abi_version returns a version value instead of an errno.
     * @lifetime All spans named by arguments remain stable until synchronous return.
     * @permissions The original exact Host grant is required for every effect.
     * @thread Call only on the admitted single Guest execution thread.
     * @see The selected language's API-CONTRACT.md; numeric-inventory.json.
     */
    uint32_t roswasm_c_ffi_invoke(uint32_t operation, uint64_t a0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6);
#if defined(__cplusplus)
}
#endif
#endif
