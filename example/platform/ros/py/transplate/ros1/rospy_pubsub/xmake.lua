-- SPDX-License-Identifier: Apache-2.0
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
    target("rospy-wasm-pubsub")
        set_kind("binary")
        add_files("main.py")
        on_load(function() raise("BLOCKED_REQUIRED_INSTALLED_ROS_SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/platform/ros/xmake/python_transplate_tests.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)
target("rospy-wasm-pubsub")
    set_kind("binary")
    set_targetdir("$(builddir)/artifacts")
    set_language("py")
    set_ros_platform("ros")
    set_ros1_version("noetic")
    set_ros_scenario("publish_string")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    set_values("ros.sdk.python.transplate", "rospy-noetic-pubsub-v1")
    add_files("main.py")
    uwvm_python_transplate_native({api_version = 1, sdk_root = root, backend = "ros1"})
target_end()
