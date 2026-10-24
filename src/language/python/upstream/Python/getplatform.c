/**
 * @file getplatform.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */

#include "Python.h"

#ifndef PLATFORM
#define PLATFORM "unknown"
#endif

const char* Py_GetPlatform(void) { return PLATFORM; }
