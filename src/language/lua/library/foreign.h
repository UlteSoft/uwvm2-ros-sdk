/** @file lua_foreign.h
 * @brief Call the real scalar producer from the genuine Lua consumer.
 */
#pragma once
#include "foreign_binding.h"
#include <limits>

/** @brief Convert only actual Lua integers before the synchronous foreign call. */
static int foreign_apply_lua(lua_State* state)
{
    if(lua_gettop(state) != 2 || !lua_isinteger(state, 1) || !lua_isinteger(state, 2))
    {
        return luaL_error(state, "two exact i32 arguments required");
    }
    lua_Integer a = lua_tointeger(state, 1), b = lua_tointeger(state, 2);
    if(a < INT32_MIN || a > INT32_MAX || b < INT32_MIN || b > INT32_MAX)
    {
        return luaL_error(state, "foreign scalar range");
    }
    uint64_t value = foreign_apply(static_cast<int32_t>(a), static_cast<int32_t>(b));
    if(value > static_cast<uint64_t>(std::numeric_limits<lua_Integer>::max()))
    {
        return luaL_error(state, "the packed result exceeds signed Lua integer range");
    }
    lua_pushinteger(state, static_cast<lua_Integer>(value));
    return 1;
}

/** @brief Initialize the independently owned producer reactor. */
static int foreign_initialize_lua(lua_State* state)
{
    (void)state;
    foreign_initialize();
    return 0;
}

/** @brief Preserve the exact independent producer cleanup code. */
static int foreign_close_lua(lua_State* state)
{
    lua_pushinteger(state, foreign_close());
    return 1;
}

/** @brief Install one local table; no native object or pointer is shared. */
static int uwvm_install_foreign(lua_State* state)
{
    lua_newtable(state);
    lua_pushcfunction(state, foreign_apply_lua);
    lua_setfield(state, -2, "apply");
    lua_pushcfunction(state, foreign_initialize_lua);
    lua_setfield(state, -2, "initialize");
    lua_pushcfunction(state, foreign_close_lua);
    lua_setfield(state, -2, "close");
    lua_setglobal(state, "__foreign");
    return 0;
}
