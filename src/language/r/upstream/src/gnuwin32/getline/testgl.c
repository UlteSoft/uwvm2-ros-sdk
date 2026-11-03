/**
 * @file testgl.c
 * @brief Maintain the original R implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#include <stdio.h>
#include "getline.h"

main()
/*
 * just echo user input lines, letting user edit them and move through
 * history list
 */
{
    char* p;

    do
    {
        p = getline("PROMPT>>>> ");
        gl_histadd(p);
        fputs(p, stdout);
    } while (*p != 0);
}
