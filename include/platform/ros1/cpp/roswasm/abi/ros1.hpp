/** @file
 * @brief Public entry for the complete stable ROS 1 abi.hpp API.
 * @details Selects the configured C++98/03/11/14/17 portable or C++20+ hosted
 * raw capability spelling. Keep the installed canonical include layout intact;
 * the assembler rebinds this maintenance include to its ROS 1 detail target.
 * Inclusion performs no I/O or capability acquisition. Actual raw calls require
 * canonical bytes, live caller storage and an independently granted exact alias.
 * @see uwvm_ros1::capability
 */
#pragma once
#include <platform/ros1/cpp/roswasm/detail/ros1/abi.hpp>
