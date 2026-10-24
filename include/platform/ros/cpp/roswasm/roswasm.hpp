/** @file
 * @brief Public standard-selected typed application umbrella.
 * @details Includes checked ownership, resource lifecycles and caller-driven
 * scheduling for the configured C++98/03/11/14/17/20/23/26 profile. Select one
 * explicit ROS backend separately and retain the canonical installed layout.
 * Inclusion opens no aliases or native threads; each operation keeps its own
 * host permission, codec, byte/capacity and lifetime contract.
 * @see roswasmcpp::Node
 */
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
