/**
 * @file pyconfig.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifdef __arm64__
#include "pyconfig-arm64.h"
#endif

#ifdef __x86_64__
#include "pyconfig-x86_64.h"
#endif
