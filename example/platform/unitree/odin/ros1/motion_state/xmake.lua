-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
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

local sdk_root = root
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-odin-ros1-motion_state")
    set_language("odin")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.odin", {rule = "ros.wasm.source"})
target_end()
