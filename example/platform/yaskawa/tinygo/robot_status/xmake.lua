-- @file xmake.lua
-- @brief Build the actual source-language command as one deployable Wasm.
-- @details SDK discovery and public imports are independent of directory depth.
-- @brief Locate the installed SDK without parent-depth imports.
-- @details UWVM_ROS_SDK_ROOT is the primary installation setting.
-- An explicit invalid path is diagnosed before application declaration.
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

local sdk = root
set_policy("run.autobuild", false)

target("yaskawa-tinygo-robot_status")
    set_language("tinygo")
    set_ros_platform("yaskawa")
    set_ros2_version("jazzy")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("robot_status")
    -- @brief Select the immutable complete interface catalog, not robot firmware.
    set_ros_config({catalog = "complete", transport = "native-ros"})
    add_files("main.go")
target_end()
