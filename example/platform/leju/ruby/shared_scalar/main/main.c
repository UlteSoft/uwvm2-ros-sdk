/**
 * @file main.c
 * @brief Call an actual Xmake shared target by its explicit Core preload name.
 * @details The consumer contains no Ruby algorithm or producer memory pointer.
 * Every computation, counter, GC, fiber and exception executes in the real VM.
 */
#define UWVM_LIBRARY_NAMESPACE "algorithm"
#include <language/common/module.h>
#include <stdio.h>

/** @brief Check independent scalar and status words from the actual producer. */
static int check(int32_t argument, int32_t expected, uint32_t status)
{
    int32_t result = uwvm_library_call_i32(argument);
    uint32_t observed = uwvm_library_status();
    if(result != expected || observed != status)
    {
        fprintf(stderr, "argument=%d result=%d expected=%d status=%u expected_status=%u\n", argument, result, expected, observed, status);
        return 0;
    }
    return 1;
}

/** @brief Verify real module initialization, repeated calls, recovery and retirement. */
int main(void)
{
    if(uwvm_library_abi_version() != 1 || uwvm_library_init() != 0 || uwvm_library_init() != 0 || !check(-100, 13, 0) || !check(10, 56, 0) ||
       !check(5, 17, 0) || !check(-1, 0, 5) || !check(3, 9, 0) || !check(2, 7, 0) || uwvm_library_retire() != 0 || uwvm_library_retire() != 125 ||
       !check(1, 0, 125))
    {
        return 5;
    }
    if(puts("{\"status\":\"PASS\",\"xmake_shared_consumer\":true,\"first_result\":56,\"denied\":13}") < 0 || fflush(stdout) != 0)
    {
        return 5;
    }
    return 0;
}
