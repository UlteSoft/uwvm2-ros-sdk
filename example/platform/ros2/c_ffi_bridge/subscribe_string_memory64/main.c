/**
 * @file main.c
 * @brief Observe the complete native ros2 operation and original response.
 * @details No fixture result is precomputed. Every acquired owner closes once;
 * false Trigger replies retain their complete diagnostic and original status.
 */
#include <ros/c_ffi_bridge/backend.h>
#include <ros/c/native_command.h>

/** @brief Execute one finite observation with explicit native runtime authority. */
void _start(void)
{
    roswasmc_context const context = {roswasmc_c_ffi_backend()};
    uwvm_ros_command_exit(uwvm_ros_native_run(&context, 2));
}
