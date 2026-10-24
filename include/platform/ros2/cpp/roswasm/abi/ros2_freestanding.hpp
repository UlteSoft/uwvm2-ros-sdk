/** @file
 * @brief Public entry for the complete stable ROS 2 freestanding.hpp API.
 * @details Selects the configured portable or modern pointer/count raw owner.
 * Public calls use the stable C ABI and explicit caller storage rather than
 * native ROS object layout. Preserve the installed canonical detail includes.
 * This entry performs no acquisition, discovery, scheduling or callback I/O;
 * every operation still requires its independently admitted exact host alias.
 * @see uwvm_ros2::freestanding_capability
 */
#pragma once
#include <platform/ros2/cpp/roswasm/detail/ros2/freestanding.hpp>
