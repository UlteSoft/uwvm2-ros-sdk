/**
 * @file critical_section.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_CRITICAL_SECTION_H
#define Py_CRITICAL_SECTION_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifndef Py_LIMITED_API
#define Py_CPYTHON_CRITICAL_SECTION_H
#include "cpython/critical_section.h"
#undef Py_CPYTHON_CRITICAL_SECTION_H
#endif

#ifdef __cplusplus
}
#endif
#endif /* !Py_CRITICAL_SECTION_H */
