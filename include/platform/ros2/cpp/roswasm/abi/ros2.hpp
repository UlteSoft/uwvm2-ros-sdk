/** @file
 * @brief Public entry for the complete stable ROS 2 abi.hpp API.
 * @details Selects the configured C++98/03/11/14/17 portable or C++20+ hosted
 * raw capability spelling. The assembler rebinds this maintenance include to
 * the installed canonical ROS 2 detail target; retain that layout intact.
 * Inclusion opens no alias. Canonical encoding, caller-storage lifetimes and
 * separately granted operation/native-type/QoS pairing still govern real calls.
 * @see uwvm_ros2::capability
 */
#pragma once
#include <platform/ros2/cpp/roswasm/detail/ros2/abi.hpp>
