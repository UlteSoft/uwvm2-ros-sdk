/**
 * @file buffer.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef _LEXER_BUFFER_H_
#define _LEXER_BUFFER_H_

#include "pyport.h"

void _PyLexer_remember_fstring_buffers(struct tok_state* tok);
void _PyLexer_restore_fstring_buffers(struct tok_state* tok);
int _PyLexer_tok_reserve_buf(struct tok_state* tok, Py_ssize_t size);

#endif
