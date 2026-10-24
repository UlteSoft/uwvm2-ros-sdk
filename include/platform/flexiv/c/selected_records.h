/** @brief Include exactly one explicitly selected complete vendor source release. */
#pragma once
#if UWVM_FLEXIV_PROFILE == 1
# include <flexiv/c/ros1/flexiv-ros1-noetic-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 2
# include <flexiv/c/ros2/flexiv-ros2-foxy-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 3
# include <flexiv/c/ros2/flexiv-ros2-humble-v1-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 5
# include <flexiv/c/ros2/flexiv-ros2-humble-v2-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 7
# include <flexiv/c/ros2/flexiv-ros2-humble-v2-2-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 4
# include <flexiv/c/ros2/flexiv-ros2-jazzy-v1-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 6
# include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 8
# include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.h>
#elif UWVM_FLEXIV_PROFILE == 9
# include <flexiv/c/ros2/flexiv-ros2-lyrical-v1-complete/bounded_records.h>
#else
# error "Select the exact vendor source release through the public Xmake provider"
#endif
