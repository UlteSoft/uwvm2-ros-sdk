/**
 * @file shim.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#include "Python.h"

#include "pycore_ceval.h"
#include "pycore_frame.h"
#include "pycore_jit.h"

#include "jit.h"

_Py_CODEUNIT* _JIT_ENTRY(_PyInterpreterFrame* frame, _PyStackRef* stack_pointer, PyThreadState* tstate)
{
    // Note that this is *not* a tail call:
    PATCH_VALUE(jit_func_preserve_none, call, _JIT_CONTINUE);
    return call(frame, stack_pointer, tstate);
}
