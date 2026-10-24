/** @file
 * @brief Public entry for the complete stable ROS 1 freestanding.hpp API.
 * @details Selects the configured portable or modern pointer/count raw owner
 * using the stable C ABI without span/string-view requirements in the selected
 * public methods. Preserve the installed canonical detail include layout.
 * Inclusion acquires no alias. The backend, buffers and independent host grants
 * remain explicit; this entry supplies no native ROS C++ binary ABI.
 * @see uwvm_ros1::freestanding_capability
 */
#pragma once
#include <platform/ros1/cpp/roswasm/detail/ros1/freestanding.hpp>
