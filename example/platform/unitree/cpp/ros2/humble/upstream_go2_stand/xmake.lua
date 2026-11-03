-- SPDX-License-Identifier: Apache-2.0
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
local function original_task()
    set_language("cpp")
    set_ros_platform("unitree")
    set_ros2_version("humble")
    set_ros_scenario("upstream_go2_stand")
    set_values("ros.sdk.unitree.upstream_task", "go2_stand@668d1ec5a05d1c38d3306bdca7d59f2ba3581a88")
    set_values("ros.vendor.model", "Go2")
    set_values("ros.sdk.standard", "c++20")
    set_wasm_exceptions("noeh")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_includedirs(path.join(root, "include/platform/unitree/cpp/ros2/go2_stand/compat"),
        path.join(root, "include/platform/ros2/cpp/compat/rclcpp"),
        path.join(root, "include/language/c++/include"),
        path.join(root, "src/platform/unitree/cpp/ros2/go2_stand/ported"))
end

target("unitree-upstream-go2-motor-crc")
    set_kind("static")
    original_task()
    add_files(path.join(root, "src/platform/unitree/cpp/ros2/go2_stand/ported/motor_crc.cpp"))
target_end()

target("unitree-upstream-go2-stand")
    set_kind("binary")
    original_task()
    add_deps("unitree-upstream-go2-motor-crc")
    add_defines('UWVM_RCLCPP_COMPAT_SELECTION_HEADER="platform/unitree/cpp/ros2/go2_stand/selection.hpp"')
    add_files(path.join(root, "src/platform/unitree/cpp/ros2/go2_stand/ported/go2_stand_example.cpp"))
    -- No official scene is registered yet. The common mandatory-test guard
    -- must reject this incomplete project until the real scene is provided.
target_end()

-- Explicit acceptance-only observer: production target retains its original code.
target("unitree-upstream-go2-stand-observed")
    set_kind("binary")
    original_task()
    add_deps("unitree-upstream-go2-motor-crc")
    add_defines('UWVM_RCLCPP_COMPAT_SELECTION_HEADER="platform/unitree/cpp/ros2/go2_stand/selection.hpp"')
    add_defines("UWVM_GO2_STAND_OBSERVE_CALLBACKS=1")
    add_files(path.join(root, "src/platform/unitree/cpp/ros2/go2_stand/ported/go2_stand_example.cpp"))
target_end()
