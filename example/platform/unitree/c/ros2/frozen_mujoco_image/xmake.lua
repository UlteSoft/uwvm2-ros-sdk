-- SPDX-License-Identifier: Apache-2.0
-- Build the unchanged common image algorithm; platform names stay external.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local current = path.absolute(os.scriptdir())
    local seen = {}
    while current and not seen[current] do
        seen[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then root = current; break end
        local parent = path.directory(current)
        if parent == current then break end
        current = parent
    end
end
local support = root and path.join(root, "tools/shared/xmake/simulation_example.lua")
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) or not os.isfile(support) then
    target("unitree-mujoco-image")
        set_kind("binary")
        add_files("main.c")
        on_load(function() raise("BLOCKED_REQUIRED_SDK_AND_SHARED_SIMULATION_EXAMPLE_API_V1") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(support)
set_policy("run.autobuild", false)
target("unitree-mujoco-image")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    uwvm_simulation_example({api_version = 1, sdk_root = root,
        manifest = "scenarios.v1.json", timeout_seconds = 300})
target_end()
