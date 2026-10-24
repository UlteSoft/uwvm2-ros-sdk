-- SPDX-License-Identifier: Apache-2.0
-- @file xmake.lua
-- @brief Build real TypeScript libraries using ordinary Xmake target kinds.
-- @details Source is type-checked by the shared Microsoft frontend. Emitted
-- JavaScript runs in the same genuine QuickJS core used by JavaScript clients.
-- No application is executed by the host compiler. Runtime authority must be
-- configured explicitly before xmake run; this arithmetic example needs no ROS.
-- @brief Locate the installed SDK without parent-depth imports.
-- @details UWVM_ROS_SDK_ROOT selects the installed SDK. An explicit invalid
-- path is diagnosed rather than replaced by another installation.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
local installation_error
if root then
    if not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
        installation_error = "The configured SDK root does not contain tools/xmake/ros.lua"
    end
else
    local current = path.absolute(os.scriptdir())
    local visited = {}
    while current and not visited[current] do
        visited[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then
            root = current
            break
        end
        local parent = path.directory(current)
        if parent == current or parent == "." or parent == "" then
            break
        end
        current = path.absolute(parent)
    end
    if not root then
        installation_error = "Set UWVM_ROS_SDK_ROOT to the installed SDK"
    end
end
if installation_error then
    -- Diagnostics run in Xmake's script domain, where raise is available.
    -- Returning here prevents declarations from using an unavailable SDK API.
    target("sdk-installation-required")
    set_kind("phony")
    on_load(function()
        raise(installation_error)
    end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))

set_policy("run.autobuild", false)

-- @brief Select a real archive or shared .wasm with an owned guest-language state.
target("algorithm")
    set_kind("shared")
    set_language("typescript")
    set_ros_platform("wasi")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_wasm_exceptions("noeh")
    add_files("algorithm.ts")
target_end()

-- @brief Declare normal linkage; a shared dependency becomes an explicit preload.
target("consumer")
    set_kind("binary")
    set_language("js")
    set_ros_platform("wasi")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_wasm_exceptions("noeh")
    add_files("consumer.mjs")
    add_deps("algorithm")
target_end()
