/**
 * @file osmodule.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */

/* os module interface */

#ifndef Py_OSMODULE_H
#define Py_OSMODULE_H
#ifdef __cplusplus
extern "C"
{
#endif

#if !defined(Py_LIMITED_API) || Py_LIMITED_API + 0 >= 0x03060000
    PyAPI_FUNC(PyObject*) PyOS_FSPath(PyObject* path);
#endif

#ifdef __cplusplus
}
#endif
#endif /* !Py_OSMODULE_H */
