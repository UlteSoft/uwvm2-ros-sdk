/**
 * @file bltinmodule.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_BLTINMODULE_H
#define Py_BLTINMODULE_H
#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_DATA(PyTypeObject) PyFilter_Type;
    PyAPI_DATA(PyTypeObject) PyMap_Type;
    PyAPI_DATA(PyTypeObject) PyZip_Type;

#ifdef __cplusplus
}
#endif
#endif /* !Py_BLTINMODULE_H */
