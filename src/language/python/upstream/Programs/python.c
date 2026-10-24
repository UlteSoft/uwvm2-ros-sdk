/**
 * @file python.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
/* Minimal main program -- everything is loaded from the library */

#include "Python.h"

#ifdef MS_WINDOWS
int wmain(int argc, wchar_t** argv) { return Py_Main(argc, argv); }
#else
int main(int argc, char** argv) { return Py_BytesMain(argc, argv); }
#endif
