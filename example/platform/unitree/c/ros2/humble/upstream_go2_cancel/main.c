/* SPDX-License-Identifier: Apache-2.0 */
/** @file main.c
 * @brief Independently authorised Wasm Go2 cancellation publisher.
 * @details An explicit operator/test-authority request publishes exactly one
 * real Bool true. No task completion, hold, state receipt or stop acknowledgement
 * is inferred. This process has no LowCmd/LowState or task-subscription grant.
 * Failure never retries an uncertain publication; cleanup is independent.
 */
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/roswasm/codec.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char** argv)
{
    static char const alias[] = "unitree-go2-stop-request";
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability publisher;
    unsigned abi_error = 0, open_error = 0, publish_error = 0, close_error = 0, io_error = 0;
    unsigned attempted = 0, primary = 0;
    roswasmc_capability_init(&publisher, &context);
    if(argc != 2 || strcmp(argv[1], "request-stop")) return 22;
    abi_error = context.backend->abi_version() == 1 ? 0 : 95;
    if(!abi_error) open_error = roswasmc_open(&publisher, alias, sizeof alias - 1);
    if(!abi_error && !open_error)
    {
        attempted = 1;
        publish_error = roswasmc_publish_bool(&publisher, 1);
    }
    if(roswasmc_is_open(&publisher)) close_error = roswasmc_close(&publisher);
    if(printf("go2_cancel abi=%u open=%u publish_attempted=%u publish=%u close=%u\n",
        abi_error, open_error, attempted, publish_error, close_error) < 0 || fflush(stdout)) io_error = 5;
    primary = abi_error ? abi_error : open_error ? open_error : publish_error ? publish_error : close_error ? close_error : io_error;
    return primary > 125 ? 125 : (int)primary;
}
