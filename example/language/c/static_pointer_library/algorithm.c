/* SPDX-License-Identifier: Apache-2.0 */
#include "algorithm.h"
uint32_t transform_and_sum(uint32_t *values, size_t length) {
    uint32_t sum = 0;
    for (size_t i = 0; i < length; ++i) {
        values[i] += 1;
        sum += values[i];
    }
    return sum;
}
