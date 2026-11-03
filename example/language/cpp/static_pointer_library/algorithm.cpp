// SPDX-License-Identifier: Apache-2.0
#include "algorithm.hpp"
std::uint32_t transform_and_sum(std::span<std::uint32_t> values) {
    std::uint32_t sum{};
    for (auto &value : values) sum += ++value;
    return sum;
}
