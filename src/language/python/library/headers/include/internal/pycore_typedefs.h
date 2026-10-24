/**
 * @file pycore_typedefs.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_INTERNAL_TYPEDEFS_H
#define Py_INTERNAL_TYPEDEFS_H

#ifndef Py_BUILD_CORE
#error "this header requires Py_BUILD_CORE define"
#endif

#ifdef __cplusplus
extern "C"
{
#endif

    typedef struct _PyInterpreterFrame _PyInterpreterFrame;
    typedef struct pyruntimestate _PyRuntimeState;

#ifdef __cplusplus
}
#endif
#endif // !Py_INTERNAL_TYPEDEFS_H
