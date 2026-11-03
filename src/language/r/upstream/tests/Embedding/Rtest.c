/**
 * @file Rtest.c
 * @brief Maintain the original R implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#include "embeddedRCall.h"

int main(int argc, char* argv[])
{
    eval_R_command("print", argc, argv);
    return (0);
}
