/* SPDX-License-Identifier: Apache-2.0 */
/** @file main.c
 * @brief Independent real Wasm input/cancel authority for the original TB3 task.
 * @details `velocity vx vy vz wx wy wz` publishes one complete real Twist;
 * `cancel` publishes one real Bool true. Each operation is separately granted.
 * No native control helper, feedback inference, replay or automatic recovery.
 */
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/roswasm/codec.h>
#include <errno.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
static int number(char const* text, double* value)
{
    char* end = 0;
    if(!text || !*text) return 22;
    errno = 0;
    *value = strtod(text, &end);
    return errno || end == text || !end || *end || !isfinite(*value) ? 22 : 0;
}
int main(int argc, char** argv)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability publisher;
    roswasmc_twist value = {{0,0,0},{0,0,0}};
    char const* alias = 0;
    unsigned cancel = 0, open_error = 0, publish_error = 0, close_error = 0, io_error = 0, attempted = 0;
    if(argc == 2 && !strcmp(argv[1], "cancel"))
    { cancel = 1; alias = "robotis-obstacle-cancel-request"; }
    else if(argc == 8 && !strcmp(argv[1], "velocity"))
    {
        for(unsigned i = 0; i < 3; ++i)
            if(number(argv[2+i], &value.linear[i]) || number(argv[5+i], &value.angular[i])) return 22;
        alias = "robotis-obstacle-raw-input";
    }
    else return 22;
    roswasmc_capability_init(&publisher, &context);
    open_error = roswasmc_open(&publisher, alias, strlen(alias));
    if(!open_error)
    {
        attempted = 1;
        publish_error = cancel ? roswasmc_publish_bool(&publisher, 1) : roswasmc_publish_twist(&publisher, &value);
    }
    if(roswasmc_is_open(&publisher)) close_error = roswasmc_close(&publisher);
    if(printf("robotis_input mode=%s open=%u publish_attempted=%u publish=%u close=%u\n",
        cancel ? "cancel" : "velocity", open_error, attempted, publish_error, close_error) < 0 || fflush(stdout)) io_error = 5;
    unsigned primary = open_error ? open_error : publish_error ? publish_error : close_error ? close_error : io_error;
    return primary > 125 ? 125 : (int)primary;
}
