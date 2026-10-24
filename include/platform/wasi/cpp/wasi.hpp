// @file wasi.hpp
// @brief Provide the selected typed SDK binding and ownership boundary for wasi.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** The selected wasm32 Preview1 ABI; importing grants no authority. */
#pragma once
#include <platform/wasi/c/wasi.h>
