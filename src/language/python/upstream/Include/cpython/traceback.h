/**
 * @file traceback.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_CPYTHON_TRACEBACK_H
#error "this header file must not be included directly"
#endif

typedef struct _traceback PyTracebackObject;

struct _traceback
{
    PyObject_HEAD PyTracebackObject* tb_next;
    PyFrameObject* tb_frame;
    int tb_lasti;
    int tb_lineno;
};
