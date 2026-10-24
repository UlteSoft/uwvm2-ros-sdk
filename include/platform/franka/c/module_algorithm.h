/** @file module_algorithm.h
 * @brief Scalar C ABI for the real relocatable algorithm archive.
 * @details Every operation uses unsigned modulo-2^32 arithmetic. No pointer,
 * memory ownership, ROS role or additional WASI resource crosses this ABI.
 */
#pragma once
#include <stdint.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Transform actual runtime input with defined unsigned arithmetic.
     * @param value Complete uint32 input bits, without a physical unit.
     * @return Computed uint32 result. This function performs no I/O or allocation.
     */
    uint32_t franka_module_algorithm_core(uint32_t value);
    /** @brief Observe the archive constructor's actual volatile state.
     * @return 101 only after the separately linked archive constructor ran.
     */
    uint32_t franka_module_archive_ready(void);
#ifdef __cplusplus
}
#endif
