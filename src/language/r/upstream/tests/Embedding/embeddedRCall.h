/**
 * @file embeddedRCall.h
 * @brief Maintain the original R implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#ifndef EMBEDDED_R_CALL_H
#define EMBEDDED_R_CALL_H

#include <R.h>
#include <Rinternals.h>

int eval_R_command(const char* funcName, int argc, char* argv[]);
void init_R(int argc, char** argv);
void end_R();

#endif
