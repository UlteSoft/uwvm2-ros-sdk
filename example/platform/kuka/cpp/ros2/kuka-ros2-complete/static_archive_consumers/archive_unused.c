/** @file archive_unused.c
 * @brief Detect accidental extraction of an unreferenced archive member.
 * @details A correct ordinary archive link leaves this member unextracted.
 * If it is force-included, its real constructor traps during application
 * startup. This local negative fixture never contacts an external system.
 */
#include <stdint.h>

__attribute__((constructor)) static void unexpected_member_initialization(void)
{
    __builtin_trap();
}

uint32_t archive_unreferenced_member(void)
{
    return UINT32_C(99);
}
