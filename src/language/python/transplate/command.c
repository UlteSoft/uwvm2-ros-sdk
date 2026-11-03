/**
 * @file command.c
 * @brief Evaluate a source bundle in the existing CPython/WASI core.
 * @details The built-in ROS bridge is target Wasm code. No native Python,
 * PYTHONPATH, site package, shared extension or application process is used.
 */
#define PY_SSIZE_T_CLEAN
#include <Python.h>
#include "frozen.h"
#include "transplate_source.h"

PyMODINIT_FUNC PyInit__roswasm_native(void);

/** Run one isolated, single-threaded command and preserve ordinary failures. */
int main(int argc, char **argv)
{
    if (sizeof(transplate_source) < 2 || sizeof(transplate_source) > 4194305)
    {
        return 22;
    }
    if (PyImport_AppendInittab("_roswasm_native", PyInit__roswasm_native) != 0)
    {
        return 12;
    }
    PyImport_FrozenModules = sdk_frozen;
    PyPreConfig pre;
    PyPreConfig_InitIsolatedConfig(&pre);
    pre.utf8_mode = 1;
    pre.configure_locale = 0;
    PyStatus status = Py_PreInitialize(&pre);
    if (PyStatus_Exception(status))
    {
        Py_ExitStatusException(status);
    }
    PyConfig config;
    PyConfig_InitIsolatedConfig(&config);
    config.site_import = 0;
    config.user_site_directory = 0;
    config.use_environment = 0;
    config.parse_argv = 0;
    config.write_bytecode = 0;
    config.install_signal_handlers = 0;
    config.use_frozen_modules = 1;
    config.module_search_paths_set = 1;
    config.pathconfig_warnings = 0;
    config.use_hash_seed = 1;
    config.hash_seed = 0;
    status = PyConfig_SetString(&config, &config.program_name, L"uwvm-cpython-transplate-3.14.8");
    if (!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.home, L"/__uwvm_frozen__");
    }
    if (!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.filesystem_encoding, L"utf-8");
    }
    if (!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.stdio_encoding, L"utf-8");
    }
    if (!PyStatus_Exception(status))
    {
        status = PyConfig_SetBytesArgv(&config, argc, argv);
    }
    if (!PyStatus_Exception(status))
    {
        status = Py_InitializeFromConfig(&config);
    }
    PyConfig_Clear(&config);
    if (PyStatus_Exception(status))
    {
        Py_ExitStatusException(status);
    }
    PyObject *main_module = PyImport_AddModule("__main__");
    PyObject *globals = main_module == NULL ? NULL : PyModule_GetDict(main_module);
    PyObject *value = globals == NULL ? NULL : PyRun_StringFlags(
        (char const *)transplate_source, Py_file_input, globals, globals, NULL);
    int result = 1;
    if (value != NULL)
    {
        Py_DECREF(value);
        PyObject *code = PyDict_GetItemString(globals, "exitCode");
        if (code == NULL || PyLong_CheckExact(code))
        {
            long integer = code == NULL ? 0 : PyLong_AsLong(code);
            if (!PyErr_Occurred())
            {
                result = integer < 0 ? 1 : integer > 125 ? 125 : (int)integer;
            }
        }
        else
        {
            PyErr_SetString(PyExc_TypeError, "exitCode must be an exact integer");
        }
    }
    if (PyErr_Occurred())
    {
        PyErr_Print();
    }
    if (Py_FinalizeEx() < 0 && result == 0)
    {
        result = 120;
    }
    return result;
}
