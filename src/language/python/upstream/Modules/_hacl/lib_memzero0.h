/**
 * @file lib_memzero0.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#include <inttypes.h>
#include "python_hacl_namespaces.h"

void Lib_Memzero0_memzero0(void* dst, uint64_t len);

#define Lib_Memzero0_memzero(dst, len, t, _ret_t) Lib_Memzero0_memzero0(dst, len * sizeof(t))
