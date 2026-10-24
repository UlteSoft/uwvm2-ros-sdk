/** @file records.h
 * @brief Explicit C-ABI route to every complete original record.
 * @details Callers select their actual FFI frontend. Record storage and capacities are
 * caller-owned; codec success is unrelated to native ROS type registration or grants.
 */
#pragma once
#include <elephant/c/ros2/elephant-mycobot-humble-complete/bounded_records.h>
#include <elephant/c/ros2/elephant-mycobot-humble-complete/bounded_interfaces.h>
