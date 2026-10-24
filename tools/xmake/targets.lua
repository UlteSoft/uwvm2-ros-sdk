-- @file targets.lua
-- @brief Declare independent Wasm pointer-width, WASI, and runtime profiles.
-- @details The names follow Uwvm2's own Xmake platform convention. Selection
-- identifies a requested target; each actual language/platform provider must
-- additionally validate its compiler, libraries, imports, and runtime support.
-- In particular, a memory64 request never silently compiles a wasm32 command.
-- Provider intermediates use .uwvm-ros instead of creating a local .xmake.
-- Xmake treats the existence of .xmake in the caller's working directory as a
-- request to change configuration roots. Keeping provider caches separate
-- preserves the original platform/options across configure, build and run.

set_defaultplat("wasm-wasip1")
set_defaultarchs("wasm32")
set_allowedarchs("wasm32", "wasm64")
set_allowedplats("wasm-wasip1", "wasm-wasip1-threads", "wasm-wasip2", "wasm-wasip2-threads")

option("ros-target")
set_default("detect")
set_description("Compiler triple derived from -p and -a, or an exact matching explicit triple")
set_showmenu(true)
option_end()

option("ros-run-config")
set_description("Trusted native ROS deployment JSON consumed by xmake run")
set_showmenu(true)
option_end()

option("ros-toolchain-manifest")
set_description("LLVM 23 target manifest; defaults to the installed SDK manifest")
set_showmenu(true)
option_end()

option("ros-tool-cache")
set_description("Directory for complete verified host compiler bundles; defaults to the user's cache")
set_showmenu(true)
option_end()

option("ros-exceptions")
set_default("noeh")
set_values("noeh", "eh")
set_description("LLVM 23 target library profile: noeh or modern WebAssembly exceptions")
set_showmenu(true)
option_end()

-- @brief Keep native compiler discovery out of configure/run lifecycle hooks.
-- @details Real language compilers are resolved by providers only during build.
-- A deployment host can run an existing Wasm without its development toolchain.
toolchain("ros.wasm.command")
set_kind("standalone")
on_check(function()
    return true
end)
toolchain_end()
