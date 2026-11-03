-- SPDX-License-Identifier: Apache-2.0
-- The C algorithm is the public canonical SDK source. Adaptation stays outside it.
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
    target("ur-stage-a-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to an installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/simulation_example.lua"))
set_policy("run.autobuild", false)
option("ur_stage_a_scope")
    set_default("full")
    set_values("full", "smoke")
    set_showmenu(true)
    set_description("Required Stage A suite, or explicitly selected two-case communication milestone")
option_end()
local scope = get_config("ur_stage_a_scope") or "full"
target("ur-stage-a-joint-step")
    set_kind("binary")
    -- The linker encodes the output basename in the complete Wasm module.
    -- Keep the canonical C0 basename while retaining this public test target.
    set_basename("portable-joint-step-v0-1-0")
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files(path.join(root, "example/platform/ros/portable/v0_1_0/joint_step/main.c"))
    uwvm_simulation_example({api_version = 1, sdk_root = root,
        manifest = scope == "smoke" and "communication-smoke.json" or "communication-full.json",
        driver = "driver.py", timeout_seconds = 600})
target_end()
