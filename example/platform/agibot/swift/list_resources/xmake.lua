-- SPDX-License-Identifier: Apache-2.0
-- @file xmake.lua
-- @brief Build the swift list_resources guest as a WebAssembly command.
-- @details The shared declarations select the guest language and Agibot adapter.
-- add_files supplies actual compiler inputs; the adapter links the guest ROS ABI,
-- validates Wasm imports and records artifact hashes. From this directory run
-- xmake, then xmake run with an explicit UWVM_ROS_RUN_CONFIG deployment. The guest
-- executes through uwvm2-ros; Python coordinates build/runtime infrastructure.
set_project("agibot_swift_list_resources")
set_version("1.1.0")
set_xmakever("2.9.8")

-- @brief Discover the installed SDK without encoding an example directory depth.
-- @details UWVM_ROS_SDK_ROOT selects an external installation. Otherwise walk parent
-- directories until this SDK's build entry is found. Source imports remain
-- platform-qualified and independent from this example's filesystem location.
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

target("example")
    set_kind("binary")
    set_default(true)
    set_language("swift")
    -- uwvm2 architecture/platform pair maps to the compiler triple wasm32-wasip1.
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_ros_platform("agibot")
    set_values("ros.sdk.profile", "ros2_sdk_v1_1_0_main")
    set_ros2_version("humble")
    set_agibot_version("1.1.0")
    set_agibot_variant("main")
    set_ros_scenario("list_resources")
    add_files("main.swift")
target_end()
