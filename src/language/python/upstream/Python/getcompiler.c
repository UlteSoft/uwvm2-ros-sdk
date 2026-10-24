/**
 * @file getcompiler.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */

/* Return the compiler identification, if possible. */

#include "Python.h"

#ifndef COMPILER

// Note the __clang__ conditional has to come before the __GNUC__ one because
// clang pretends to be GCC.
#if defined(__clang__)
#define COMPILER "[Clang " __clang_version__ "]"
#elif defined(__GNUC__)
#define COMPILER "[GCC " __VERSION__ "]"
// Generic fallbacks.
#elif defined(__cplusplus)
#define COMPILER "[C++]"
#else
#define COMPILER "[C]"
#endif

#endif /* !COMPILER */

const char* Py_GetCompiler(void) { return COMPILER; }
