/**
 * @file lopnames.h
 * @brief Maintained Lua 5.4.8 interpreter source for the SDK Wasm runtime.
 * @details The original Lua implementation and license follow. Formatting is
 * adapted to the repository style without changing the language algorithm.
 * WASI platform hooks are declared separately in guest_config.h. The source
 * and formatting provenance are recorded in the adjacent source manifest.
 */
/*
** $Id: lopnames.h $
** Opcode names
** See Copyright Notice in lua.h
*/

#if !defined(lopnames_h)
# define lopnames_h

# include <stddef.h>

/* ORDER OP */

static char const* const opnames[] = {
    "MOVE",     "LOADI",   "LOADF",    "LOADK",    "LOADKX",   "LOADFALSE", "LFALSESKIP", "LOADTRUE", "LOADNIL", "GETUPVAL",   "SETUPVAL", "GETTABUP",
    "GETTABLE", "GETI",    "GETFIELD", "SETTABUP", "SETTABLE", "SETI",      "SETFIELD",   "NEWTABLE", "SELF",    "ADDI",       "ADDK",     "SUBK",
    "MULK",     "MODK",    "POWK",     "DIVK",     "IDIVK",    "BANDK",     "BORK",       "BXORK",    "SHRI",    "SHLI",       "ADD",      "SUB",
    "MUL",      "MOD",     "POW",      "DIV",      "IDIV",     "BAND",      "BOR",        "BXOR",     "SHL",     "SHR",        "MMBIN",    "MMBINI",
    "MMBINK",   "UNM",     "BNOT",     "NOT",      "LEN",      "CONCAT",    "CLOSE",      "TBC",      "JMP",     "EQ",         "LT",       "LE",
    "EQK",      "EQI",     "LTI",      "LEI",      "GTI",      "GEI",       "TEST",       "TESTSET",  "CALL",    "TAILCALL",   "RETURN",   "RETURN0",
    "RETURN1",  "FORLOOP", "FORPREP",  "TFORPREP", "TFORCALL", "TFORLOOP",  "SETLIST",    "CLOSURE",  "VARARG",  "VARARGPREP", "EXTRAARG", NULL};

#endif

