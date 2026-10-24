/**
 * @file ltable.h
 * @brief Maintained Lua 5.4.8 interpreter source for the SDK Wasm runtime.
 * @details The original Lua implementation and license follow. Formatting is
 * adapted to the repository style without changing the language algorithm.
 * WASI platform hooks are declared separately in guest_config.h. The source
 * and formatting provenance are recorded in the adjacent source manifest.
 */
/*
** $Id: ltable.h $
** Lua tables (hash)
** See Copyright Notice in lua.h
*/

#ifndef ltable_h
#define ltable_h

#include "lobject.h"

#define gnode(t, i) (&(t)->node[i])
#define gval(n) (&(n)->i_val)
#define gnext(n) ((n)->u.next)

/*
** Clear all bits of fast-access metamethods, which means that the table
** may have any of these metamethods. (First access that fails after the
** clearing will set the bit again.)
*/
#define invalidateTMcache(t) ((t)->flags &= ~maskflags)

/* true when 't' is using 'dummynode' as its hash part */
#define isdummy(t) ((t)->lastfree == NULL)

/* allocated size for hash nodes */
#define allocsizenode(t) (isdummy(t) ? 0 : sizenode(t))

/* returns the Node, given the value of a table entry */
#define nodefromval(v) cast(Node*, (v))

LUAI_FUNC const TValue* luaH_getint(Table* t, lua_Integer key);
LUAI_FUNC void luaH_setint(lua_State* L, Table* t, lua_Integer key, TValue* value);
LUAI_FUNC const TValue* luaH_getshortstr(Table* t, TString* key);
LUAI_FUNC const TValue* luaH_getstr(Table* t, TString* key);
LUAI_FUNC const TValue* luaH_get(Table* t, TValue const* key);
LUAI_FUNC void luaH_set(lua_State* L, Table* t, TValue const* key, TValue* value);
LUAI_FUNC void luaH_finishset(lua_State* L, Table* t, TValue const* key, TValue const* slot, TValue* value);
LUAI_FUNC Table* luaH_new(lua_State* L);
LUAI_FUNC void luaH_resize(lua_State* L, Table* t, unsigned int nasize, unsigned int nhsize);
LUAI_FUNC void luaH_resizearray(lua_State* L, Table* t, unsigned int nasize);
LUAI_FUNC void luaH_free(lua_State* L, Table* t);
LUAI_FUNC int luaH_next(lua_State* L, Table* t, StkId key);
LUAI_FUNC lua_Unsigned luaH_getn(Table* t);
LUAI_FUNC unsigned int luaH_realasize(Table const* t);

#if defined(LUA_DEBUG)
LUAI_FUNC Node* luaH_mainposition(Table const* t, TValue const* key);
#endif

#endif
