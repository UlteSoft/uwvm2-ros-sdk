-- SPDX-License-Identifier: Apache-2.0
-- Version0.3.0 read-only inbound sensor family; consumes actual sample bytes.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
target("portable-sensor-digest-v0-3-0")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
target_end()
