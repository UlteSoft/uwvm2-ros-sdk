/**
 * @file lock.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_LOCK_H
#define Py_LOCK_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifndef Py_LIMITED_API
#define Py_CPYTHON_LOCK_H
#include "cpython/lock.h"
#undef Py_CPYTHON_LOCK_H
#endif

#ifdef __cplusplus
}
#endif
#endif /* !Py_LOCK_H */
