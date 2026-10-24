/**
 * @file warnings.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_CPYTHON_WARNINGS_H
#error "this header file must not be included directly"
#endif

PyAPI_FUNC(int) PyErr_WarnExplicitObject(PyObject* category, PyObject* message, PyObject* filename,
                                         int lineno, PyObject* module, PyObject* registry);

PyAPI_FUNC(int) PyErr_WarnExplicitFormat(PyObject* category, const char* filename, int lineno,
                                         const char* module, PyObject* registry, const char* format, ...);

// DEPRECATED: Use PyErr_WarnEx() instead.
#define PyErr_Warn(category, msg) PyErr_WarnEx((category), (msg), 1)
