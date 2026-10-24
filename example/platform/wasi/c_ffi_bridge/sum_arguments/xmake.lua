-- @file xmake.lua
-- @brief Build the complete sum_arguments WASI command with the pinned LLVM23 closure.
-- @brief Find an installed SDK without traversing above the filesystem root.
-- @brief Locate the installed SDK without parent-depth imports.
-- @details UWVM_ROS_SDK_ROOT is the primary installation setting.
-- An explicit invalid path is
-- diagnosed rather than silently replaced by another installation.
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
-- Run uses existing Wasm; compiler restoration belongs to an explicit build.
set_policy("run.autobuild", false)
target("wasi-c_ffi_bridge-sum_arguments")
    set_language("c_ffi_bridge")
    set_ros_platform("wasi")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("main.c")
target_end()
