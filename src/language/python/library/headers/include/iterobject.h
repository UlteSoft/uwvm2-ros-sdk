/**
 * @file iterobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_ITEROBJECT_H
#define Py_ITEROBJECT_H
/* Iterators (the basic kind, over a sequence) */
#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_DATA(PyTypeObject) PySeqIter_Type;
    PyAPI_DATA(PyTypeObject) PyCallIter_Type;

#define PySeqIter_Check(op) Py_IS_TYPE((op), &PySeqIter_Type)

    PyAPI_FUNC(PyObject*) PySeqIter_New(PyObject*);

#define PyCallIter_Check(op) Py_IS_TYPE((op), &PyCallIter_Type)

    PyAPI_FUNC(PyObject*) PyCallIter_New(PyObject*, PyObject*);

#ifdef __cplusplus
}
#endif
#endif /* !Py_ITEROBJECT_H */
