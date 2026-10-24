/**
 * @file asdl.c
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#include "Python.h"
#include "pycore_asdl.h"

GENERATE_ASDL_SEQ_CONSTRUCTOR(generic, void*);
GENERATE_ASDL_SEQ_CONSTRUCTOR(identifier, PyObject*);
GENERATE_ASDL_SEQ_CONSTRUCTOR(int, int);
