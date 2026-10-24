/**
 * @file complexobject.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_CPYTHON_COMPLEXOBJECT_H
#error "this header file must not be included directly"
#endif

typedef struct
{
    double real;
    double imag;
} Py_complex;

// Operations on complex numbers.
PyAPI_FUNC(Py_complex) _Py_c_sum(Py_complex, Py_complex);
PyAPI_FUNC(Py_complex) _Py_c_diff(Py_complex, Py_complex);
PyAPI_FUNC(Py_complex) _Py_c_neg(Py_complex);
PyAPI_FUNC(Py_complex) _Py_c_prod(Py_complex, Py_complex);
PyAPI_FUNC(Py_complex) _Py_c_quot(Py_complex, Py_complex);
PyAPI_FUNC(Py_complex) _Py_c_pow(Py_complex, Py_complex);
PyAPI_FUNC(double) _Py_c_abs(Py_complex);

/* Complex object interface */

/*
PyComplexObject represents a complex number with double-precision
real and imaginary parts.
*/
typedef struct
{
    PyObject_HEAD Py_complex cval;
} PyComplexObject;

PyAPI_FUNC(PyObject*) PyComplex_FromCComplex(Py_complex);

PyAPI_FUNC(Py_complex) PyComplex_AsCComplex(PyObject* op);
