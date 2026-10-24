/**
 * @file frameobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
/* Frame object interface */

#ifndef Py_FRAMEOBJECT_H
#define Py_FRAMEOBJECT_H
#ifdef __cplusplus
extern "C"
{
#endif

#include "pyframe.h"

#ifndef Py_LIMITED_API
#define Py_CPYTHON_FRAMEOBJECT_H
#include "cpython/frameobject.h"
#undef Py_CPYTHON_FRAMEOBJECT_H
#endif

#ifdef __cplusplus
}
#endif
#endif /* !Py_FRAMEOBJECT_H */
