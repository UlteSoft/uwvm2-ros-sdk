/**
 * @file main.m
 * @brief Observe the complete native ros2 operation and original response.
 * @details No fixture result is precomputed. Every acquired owner closes once;
 * false Trigger replies retain their complete diagnostic and original status.
 */
#include <ros2/c/roswasm.h>
#include <ros/c/native_command.h>

/** @brief Execute one finite observation with explicit native runtime authority. */
void _start(void)
{
    char const* layout = @encode(roswasmc_context);
    if(!layout || !*layout)
    {
        uwvm_ros_command_exit(UWVM_ROS_INVALID);
    }
    roswasmc_context const context = {roswasmc_ros2_backend()};
    uwvm_ros_command_exit(uwvm_ros_native_run(&context, 3));
}
