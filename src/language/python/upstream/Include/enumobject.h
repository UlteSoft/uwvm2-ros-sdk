/**
 * @file enumobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_ENUMOBJECT_H
#define Py_ENUMOBJECT_H

/* Enumerate Object */

#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_DATA(PyTypeObject) PyEnum_Type;
    PyAPI_DATA(PyTypeObject) PyReversed_Type;

#ifdef __cplusplus
}
#endif

#endif /* !Py_ENUMOBJECT_H */
