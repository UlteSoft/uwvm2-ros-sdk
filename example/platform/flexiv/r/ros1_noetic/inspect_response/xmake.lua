-- @file xmake.lua
-- @brief Build this genuine source entry into its sole deployment Wasm.
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

-- Run the existing artifact; compilation is a separate explicit action.
set_policy("run.autobuild", false)

local sdk = root

target("flexiv-r-ros1_noetic-inspect_response")
    set_kind("binary")
    set_language("r")
    set_ros_platform("flexiv")
    set_ros1_version("noetic")
    set_values("ros.vendor.profile", "ros1_noetic")
    set_ros_scenario("inspect_response")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_values("ros.sdk.modules", {
    {name = "ros/r/roswasm/wire", path = "include/platform/ros/r/roswasm/wire.R"},
    {name = "flexiv/r/ros1/noetic/records", path = "include/platform/flexiv/r/ros1/flexiv-ros1-noetic-complete/records.R"},
    })
    add_files("main.R")

target_end()
