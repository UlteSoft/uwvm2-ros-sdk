/** @file library_manager.h
 * @brief Share one genuine CPython core while owning separate interpreter states.
 * @details Calls are synchronous on the module's owning thread. Static library
 * instances share memory and application authority; subinterpreters separate
 * language state and lifetimes, not security domains.
 */
#pragma once
#include <Python.h>
#include <stdint.h>

/** @brief Create one owned subinterpreter in this module's fixed genuine core. */
uint32_t uwvm_python_library_acquire(PyThreadState** output, struct _frozen const* frozen);
/** @brief Enter owned state; return the caller state for synchronous restoration. */
PyThreadState* uwvm_python_library_enter(PyThreadState* state);
/** @brief Restore the original caller state before returning across a C boundary. */
void uwvm_python_library_leave(PyThreadState* previous);
/** @brief Retire one owned subinterpreter; finalize the core after the last owner. */
uint32_t uwvm_python_library_release(PyThreadState* state);
