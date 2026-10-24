/** @brief Include exactly one explicitly selected complete vendor source release. */
#pragma once
#if UWVM_FRANKA_ROS_VERSION == 1
# include <franka/c/ros1/franka-ros1-complete/bounded_records.h>
#elif UWVM_FRANKA_ROS_VERSION == 2
# include <franka/c/ros2/franka-ros2-complete/bounded_records.h>
#else
# error "Select the exact vendor source release through the public Xmake provider"
#endif
