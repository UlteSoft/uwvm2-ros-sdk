/**
 * @file ldebug.h
 * @brief Maintained Lua 5.4.8 interpreter source for the SDK Wasm runtime.
 * @details The original Lua implementation and license follow. Formatting is
 * adapted to the repository style without changing the language algorithm.
 * WASI platform hooks are declared separately in guest_config.h. The source
 * and formatting provenance are recorded in the adjacent source manifest.
 */
/*
** $Id: ldebug.h $
** Auxiliary functions from Debug Interface module
** See Copyright Notice in lua.h
*/

#ifndef ldebug_h
#define ldebug_h

#include "lstate.h"

#define pcRel(pc, p) (cast_int((pc) - (p)->code) - 1)

/* Active Lua function (given call info) */
#define ci_func(ci) (clLvalue(s2v((ci)->func.p)))

#define resethookcount(L) (L->hookcount = L->basehookcount)

/*
** mark for entries in 'lineinfo' array that has absolute information in
** 'abslineinfo' array
*/
#define ABSLINEINFO (-0x80)

/*
** MAXimum number of successive Instructions WiTHout ABSolute line
** information. (A power of two allows fast divisions.)
*/
#if !defined(MAXIWTHABS)
# define MAXIWTHABS 128
#endif

LUAI_FUNC int luaG_getfuncline(Proto const* f, int pc);
LUAI_FUNC const char* luaG_findlocal(lua_State* L, CallInfo* ci, int n, StkId* pos);
LUAI_FUNC l_noret luaG_typeerror(lua_State* L, TValue const* o, char const* opname);
LUAI_FUNC l_noret luaG_callerror(lua_State* L, TValue const* o);
LUAI_FUNC l_noret luaG_forerror(lua_State* L, TValue const* o, char const* what);
LUAI_FUNC l_noret luaG_concaterror(lua_State* L, TValue const* p1, TValue const* p2);
LUAI_FUNC l_noret luaG_opinterror(lua_State* L, TValue const* p1, TValue const* p2, char const* msg);
LUAI_FUNC l_noret luaG_tointerror(lua_State* L, TValue const* p1, TValue const* p2);
LUAI_FUNC l_noret luaG_ordererror(lua_State* L, TValue const* p1, TValue const* p2);
LUAI_FUNC l_noret luaG_runerror(lua_State* L, char const* fmt, ...);
LUAI_FUNC const char* luaG_addinfo(lua_State* L, char const* msg, TString* src, int line);
LUAI_FUNC l_noret luaG_errormsg(lua_State* L);
LUAI_FUNC int luaG_traceexec(lua_State* L, Instruction const* pc);
LUAI_FUNC int luaG_tracecall(lua_State* L);

#endif
