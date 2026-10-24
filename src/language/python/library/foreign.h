/** @file py_foreign.h
 * @brief Register actual foreign library calls inside the genuine Python consumer.
 */
#pragma once
#include "foreign_binding.h"
#include <limits.h>

/** @brief Borrow exactly two Python integers for one synchronous scalar call. */
static PyObject* foreign_apply_py(PyObject* self, PyObject* arguments)
{
    (void)self;
    if(PyTuple_Size(arguments) != 2 || !PyLong_CheckExact(PyTuple_GET_ITEM(arguments, 0)) || !PyLong_CheckExact(PyTuple_GET_ITEM(arguments, 1)))
    {
        PyErr_SetString(PyExc_TypeError, "two exact i32 arguments required");
        return NULL;
    }
    long long a = PyLong_AsLongLong(PyTuple_GET_ITEM(arguments, 0));
    long long b = PyLong_AsLongLong(PyTuple_GET_ITEM(arguments, 1));
    if(PyErr_Occurred())
    {
        return NULL;
    }
    if(a < INT32_MIN || a > INT32_MAX || b < INT32_MIN || b > INT32_MAX)
    {
        PyErr_SetString(PyExc_OverflowError, "foreign scalar range");
        return NULL;
    }
    return PyLong_FromUnsignedLongLong(foreign_apply((int32_t)a, (int32_t)b));
}

/** @brief Preserve the source initialization hook without repeating Core startup. */
static PyObject* foreign_initialize_py(PyObject* self, PyObject* unused)
{
    (void)self;
    (void)unused;
    foreign_initialize();
    Py_RETURN_NONE;
}

/** @brief Return the original producer cleanup status without owning its objects. */
static PyObject* foreign_close_py(PyObject* self, PyObject* unused)
{
    (void)self;
    (void)unused;
    return PyLong_FromUnsignedLong(foreign_close());
}

static PyMethodDef foreign_methods[] = {
    {"apply",      foreign_apply_py,      METH_VARARGS, "Call the actual linked or preloaded producer."           },
    {"initialize", foreign_initialize_py, METH_NOARGS,  "Preserve the source hook; Core startup already ran once."},
    {"close",      foreign_close_py,      METH_NOARGS,  "Retire the producer's owned language state."             },
    {NULL,         NULL,                  0,            NULL                                                      }
};
static struct PyModuleDef foreign_definition = {PyModuleDef_HEAD_INIT, "_foreign", NULL, -1, foreign_methods};

/** @brief Construct an ordinary genuine built-in module in the active interpreter. */
static PyObject* initialize_foreign_module(void)
{
    return PyModule_Create(&foreign_definition);
}

/** @brief Install this module only in the active owned subinterpreter. */
static int uwvm_install_foreign(void)
{
    PyObject* module = initialize_foreign_module();
    if(module == NULL)
    {
        return 12;
    }
    int result = PyDict_SetItemString(PyImport_GetModuleDict(), "_foreign", module);
    Py_DECREF(module);
    if(result < 0)
    {
        return 12;
    }
    return 0;
}
