/** @file static_main.c
 * @brief Resolve the archive's actual C symbol and compute from runtime input.
 */
#include <franka/c/module_algorithm.h>
#include <inttypes.h>
#include <stdio.h>

int main(void)
{
    uint64_t value = 0;
    unsigned count = 0;
    int ch;
    if(puts("static-main-enter") == EOF || fflush(stdout))
    {
        return 5;
    }
    if(franka_module_archive_ready() != 101)
    {
        return 78;
    }
    while((ch = getchar()) >= '0' && ch <= '9')
    {
        value = value * 10 + (unsigned)(ch - '0');
        if(value > UINT32_MAX)
        {
            return 22;
        }
        ++count;
    }
    if(!count || (ch != '\n' && ch != EOF) || (ch == '\n' && getchar() != EOF))
    {
        return 22;
    }
    printf("%" PRIu32 "\n", franka_module_algorithm_core((uint32_t)value));
    return 0;
}
