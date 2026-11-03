-- SPDX-License-Identifier: Apache-2.0
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local current = path.absolute(os.scriptdir())
    while current do
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then root = current; break end
        local parent = path.directory(current)
        if parent == current or parent == "." or parent == "" then break end
        current = parent
    end
end
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("ur-request-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
set_policy("run.autobuild", false)
local variants = {
    {id = "ros1", backend = "ros1", domain = "universal-robots-ros1-complete", define = "UWVM_UR_ROS1"},
    {id = "ros2", backend = "ros2", domain = "universal-robots-ros2-complete", define = "UWVM_UR_ROS2"},
    {id = "polyscopex", backend = "ros2", domain = "universal-robots-polyscopex-complete", define = "UWVM_UR_POLYSCOPEX"}
}
for _, variant in ipairs(variants) do
    target("ur-request-" .. variant.id)
        set_kind("binary")
        set_language("c")
        set_ros_platform("wasi")
        set_plat("wasm-wasip1")
        set_arch(get_config("arch") or "wasm32")
        set_wasm_exceptions(get_config("wasm_exceptions") or "noeh")
        add_defines(variant.define .. "=1")
        add_defines('UWVM_VENDOR_RECORDS_HEADER="universal_robots/c/' .. variant.backend .. '/' .. variant.domain .. '/bounded_records.h"')
        add_files("main.c")
        uwvm_wasi_component({api_version = 1, sdk_root = root, manifest = variant.id .. ".json"})
    target_end()
end
