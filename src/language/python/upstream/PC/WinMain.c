/**
 * @file WinMain.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
/* Minimal main program -- everything is loaded from the library. */

#include "Python.h"

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdlib.h> /* __argc, __wargv */

int WINAPI wWinMain(HINSTANCE hInstance,     /* handle to current instance */
                    HINSTANCE hPrevInstance, /* handle to previous instance */
                    LPWSTR lpCmdLine,        /* pointer to command line */
                    int nCmdShow             /* show state of window */
)
{
    return Py_Main(__argc, __wargv);
}
