/** @file algorithm.c
 * @brief Real archive member and shared-module scalar computation.
 * @details This source makes no resource or ROS call. Default WASI remains
 * available to the shared module; no additional grant is requested here.
 */
#include "algorithm_api.h"

/** @brief Compute a scalar result without acquiring resource authority.
 * @param value Input interpreted with defined unsigned arithmetic.
 * @return Three times the input plus one, modulo 2^32.
 */
__attribute__((export_name("algorithm_apply"))) uint32_t algorithm_apply(uint32_t value)
{
    return value * UINT32_C(3) + UINT32_C(1);
}
