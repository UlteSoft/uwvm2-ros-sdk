/**
 * @file tokenizer.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_TOKENIZER_H
#define Py_TOKENIZER_H

#include "Python.h"

struct tok_state* _PyTokenizer_FromString(const char*, int, int);
struct tok_state* _PyTokenizer_FromUTF8(const char*, int, int);
struct tok_state* _PyTokenizer_FromReadline(PyObject*, const char*, int, int);
struct tok_state* _PyTokenizer_FromFile(FILE*, const char*, const char*, const char*);

#define tok_dump _Py_tok_dump

#endif /* !Py_TOKENIZER_H */
