// @file wasi.h
// @brief Provide the selected typed SDK binding and ownership boundary for wasi.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** Official WASI Preview1 declarations; importing grants no authority. */
#pragma once
#include <wasi/api.h>
