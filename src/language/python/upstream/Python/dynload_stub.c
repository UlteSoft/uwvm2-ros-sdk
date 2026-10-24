/**
 * @file dynload_stub.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */

/* This module provides the necessary stubs for when dynamic loading is
   not present. */

#include "Python.h"
#include "pycore_importdl.h"

const char* _PyImport_DynLoadFiletab[] = {NULL};
