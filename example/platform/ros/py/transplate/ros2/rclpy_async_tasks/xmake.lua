-- SPDX-License-Identifier: Apache-2.0
-- Compile the Python application and real Wasm bridge with the existing core.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local current, seen = path.absolute(os.scriptdir()), {}
    while current and not seen[current] do
        seen[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then root = current; break end
        local parent = path.directory(current)
        if parent == current then break end
        current = parent
    end
end
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("rclpy-wasm-async-tasks")
        set_kind("binary")
        add_files("main.py")
        on_load(function() raise("BLOCKED_REQUIRED_INSTALLED_ROS_SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)
target("rclpy-wasm-async-tasks")
    set_kind("binary")
    set_targetdir("$(builddir)/artifacts")
    set_language("py")
    set_ros_platform("ros")
    set_ros2_version("jazzy")
    set_ros_scenario("publish_string")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    set_values("ros.sdk.python.transplate", "rclpy-jazzy-async-tasks-v2")
    add_files("main.py")
    -- Existing SDK01 consumer: actual stopped-exec gate and genuine guest run.
    -- Guest component PASS never supplies native ROS/no-effect or isolation PASS.
    uwvm_wasi_component({api_version = 1, sdk_root = root,
        manifest = "guest-cases.json"})
target_end()
