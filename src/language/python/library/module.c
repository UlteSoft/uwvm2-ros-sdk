/** @file py_module.c
 * @brief Retain genuine source-language state through an owned CPython subinterpreter.
 * @details Static libraries share one core manager; dynamic modules own independent
 * memories. Only numeric values cross the boundary and every call restores its caller.
 */
#include <Python.h>
#include "frozen.h"
#include "module_source.h"
#include "library_manager.h"
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#if defined(UWVM_CONSUMER_HOOKS)
# include "foreign.h"
#endif

static PyThreadState* state;
static int entered;
#if defined(UWVM_COMMAND_EMBEDDING)
static int command_argc;
static char** command_argv;
static uint32_t command_exit;
#endif

/** @brief Retire this owned state once while leaving other libraries alive. */
uint32_t uwvm_module_close(void)
{
    if(entered)
    {
        return 16;
    }
    if(state == NULL)
    {
        return 0;
    }
    PyThreadState* owned = state;
    state = NULL;
    return uwvm_python_library_release(owned);
}

/** @brief Evaluate ordinary source in a new genuinely isolated interpreter namespace. */
static uint32_t initialize(void)
{
    if(state != NULL)
    {
        return 0;
    }
    uint32_t error = uwvm_python_library_acquire(&state, sdk_frozen);
    if(error)
    {
        return error;
    }
    PyThreadState* previous = uwvm_python_library_enter(state);
#if defined(UWVM_COMMAND_EMBEDDING)
    PyObject* arguments = PyList_New(command_argc);
    if(arguments != NULL)
    {
        for(int index = 0; index < command_argc; ++index)
        {
            PyObject* value = PyUnicode_DecodeFSDefault(command_argv[index]);
            if(value == NULL) { Py_CLEAR(arguments); break; }
            PyList_SET_ITEM(arguments, index, value);
        }
    }
    if(arguments == NULL || PySys_SetObject("argv", arguments) != 0)
    {
        Py_XDECREF(arguments);
        PyErr_Clear();
        uwvm_python_library_leave(previous);
        uwvm_module_close();
        return 12;
    }
    Py_DECREF(arguments);
#endif
#if defined(UWVM_CONSUMER_HOOKS)
    error = uwvm_install_foreign();
    if(error)
    {
        if(PyErr_Occurred())
        {
            PyErr_Clear();
        }
        uwvm_python_library_leave(previous);
        uwvm_module_close();
        return error;
    }
#endif
    PyObject* module = PyImport_AddModule("__main__");
    PyObject* globals = module == NULL ? NULL : PyModule_GetDict(module);
    PyObject* result = globals == NULL ? NULL : PyRun_StringFlags((char const*)module_source, Py_file_input, globals, globals, NULL);
    if(result == NULL)
    {
#if defined(UWVM_COMMAND_EMBEDDING)
        if(PyErr_ExceptionMatches(PyExc_SystemExit))
        {
            PyObject* exception = PyErr_GetRaisedException();
            PyObject* code = PyObject_GetAttrString(exception, "code");
            command_exit = 1;
            if(code == Py_None) { command_exit = 0; }
            else if(code != NULL && PyLong_Check(code))
            {
                long value = PyLong_AsLong(code);
                if(!PyErr_Occurred()) { command_exit = (uint32_t)value; }
            }
            else if(code != NULL)
            {
                PyObject_Print(code, stderr, Py_PRINT_RAW);
                fputc('\n', stderr);
            }
            Py_XDECREF(code);
            Py_DECREF(exception);
            PyErr_Clear();
            uwvm_python_library_leave(previous);
            return 0;
        }
        PyErr_Print();
#else
        PyErr_Clear();
#endif
        uwvm_python_library_leave(previous);
        uwvm_module_close();
        return 22;
    }
    Py_DECREF(result);
    uwvm_python_library_leave(previous);
    return 0;
}

/**
 * @brief Invoke a real Python function, preserving exact integers and caller ownership.
 * @return Packed u32 errno/result words; the result is committed only after validation.
 * @details Real source exceptions, bool/string/fraction/overflow return22. Reentry
 * returns16. No object, interpreter-state pointer or borrowed buffer escapes.
 */
uint64_t uwvm_module_apply(int32_t a, int32_t b)
{
    if(entered)
    {
        return UINT64_C(16) << 32;
    }
    uint32_t error = initialize();
    if(error)
    {
        return (uint64_t)error << 32;
    }
    entered = 1;
    PyThreadState* previous = uwvm_python_library_enter(state);
    PyObject* module = PyImport_AddModule("__main__");
    PyObject* globals = module == NULL ? NULL : PyModule_GetDict(module);
    PyObject* function = globals == NULL ? NULL : PyDict_GetItemString(globals, "apply");
    PyObject* arguments = Py_BuildValue("(ii)", a, b);
    PyObject* result = function != NULL && arguments != NULL ? PyObject_CallObject(function, arguments) : NULL;
    int32_t value = 0;
    if(result == NULL || !PyLong_CheckExact(result))
    {
        error = 22;
    }
    else
    {
        long long integer = PyLong_AsLongLong(result);
        if(PyErr_Occurred() || integer < INT32_MIN || integer > INT32_MAX)
        {
            error = 22;
        }
        else
        {
            value = (int32_t)integer;
        }
    }
    Py_XDECREF(result);
    Py_XDECREF(arguments);
    if(PyErr_Occurred())
    {
        PyErr_Clear();
    }
    uwvm_python_library_leave(previous);
    entered = 0;
    return (uint64_t)error << 32 | (error ? 0 : (uint32_t)value);
}

/** @brief Evaluate a command body in the genuine engine and release its owned state.
 * @return Original initialization error or completed cleanup status.
 * @details No source-defined function is required for a command. Module libraries
 * instead retain their state until their explicit scalar close export is called.
 */
uint32_t uwvm_module_execute(int argc, char** argv)
{
    if(entered)
    {
        return 16;
    }
#if defined(UWVM_COMMAND_EMBEDDING)
    command_exit = 0;
    command_argc = argc;
    command_argv = argv;
#else
    (void)argc;
    (void)argv;
#endif
    uint32_t error = initialize();
    if(error != 0) { return error; }
    uint32_t closed = uwvm_module_close();
#if defined(UWVM_COMMAND_EMBEDDING)
    return command_exit != 0 ? command_exit : closed;
#else
    return closed;
#endif
}
