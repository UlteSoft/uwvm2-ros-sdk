/** @file
 * @brief Compatibility entry for the historical C++11 portable include.
 * @details Delegates the complete portable implementation, including selected
 * C++98/03/14/17 spellings. This maintenance entry creates no independent ABI,
 * alias grant, owner, thread or scheduling loop; normal profile selection and
 * each included API's lifetime/numeric error contract still apply.
 * @see roswasmcpp::Node
 */
#pragma once
#include <platform/ros/cpp/roswasm/detail/portable.hpp>
