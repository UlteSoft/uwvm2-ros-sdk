/**
 * @file lexer.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef _PY_LEXER_LEXER_H_
#define _PY_LEXER_LEXER_H_

#include "state.h"

int _PyTokenizer_Get(struct tok_state*, struct token*);

#endif
