/**
 * @file pyatomic.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_ATOMIC_H
#define Py_ATOMIC_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifndef Py_LIMITED_API
#define Py_CPYTHON_ATOMIC_H
#include "cpython/pyatomic.h"
#undef Py_CPYTHON_ATOMIC_H
#endif

#ifdef __cplusplus
}
#endif
#endif /* !Py_ATOMIC_H */
