/**
 * @file genericaliasobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
// Implementation of PEP 585: support list[int] etc.
#ifndef Py_GENERICALIASOBJECT_H
#define Py_GENERICALIASOBJECT_H
#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_FUNC(PyObject*) Py_GenericAlias(PyObject*, PyObject*);
    PyAPI_DATA(PyTypeObject) Py_GenericAliasType;

#ifdef __cplusplus
}
#endif
#endif /* !Py_GENERICALIASOBJECT_H */
