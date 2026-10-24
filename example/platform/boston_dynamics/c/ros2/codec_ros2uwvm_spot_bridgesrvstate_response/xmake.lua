-- @file xmake.lua
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

target("boston_dynamics-c-ros2-codec_ros2uwvm_spot_bridgesrvstate_response")
    set_kind("binary")
    set_language("c")
    set_ros_platform("boston_dynamics")
    set_ros2_version("jazzy")
    set_ros_scenario("codec_ros2uwvm_spot_bridgesrvstate_response")
    set_values("ros.vendor.profile", "ros2")
    set_values("ros.vendor.revision", "522dfdda19975e56b369ea3b625a83e94536b2497843517b1802aca4f25eaddc")
    set_values("ros.vendor.model", "Spot")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("main.c")
target_end()
