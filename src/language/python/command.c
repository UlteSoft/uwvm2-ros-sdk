/**
 * @file command.c
 *
 * @brief Run full Python source in the genuine statically linked CPython VM.
 *
 * @details Only raw ABI arguments and owned byte buffers cross this builtin.
 * The Python modules implement records, codecs, transport and lifecycle. Frozen
 * startup encodings permit zero-preopen execution; this is no full-stdlib claim.
 */
#define PY_SSIZE_T_CLEAN
#include "abi.h"
#include "application.h"
#include <Python.h>
#include "frozen.h"
#include <stdio.h>
#include <string.h>

/**
 * @brief Marshal one original synchronous ROS import without interpreting payloads.
 *
 * @param self Unused builtin module receiver.
 *
 * @param args Borrowed tuple containing the operation name, an exact nonnegative
 * u64 Python int, contiguous readable byte buffer and capacity0..4194304. An
 * optional fifth/sixth pair supplies exact other-handle/correlation u64 integers.
 * Boolean and integer-subclass words are refused before entering an import.
 *
 * @return New tuple of u32 errno, independently owned bytes, conditional full
 * u64 required size and conditional full u64 value; NULL on a Python exception.
 *
 * @details Exclusive raw response bytes are allocated before the import. Result
 * resizing, Python integers and tuple construction can still fail afterwards;
 * NULL preserves the pending Python exception without replaying the effect.
 * The input Py_buffer remains borrowed and pinned until the common cleanup.
 * A successful buffer result with an out-of-capacity length becomes status 22;
 * other statuses retain the original u32 errno. A required integer is present
 * only when the sentinel changed and status is 0 or 90. This function never
 * retries, closes a capability or interprets logical controller success.
 */
static PyObject* invoke(PyObject* self, PyObject* args)
{
    (void)self;
    char const* name;
    PyObject* handle_object;
    PyObject* other_object = NULL;
    PyObject* correlation_object = NULL;
    Py_buffer input = {0};
    Py_ssize_t capacity;
    if ((PyTuple_Size(args) != 4 && PyTuple_Size(args) != 6) ||
        !PyArg_ParseTuple(
            args, "sOy*n|OO:invoke", &name, &handle_object, &input, &capacity, &other_object, &correlation_object))
    {
        if (!PyErr_Occurred())
        {
            PyErr_SetString(PyExc_TypeError, "invoke needs four or six arguments");
        }
        return NULL;
    }
    PyObject* output = NULL;
    PyObject* result = NULL;
    if (!PyLong_CheckExact(handle_object) || (other_object && !PyLong_CheckExact(other_object)) ||
        (correlation_object && !PyLong_CheckExact(correlation_object)) || capacity < 0 ||
        capacity > UWVM_ABI_MAX_OUTPUT || input.len > UWVM_ABI_MAX_INPUT)
    {
        PyErr_SetString(PyExc_ValueError, "exact unsigned64 words and complete bounded ABI buffers required");
        goto done;
    }
    uint64_t handle = PyLong_AsUnsignedLongLong(handle_object);
    uint64_t other = other_object ? PyLong_AsUnsignedLongLong(other_object) : 0;
    uint64_t correlation = correlation_object ? PyLong_AsUnsignedLongLong(correlation_object) : 0;
    if (PyErr_Occurred())
    {
        goto done;
    }
    output = PyBytes_FromStringAndSize(NULL, capacity);
    if (output == NULL)
    {
        goto done;
    }
    memset(PyBytes_AS_STRING(output), 0, (size_t)capacity);
    uwvm_call_frame frame = {handle,
                             other,
                             correlation,
                             input.buf,
                             (size_t)input.len,
                             (uint8_t*)PyBytes_AS_STRING(output),
                             (size_t)capacity,
                             UINT64_MAX,
                             22,
                             0};
    uwvm_dispatch(name, &frame);
    uwvm_frame_validate(&frame);
    if (_PyBytes_Resize(&output, (Py_ssize_t)uwvm_frame_size(&frame)) != 0)
    {
        goto done;
    }
    PyObject* required = frame.kind == 1 && frame.slot != UINT64_MAX && (frame.code == 0 || frame.code == 90)
                             ? PyLong_FromUnsignedLongLong(frame.slot)
                             : Py_NewRef(Py_None);
    PyObject* value = (frame.kind == 2 || frame.kind == 4) && frame.code == 0 ? PyLong_FromUnsignedLongLong(frame.slot)
                                                                              : Py_NewRef(Py_None);
    if (required != NULL && value != NULL)
    {
        result = Py_BuildValue("INNN", frame.code, Py_NewRef(output), required, value);
    }
    else
    {
        Py_XDECREF(required);
        Py_XDECREF(value);
    }
done:
    Py_XDECREF(output);
    PyBuffer_Release(&input);
    return result;
}

/**
 * @brief Poll one explicitly granted monotonic timer.
 *
 * @param self Unused receiver.
 *
 * @param args One duration in milliseconds.
 *
 * @return New Python integer containing the original WASI status or local 22
 * above 5000 ms; NULL retains an argument/allocation exception.
 *
 * @details Argument conversion uses CPython's unsigned-int parser. The shared
 * timer helper checks the converted value and grants no clock or poll rights.
 */
static PyObject* pause_ms(PyObject* self, PyObject* args)
{
    (void)self;
    unsigned int duration;
    if (!PyArg_ParseTuple(args, "I:pause_ms", &duration))
    {
        return NULL;
    }
    return PyLong_FromUnsignedLong(uwvm_pause(duration));
}

/**
 * @brief Define only raw builtin marshalling and granted clock operations.
 */
static PyMethodDef methods[] = {
    {"invoke", invoke, METH_VARARGS, "Invoke one checked synchronous raw ROS ABI operation."},
    {"pause_ms", pause_ms, METH_VARARGS, "Wait on one granted WASI monotonic timer."},
    {NULL, NULL, 0, NULL}};
static struct PyModuleDef native_module = {PyModuleDef_HEAD_INIT, "_uwvm_ros", NULL, -1, methods};

/**
 * @brief Create the actual statically registered raw ROS builtin module.
 *
 * @return New owning module reference, or NULL with a pending Python exception.
 *
 * @details Called by the same genuine CPython interpreter that owns the
 * module definition and method table. Registration opens no ROS resource.
 */
PyMODINIT_FUNC PyInit__uwvm_ros(void)
{
    return PyModule_Create(&native_module);
}

/**
 * @brief Initialize isolated full CPython and execute a source bundle from memory.
 *
 * @param argc WASI command argument count.
 *
 * @param argv WASI argument bytes, decoded by CPython into Python sys.argv.
 *
 * @return Explicit application exitCode mapped into 0..125; status 22 for an
 * invalid slot extent, status 12 for registration/source allocation failure,
 * status 1 for application errors, or 120 if finalization fails after success.
 *
 * @details The interpreter does not consult PYTHONPATH, host files or user-site
 * packages. Standard syntax, objects, exceptions and bytecode are genuine CPython.
 * The packed Python text must be NUL-free; a private terminated copy is passed
 * to CPython's ordinary C source API. Startup PyStatus failures follow CPython's
 * own process-exit path. All other normal paths free the source copy, clear the
 * configuration and finalize the VM. Only startup encodings are frozen here.
 */
int main(int argc, char** argv)
{
    uint32_t length = uwvm_load32(application.length);
    if (length == 0 || length > UWVM_APPLICATION_CAPACITY)
    {
        return 22;
    }
    if (PyImport_AppendInittab("_uwvm_ros", PyInit__uwvm_ros) != 0)
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
    status = PyConfig_SetString(&config, &config.program_name, L"uwvm-cpython-3.14.8");
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
    char* source = PyMem_RawMalloc((size_t)length + 1);
    if (source == NULL)
    {
        Py_FinalizeEx();
        return 12;
    }
    memcpy(source, (void const*)application.source, length);
    source[length] = 0;
    PyObject* globals = PyModule_GetDict(PyImport_AddModule("__main__"));
    PyObject* value = PyRun_StringFlags(source, Py_file_input, globals, globals, NULL);
    PyMem_RawFree(source);
    int result = 1;
    if (value != NULL)
    {
        Py_DECREF(value);
        PyObject* code = PyDict_GetItemString(globals, "exitCode");
        long integer = code == NULL ? 0 : PyLong_AsLong(code);
        if (!PyErr_Occurred())
        {
            result = integer < 0 ? 1 : integer > 125 ? 125 : (int)integer;
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
