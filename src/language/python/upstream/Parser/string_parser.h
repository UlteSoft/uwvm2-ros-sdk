/**
 * @file string_parser.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef STRINGS_H
#define STRINGS_H

#include <Python.h>
#include <pycore_ast.h>
#include "pegen.h"

PyObject* _PyPegen_parse_string(Parser*, Token*);
PyObject* _PyPegen_decode_string(Parser*, int, const char*, size_t, Token*);

#endif
