-- SPDX-License-Identifier: Apache-2.0
-- C1 source migration: two genuine guests; pointers remain inside the planner.
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
    target("component-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to an installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/simulation_example.lua"))
set_policy("run.autobuild", false)
set_plat("wasm-wasip1")
set_arch(get_config("arch") or "wasm32")

target("ur-component-planner-kernel")
    set_kind("static")
    set_language("c")
    set_ros_platform("wasi")
    set_wasm_exceptions("noeh")
    add_files("planner_kernel.c")
target_end()

target("ur-component-planner")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_wasm_exceptions("noeh")
    add_files("planner.c")
    add_deps("ur-component-planner-kernel")
target_end()

target("ur-component-actuator")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_wasm_exceptions("noeh")
    add_files("actuator.c")
    -- One mandatory integration case. Until the shared runtime actually binds
    -- distinct private instances and authenticated channels, fail visibly before
    -- launching a VM; this is no selected/executed/passed component result.
    uwvm_register_required_test("private-memory-ROS-roundtrip", "component-isolation")
    add_tests("private-memory-ROS-roundtrip", {group = "component-isolation"})
    on_test(function(target, opt)
        opt.errors = "BLOCKED_QUALIFIED_SDK01_VM_MULTI_INSTANCE_CHANNEL_BINDING_REQUIRED"
        opt.stderr = "Component source is unqualified; actual VM executions=0; isolation passes=0\n"
        return false
    end)
target_end()
