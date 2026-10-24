/**
 * @file main.c
 * @brief Observe the complete native ros1 operation and original response.
 * @details No fixture result is precomputed. Every acquired owner closes once;
 * false Trigger replies retain their complete diagnostic and original status.
 */
#include <ros1/c/roswasm.h>
#include <ros/c/native_command.h>

/** @brief Execute one finite observation with explicit native runtime authority. */
void _start(void)
{
    roswasmc_context const context = {roswasmc_ros1_backend()};
    uwvm_ros_command_exit(uwvm_ros_native_run(&context, 1));
}
