/**
 * @file audit.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef _Py_CPYTHON_AUDIT_H
#error "this header file must not be included directly"
#endif

typedef int (*Py_AuditHookFunction)(const char*, PyObject*, void*);

PyAPI_FUNC(int) PySys_AddAuditHook(Py_AuditHookFunction, void*);
