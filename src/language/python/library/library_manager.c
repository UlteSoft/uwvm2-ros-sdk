/** @file python_library_manager.c
 * @brief Own genuine CPython subinterpreters across linked language libraries.
 * @details One manager symbol set is linked per Wasm module. It never adopts
 * another embedding owner's runtime, creates a host thread, or grants a resource.
 */
#include "library_manager.h"
#include <limits.h>

#if PY_MAJOR_VERSION != 3 || PY_MINOR_VERSION != 14 || PY_MICRO_VERSION != 8
# error "Use the single locked CPython 3.14.8 core and matching headers"
#endif

static PyThreadState* bootstrap;
static uint32_t owners;

/** @brief Initialize the actual isolated core with frozen encoding modules. */
static uint32_t initialize(struct _frozen const* frozen)
{
    if(bootstrap != NULL)
    {
        return Py_IsInitialized() ? 0 : 16;
    }
    if(Py_IsInitialized())
    {
        return 16;
    }
    PyImport_FrozenModules = frozen;
    PyPreConfig pre;
    PyPreConfig_InitIsolatedConfig(&pre);
    pre.utf8_mode = 1;
    pre.configure_locale = 0;
    PyStatus status = Py_PreInitialize(&pre);
    if(PyStatus_Exception(status))
    {
        return 12;
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
    status = PyConfig_SetString(&config, &config.program_name, L"uwvm-cpython-library-3.14.8");
    if(!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.home, L"/__uwvm_frozen__");
    }
    if(!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.filesystem_encoding, L"utf-8");
    }
    if(!PyStatus_Exception(status))
    {
        status = PyConfig_SetString(&config, &config.stdio_encoding, L"utf-8");
    }
    if(!PyStatus_Exception(status))
    {
        status = Py_InitializeFromConfig(&config);
    }
    PyConfig_Clear(&config);
    if(PyStatus_Exception(status))
    {
        if(Py_IsInitialized())
        {
            Py_FinalizeEx();
        }
        return 12;
    }
    bootstrap = PyThreadState_Get();
    return 0;
}

uint32_t uwvm_python_library_acquire(PyThreadState** output, struct _frozen const* frozen)
{
    if(output == NULL || frozen == NULL)
    {
        return 22;
    }
    if(owners == UINT32_MAX)
    {
        return 75;
    }
    uint32_t error = initialize(frozen);
    if(error)
    {
        return error;
    }
    PyThreadState* caller = PyThreadState_Get();
    PyInterpreterConfig config = {
        .use_main_obmalloc = 1,
        .allow_fork = 0,
        .allow_exec = 0,
        .allow_threads = 0,
        .allow_daemon_threads = 0,
        .check_multi_interp_extensions = 0,
        .gil = PyInterpreterConfig_SHARED_GIL,
    };
    PyThreadState* owned = NULL;
    PyStatus status = Py_NewInterpreterFromConfig(&owned, &config);
    if(PyStatus_Exception(status) || owned == NULL)
    {
        PyThreadState_Swap(caller);
        if(PyErr_Occurred())
        {
            PyErr_Clear();
        }
        if(owners == 0)
        {
            Py_FinalizeEx();
            bootstrap = NULL;
        }
        return 12;
    }
    ++owners;
    PyThreadState_Swap(caller);
    *output = owned;
    return 0;
}

PyThreadState* uwvm_python_library_enter(PyThreadState* state)
{
    return PyThreadState_Swap(state);
}

void uwvm_python_library_leave(PyThreadState* previous)
{
    PyThreadState_Swap(previous);
}

uint32_t uwvm_python_library_release(PyThreadState* state)
{
    if(state == NULL || owners == 0 || bootstrap == NULL)
    {
        return 22;
    }
    PyThreadState* caller = PyThreadState_Get();
    if(caller == state)
    {
        return 16;
    }
    PyThreadState_Swap(state);
    Py_EndInterpreter(state);
    PyThreadState_Swap(caller);
    --owners;
    if(owners != 0)
    {
        return 0;
    }
    if(caller != bootstrap)
    {
        return 16;
    }
    int result = Py_FinalizeEx();
    bootstrap = NULL;
    return result == 0 ? 0 : 5;
}
