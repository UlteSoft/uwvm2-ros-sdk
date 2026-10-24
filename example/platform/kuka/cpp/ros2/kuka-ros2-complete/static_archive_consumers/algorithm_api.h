/** @file algorithm_api.h
 * @brief Scalar C ABI shared by genuine C and C++ archive consumers.
 * @details No pointer or owner crosses a module boundary. uint32_t maps to i32
 * at both requested address widths. Module lifetime still belongs to the loader.
 */
#pragma once
#include <stdint.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Compute the unsigned modular transform 3*value+1 without I/O.
     * @param value Complete unsigned scalar, with modulo-2^32 arithmetic.
     * @return Actual computed scalar; no address or borrowed object is returned.
     */
    uint32_t algorithm_apply(uint32_t value);
#ifdef __cplusplus
}
#endif
