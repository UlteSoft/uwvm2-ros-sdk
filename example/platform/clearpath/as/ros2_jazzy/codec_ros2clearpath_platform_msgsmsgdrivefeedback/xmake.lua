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

target("clearpath-as-ros2_jazzy-codec_ros2clearpath_platform_msgsmsgdrivefeedback")
    set_kind("binary")
    set_language("as")
    set_ros_platform("clearpath")
    set_ros2_version("jazzy")
    set_ros_scenario("codec_ros2clearpath_platform_msgsmsgdrivefeedback")
    set_values("ros.vendor.profile", "ros2_jazzy")
    set_values("ros.vendor.revision", "19b7fa51844109a4185a2079c51dea250bc265bc9081891918fae8f7dd5bfad4")
    set_values("ros.vendor.model", "generic")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("main.ts")
target_end()
