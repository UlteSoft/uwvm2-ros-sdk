/** @file command.c
 * @brief Run the genuine library embedding command entry without a C result surrogate.
 */
#include <stdint.h>
#if defined(__cplusplus)
extern "C"
{
#endif
    uint32_t uwvm_module_execute(int argc, char** argv);
#if defined(__cplusplus)
}
#endif
int main(int argc, char** argv)
{
    return (int)uwvm_module_execute(argc, argv);
}
