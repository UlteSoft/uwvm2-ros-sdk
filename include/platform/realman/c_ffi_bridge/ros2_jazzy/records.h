/** @file records.h
 * @brief Explicit C-ABI route to every complete original record.
 * @details Callers select their actual FFI frontend. Record storage and capacities are
 * caller-owned; codec success is unrelated to native ROS type registration or grants.
 */
#pragma once
#include <realman/c/ros2/realman-ros2-jazzy-complete/bounded_records.h>
#include <realman/c/ros2/realman-ros2-jazzy-complete/bounded_interfaces.h>
