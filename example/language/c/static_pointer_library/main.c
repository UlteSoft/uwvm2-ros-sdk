/* SPDX-License-Identifier: Apache-2.0 */
#include "algorithm.h"
int main(void) {
    uint32_t values[] = {1, 2, 3, 4};
    if (transform_and_sum(values, 4) != 14) return 1;
    if (values[0] != 2 || values[3] != 5) return 2;
    if (transform_and_sum(values + 4, 0) != 0) return 3;
    return 0;
}
