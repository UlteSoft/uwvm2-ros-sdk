/** @file archive_consumer.c
 * @brief Consume the actual C archive through its scalar public C ABI.
 * @details Success also proves the unreferenced trapping member did not
 * initialize. Linker/archive inspection remains a separate required check.
 */
#include "algorithm_api.h"
#include <stdio.h>

int main(void)
{
    uint32_t result = algorithm_apply(7);
    if(printf("{\"archive_result\":%u}\n", result) < 0)
    {
        return 5;
    }
    return result == 22 ? 0 : 22;
}
