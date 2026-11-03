// SPDX-License-Identifier: Apache-2.0
#include "algorithm.hpp"
#include <array>
int main() {
    std::array<std::uint32_t, 4> values{1, 2, 3, 4};
    if (transform_and_sum(values) != 14) return 1;
    if (values.front() != 2 || values.back() != 5) return 2;
    if (transform_and_sum(std::span(values).subspan(4)) != 0) return 3;
    return 0;
}
