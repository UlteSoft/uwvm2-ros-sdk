/**
 * @file command.c
 *
 * @brief Run a complete embedded Lua application in the genuine Lua 5.4.8 VM.
 *
 * @details The distributable is one WASI Preview 1 command. The static ROS
 * adapter calls uwvm2's original imports. Application sources and modules are
 * embedded in the Wasm data section; no host interpreter or source mount is
 * used. The empty runtime accepts a Lua chunk on stdin for runtime maintenance.
 */
#include <lauxlib.h>
#include <lua.h>
#include <lualib.h>
#include <stdint.h>
#include <stdio.h>
#include <wasi/api.h>

#include "frozen.h"

/**
 * @brief Register the statically compiled, complete ROS ABI adapter.
 *
 * @param[in,out] state Borrowed initialized state on the owning Lua thread.
 *
 * @return One Lua module table; registration may raise on allocation failure.
 */
int luaopen_roswasm_native(lua_State* state);

/**
 * @brief Finite application capacity retained in the initialized data section.
 */
#define UWVM_LUA_APPLICATION_CAPACITY 2097152u

/**
 * @brief Versioned payload slot patched by the source-only application packer.
 *
 * @details The final nonzero guard forces the complete capacity into the Wasm
 * data segment. Volatile prevents the compiler from assuming the initial zero
 * length. The packer validates exactly one slot and never changes instructions.
 */
static volatile struct
{
    unsigned char magic[16];
    unsigned char length[4];
    unsigned char source[UWVM_LUA_APPLICATION_CAPACITY];
    unsigned char guard;
} application = {{'U', 'W', 'V', 'M', '-', 'L', 'U', 'A', '-', 'A', 'P', 'P', '-', 'v', '1', '!'}, {0}, {0}, 0xa7};

/**
 * @brief Install a source module into Lua's ordinary package.preload registry.
 *
 * @param state VM stack containing a public module name and complete Lua source.
 *
 * @return Zero Lua results; syntax errors propagate through the protected call.
 *
 * @details Compilation happens inside this Wasm Lua VM. The compiled function
 * is loaded lazily by require(), with normal Lua module caching and ownership.
 */
static int preload(lua_State* state)
{
    char const* name = luaL_checkstring(state, 1);
    size_t size;
    char const* source = luaL_checklstring(state, 2, &size);
    luaL_getsubtable(state, LUA_REGISTRYINDEX, LUA_PRELOAD_TABLE);
    if (luaL_loadbufferx(state, source, size, name, "t") != LUA_OK)
    {
        return lua_error(state);
    }
    lua_setfield(state, -2, name);
    return 0;
}

/**
 * @brief Wait for one bounded WASI monotonic clock event.
 *
 * @param state VM stack containing an exact integer duration, in milliseconds.
 *
 * @return One Lua integer: zero or the original WASI error status.
 *
 * @details This performs no ROS call and never retries a service. The runtime
 * owner must explicitly grant clock and poll permissions. Host architecture
 * does not change the fixed WASI guest structures supplied by the SDK headers.
 */
static int pause_ms(lua_State* state)
{
    lua_Integer const milliseconds = luaL_checkinteger(state, 1);
    luaL_argcheck(state, milliseconds >= 0 && milliseconds <= 5000, 1, "duration must be within 0..5000 ms");
    __wasi_subscription_t subscription = {0};
    __wasi_event_t event = {0};
    __wasi_size_t count = 0;
    subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
    subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    subscription.u.u.clock.timeout = (uint64_t)milliseconds * 1000000u;
    __wasi_errno_t code = __wasi_poll_oneoff(&subscription, &event, 1, &count);
    if (code == 0)
    {
        code = count == 1 && event.type == __WASI_EVENTTYPE_CLOCK ? event.error : __WASI_ERRNO_IO;
    }
    lua_pushinteger(state, code);
    return 1;
}

/**
 * @brief Read granted WASI monotonic nanoseconds without using wall time.
 *
 * @param state Owning Lua VM; this method accepts no arguments.
 *
 * @return Nanoseconds and zero, or nil and the original WASI errno.
 *
 * @details Nanoseconds fit Lua's signed 64-bit integer for more than 292 years.
 * No grant is added. Callers must handle a revoked or absent clock permission.
 */
static int monotonic_ns(lua_State* state)
{
    __wasi_timestamp_t timestamp = 0;
    __wasi_errno_t code = __wasi_clock_time_get(__WASI_CLOCKID_MONOTONIC, 1, &timestamp);
    if (code != 0 || timestamp > INT64_MAX)
    {
        lua_pushnil(state);
        lua_pushinteger(state, code != 0 ? code : __WASI_ERRNO_OVERFLOW);
    }
    else
    {
        lua_pushinteger(state, (lua_Integer)timestamp);
        lua_pushinteger(state, 0);
    }
    return 2;
}

/**
 * @brief Load one immutable standard SDK module from the runtime's data bytes.
 *
 * @param state Initialized VM on its owning thread.
 *
 * @param name Public require() module identity.
 *
 * @param source Complete frozen source and explicit byte length.
 *
 * @param size Number of initialized bytes in source.
 *
 * @return Zero on success, otherwise a Lua loader status with an error on stack.
 */
static int freeze(lua_State* state, char const* name, unsigned char const* source, size_t size)
{
    luaL_getsubtable(state, LUA_REGISTRYINDEX, LUA_PRELOAD_TABLE);
    int const code = luaL_loadbufferx(state, (char const*)source, size, name, "t");
    if (code != LUA_OK)
    {
        return code;
    }
    lua_setfield(state, -2, name);
    lua_pop(state, 1);
    return LUA_OK;
}

/**
 * @brief Initialize the real VM, execute the embedded application, then close it.
 *
 * @param argc WASI argument count including the executable at index zero.
 *
 * @param argv Borrowed NUL-terminated argument strings owned by WASI libc.
 *
 * @return Application status clamped to 0..125, 1 for a protected Lua error,
 * or 12 when the initial Lua state allocation fails.
 *
 * @details Normal application results preserve their explicit error precedence.
 * Lua failures print their original diagnostic. The outer uwvm2 instance owns
 * cleanup after fatal traps or exhaustion; no C finalizer sends ROS requests.
 */
int main(int argc, char** argv)
{
    lua_State* state = luaL_newstate();
    if (state == NULL)
    {
        return 12;
    }
    luaL_openlibs(state);
    luaL_requiref(state, "roswasm_native", luaopen_roswasm_native, 0);
    lua_pop(state, 1);
    lua_newtable(state);
    lua_pushcfunction(state, preload);
    lua_setfield(state, -2, "preload");
    lua_pushcfunction(state, pause_ms);
    lua_setfield(state, -2, "pause_ms");
    lua_pushcfunction(state, monotonic_ns);
    lua_setfield(state, -2, "monotonic_ns");
    lua_setglobal(state, "uwvm");
    lua_createtable(state, argc, 1);
    for (int index = 0; index < argc; ++index)
    {
        lua_pushstring(state, argv[index]);
        lua_rawseti(state, -2, index);
    }
    lua_setglobal(state, "arg");
    int code = freeze(state, "roswasm", frozen_ros, sizeof(frozen_ros));
    if (code == LUA_OK)
    {
        code = freeze(state, "roswasm.wire", frozen_wire, sizeof(frozen_wire));
    }
    uint32_t length = 0;
    for (unsigned index = 0; index < 4; ++index)
    {
        length |= (uint32_t)application.length[index] << (8u * index);
    }
    if (code == LUA_OK && length > UWVM_LUA_APPLICATION_CAPACITY)
    {
        lua_pushliteral(state, "embedded Lua application exceeds its declared capacity");
        code = LUA_ERRSYNTAX;
    }
    if (code == LUA_OK)
    {
        code = length == 0 ? luaL_loadfile(state, NULL)
                           : luaL_loadbufferx(state, (char const*)application.source, length, "@application", "t");
    }
    if (code == LUA_OK)
    {
        code = lua_pcall(state, 0, 1, 0);
    }
    int result = 1;
    if (code == LUA_OK)
    {
        lua_Integer value = lua_isinteger(state, -1) ? lua_tointeger(state, -1) : 0;
        result = (int)(value < 0 ? 1 : value > 125 ? 125 : value);
    }
    else
    {
        char const* message = lua_tostring(state, -1);
        fprintf(stderr, "Lua application failed: %s\n", message == NULL ? "unknown Lua error" : message);
    }
    lua_close(state);
    if (fflush(stdout) != 0 && result == 0)
    {
        result = 5;
    }
    return result;
}
