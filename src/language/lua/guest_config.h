/**
 * @file guest_config.h
 *
 * @brief Select the deterministic, single-threaded Lua5.4.8 WASI stdlib profile.
 *
 * @details These are documented upstream configuration hooks, not a replacement
 * for entropy, a host clock or POSIX signals. Pair with the exact lua_stdlib.py
 * adaptation and Lua's upstream C++ exception path with modern Wasm EH. No macro grants a filesystem,
 * clock, random, network or ROS permission. Compile every interpreter unit with
 * this same configuration; changing it requires a fresh runtime build.
 *
 * @see roswasm_lua_tmpfile_unavailable
 */
#ifndef ROSWASM_LUA_GUEST_CONFIG_H
#define ROSWASM_LUA_GUEST_CONFIG_H
#include <errno.h>
#include <stdio.h>
#include <time.h>
/**
 * @brief Supply a deterministic hash seed through Lua's upstream seed hook.
 *
 * @details The fixed 32-bit constant is public and reproducible, not entropy.
 * This route is single-threaded; it reads no clock, process ID or host pointer.
 *
 * @param[in] L Borrowed Lua state expression; evaluated once and not retained.
 *
 * @return Constant 0x6c756135; no allocation, failure, I/O or permission effect.
 *
 * @see l_randomizePivot
 */
#define luai_makeseed(L) ((void)(L), 0x6c756135u)
/**
 * @brief Supply Lua's deterministic sort-pivot seed without an ambient clock.
 *
 * @details Public fixed 32-bit constant 0x9e3779b9; it is not an entropy source.
 * Requires the same Lua5.4.8 source profile in every translation unit.
 *
 * @return Constant seed; no allocation, failure, I/O or retained state.
 *
 * @see luai_makeseed
 */
#define l_randomizePivot() (0x9e3779b9u)

/* WASIp1 supplies no tmpfile implementation or implicit directory authority.
 * Lua's ordinary io.tmpfile path returns its real unsupported-operation tuple. */
/**
 * @brief Return the profile's unsupported temporary-file result.
 *
 * @details Performs no filesystem operation or implicit directory grant. Sets
 * the current single-threaded Guest's errno to ENOTSUP; Lua's io.tmpfile wrapper
 * translates this ordinary libc failure into its usual error tuple. Requires
 * the selected WASIp1 libc; no native FILE object is allocated or transferred.
 *
 * @return Always NULL with errno=ENOTSUP; the caller owns no cleanup obligation.
 *
 * @see tmpfile
 */
inline static FILE* roswasm_lua_tmpfile_unavailable(void)
{
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Bind Lua's tmpfile call to the explicit unsupported-operation hook.
 *
 * @details Function-like configuration macro; it evaluates no argument, opens
 * no path and adds no fallback. Use only with this bounded Lua5.4.8 profile.
 *
 * @return NULL and ENOTSUP; no ownership, asynchronous work or permission change.
 *
 * @see roswasm_lua_tmpfile_unavailable
 */
#define tmpfile() roswasm_lua_tmpfile_unavailable()

/**
 * @brief Reject temporary path generation through Lua's documented stdlib hook.
 *
 * @details WASI provides no ambient writable temporary directory. os.tmpname()
 * raises its ordinary Lua error without returning a fabricated filesystem path.
 */
#define LUA_TMPNAMBUFSIZE 1
#define lua_tmpnam(buffer, error)                                                                                      \
    do                                                                                                                 \
    {                                                                                                                  \
        (void)(buffer);                                                                                                \
        (error) = 1;                                                                                                   \
    } while (0)

/**
 * @brief Report the absence of a host shell inside the Wasm interpreter.
 *
 * @param command Optional command; NULL queries shell availability.
 *
 * @return Zero for an availability query, otherwise -1 with errno=ENOTSUP.
 *
 * @details This hook never invokes a native process or forwards a command to
 * the embedding host. Lua preserves its normal os.execute() failure tuple.
 */
inline static int roswasm_lua_system_unavailable(char const* command)
{
    if (command == NULL)
    {
        return 0;
    }
    errno = ENOTSUP;
    return -1;
}

#define l_system(command) roswasm_lua_system_unavailable(command)

/**
 * @brief Report unsupported process CPU accounting in a WASI Preview 1 guest.
 *
 * @return The ISO C failure value (clock_t)-1, with errno set to ENOTSUP.
 *
 * @details No elapsed wall clock is substituted for process CPU time. Lua's
 * standard os.clock() wrapper exposes the negative unsupported result; ROS
 * subscription waits use the separate explicitly granted monotonic clock API.
 */
inline static clock_t roswasm_lua_clock_unavailable(void)
{
    errno = ENOTSUP;
    return (clock_t)-1;
}

#define clock() roswasm_lua_clock_unavailable()
#endif
