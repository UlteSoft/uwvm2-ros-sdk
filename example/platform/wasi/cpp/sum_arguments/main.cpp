/** @file main.cpp
 * @brief Execute the sum_arguments WASI flow using explicit inherited descriptors.
 * @details No filesystem path, clock, ROS grant or network resource is opened.
 */
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <limits.h>

/** @brief Sum exact decimal arguments with checked overflow; return 22 for malformed input. */
int main(int argc, char** argv)
{
    long sum = 0;
    int index;
    for(index = 1; index < argc; ++index)
    {
        char* end;
        long value;
        errno = 0;
        value = strtol(argv[index], &end, 10);
        if(errno || *end || end == argv[index] || (value > 0 && sum > LONG_MAX - value) || (value < 0 && sum < LONG_MIN - value))
        {
            return 22;
        }
        sum += value;
    }
    return printf("%ld\n", sum) < 0 ? 5 : 0;
}
