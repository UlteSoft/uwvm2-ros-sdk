/**
 * @file lua_module.cpp
 * @brief Call genuine Lua functions through a scalar-only Wasm library boundary.
 * @details The exact modern-EH Lua core is reused. Lua owns all mutable state;
 * its protected call catches language errors before they cross the Wasm export.
 */
#include <lauxlib.h>
#include <lua.h>
#include <lualib.h>
#include <cstdint>
#include <limits>
#include "module_source.h"
#if defined(UWVM_CONSUMER_HOOKS)
# include "foreign.h"
#endif

static lua_State* state;
static bool entered;

/** @brief Close the retained interpreter exactly once without sending a ROS call. */
extern "C" uint32_t uwvm_module_close()
{
    if(entered)
    {
        return 16;
    }
    if(state != nullptr)
    {
        lua_close(state);
        state = nullptr;
    }
    return 0;
}

/** @brief Evaluate the original source in this Wasm module's genuine Lua VM. */
static uint32_t initialize()
{
    if(state != nullptr)
    {
        return 0;
    }
    state = luaL_newstate();
    if(state == nullptr)
    {
        return 12;
    }
    luaL_openlibs(state);
#if defined(UWVM_CONSUMER_HOOKS)
    if(uwvm_install_foreign(state) != 0)
    {
        uwvm_module_close();
        return 12;
    }
#endif
    int code = luaL_loadbufferx(state, reinterpret_cast<char const*>(module_source), sizeof(module_source) - 1, "@/__uwvm_source__/module.lua", "t");
    if(code == LUA_OK)
    {
        code = lua_pcall(state, 0, 0, 0);
    }
    if(code != LUA_OK)
    {
        uwvm_module_close();
        return 22;
    }
    return 0;
}

/**
 * @brief Call the source-defined apply function with exact i32 values.
 * @return Packed errno/result scalars; no module-owned pointer escapes.
 * @details The module retains state until close. Reentry is refused with16;
 * language errors, booleans, fractions and out-of-range results return22.
 */
extern "C" uint64_t uwvm_module_apply(int32_t a, int32_t b)
{
    if(entered)
    {
        return UINT64_C(16) << 32;
    }
    uint32_t error = initialize();
    if(error)
    {
        return uint64_t{error} << 32;
    }
    entered = true;
    int top = lua_gettop(state);
    lua_getglobal(state, "apply");
    lua_pushinteger(state, a);
    lua_pushinteger(state, b);
    int code = lua_pcall(state, 2, 1, 0);
    int32_t value{};
    if(code != LUA_OK || !lua_isinteger(state, -1))
    {
        error = 22;
    }
    else
    {
        lua_Integer result = lua_tointeger(state, -1);
        if(result < std::numeric_limits<int32_t>::min() || result > std::numeric_limits<int32_t>::max())
        {
            error = 22;
        }
        else
        {
            value = static_cast<int32_t>(result);
        }
    }
    lua_settop(state, top);
    entered = false;
    return uint64_t{error} << 32 | (error ? 0 : static_cast<uint32_t>(value));
}

/** @brief Evaluate a command body in the genuine engine and release its owned state.
 * @return Original initialization error or completed cleanup status.
 * @details No source-defined function is required for a command. Module libraries
 * instead retain their state until their explicit scalar close export is called.
 */
extern "C" uint32_t uwvm_module_execute(void)
{
    if(entered)
    {
        return 16;
    }
    uint32_t error = initialize();
    return error != 0 ? error : uwvm_module_close();
}
