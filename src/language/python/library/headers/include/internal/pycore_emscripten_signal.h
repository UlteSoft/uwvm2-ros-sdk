/**
 * @file pycore_emscripten_signal.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_EMSCRIPTEN_SIGNAL_H
#define Py_EMSCRIPTEN_SIGNAL_H

#if defined(__EMSCRIPTEN__)

#ifndef Py_BUILD_CORE
#error "this header requires Py_BUILD_CORE define"
#endif

void _Py_CheckEmscriptenSignals(void);

void _Py_CheckEmscriptenSignalsPeriodically(void);

#define _Py_CHECK_EMSCRIPTEN_SIGNALS() _Py_CheckEmscriptenSignals()

#define _Py_CHECK_EMSCRIPTEN_SIGNALS_PERIODICALLY() _Py_CheckEmscriptenSignalsPeriodically()

extern int Py_EMSCRIPTEN_SIGNAL_HANDLING;
extern int _Py_emscripten_signal_clock;

#else

#define _Py_CHECK_EMSCRIPTEN_SIGNALS()
#define _Py_CHECK_EMSCRIPTEN_SIGNALS_PERIODICALLY()

#endif // defined(__EMSCRIPTEN__)

#endif // ndef Py_EMSCRIPTEN_SIGNAL_H
