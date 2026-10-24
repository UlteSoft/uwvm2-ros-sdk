/**
 * @file pycore_memoryobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_INTERNAL_MEMORYOBJECT_H
#define Py_INTERNAL_MEMORYOBJECT_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifndef Py_BUILD_CORE
#error "this header requires Py_BUILD_CORE define"
#endif

    extern PyTypeObject _PyManagedBuffer_Type;

    PyObject* _PyMemoryView_FromBufferProc(PyObject* v, int flags, getbufferproc bufferproc);

#ifdef __cplusplus
}
#endif
#endif /* !Py_INTERNAL_MEMORYOBJECT_H */
