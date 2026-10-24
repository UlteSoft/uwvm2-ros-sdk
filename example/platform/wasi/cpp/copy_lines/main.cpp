/** @file main.cpp
 * @brief Execute the copy_lines WASI flow using explicit inherited descriptors.
 * @details No filesystem path, clock, ROS grant or network resource is opened.
 */
#include <stdio.h>

/** @brief Copy the complete stdin byte stream with checked reads and writes. */
int main(void)
{
    unsigned char buffer[256];
    size_t count;
    while((count = fread(buffer, 1, sizeof buffer, stdin)) != 0)
    {
        if(fwrite(buffer, 1, count, stdout) != count)
        {
            return 5;
        }
    }
    return ferror(stdin) || fflush(stdout) ? 5 : 0;
}
