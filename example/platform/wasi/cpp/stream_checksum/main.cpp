/** @file main.cpp
 * @brief Execute the stream_checksum WASI flow using explicit inherited descriptors.
 * @details No filesystem path, clock, ROS grant or network resource is opened.
 */
#include <stdio.h>
#include <stdint.h>

/** @brief Compute FNV-1a over exactly the bytes read from stdin; retain I/O errors. */
int main(void)
{
    uint32_t value = 2166136261u;
    int byte;
    while((byte = getchar()) != EOF)
    {
        value = (value ^ (unsigned char)byte) * 16777619u;
    }
    if(ferror(stdin))
    {
        return 5;
    }
    return printf("%08lx\n", (unsigned long)value) < 0 ? 5 : 0;
}
