/**
 * @file unreferenced.c
 * @brief Retain a separate archive member that must never be extracted.
 * @details Its deliberately unresolved sentinel is a local link-contract fixture.
 * A successful application link proves ordinary archive selection excludes it.
 */
#include <stdint.h>

/** @brief Deliberately undefined; extracting this member must fail at link time. */
extern uint32_t nv_unavailable_archive_sentinel(void);

/** @brief Unused archive API; never called or exported by the application. */
uint32_t nv_unreferenced_archive_member(void)
{
    return nv_unavailable_archive_sentinel();
}
