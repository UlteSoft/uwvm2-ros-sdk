/** @file command.c
 * @brief Run the genuine library embedding command entry without a C result surrogate.
 */
#include <stdint.h>
#if defined(__cplusplus)
extern "C"
{
#endif
    uint32_t uwvm_module_execute(void);
#if defined(__cplusplus)
}
#endif
int main(void)
{
    return (int)uwvm_module_execute();
}
