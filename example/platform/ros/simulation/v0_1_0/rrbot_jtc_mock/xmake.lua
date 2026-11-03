-- SPDX-License-Identifier: Apache-2.0
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("portable-joint-step-v0-1-0")
        set_kind("binary")
        on_load(function() raise("BLOCKED_SDK_INSTALLATION: set UWVM_ROS_SDK_ROOT") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
set_policy("run.autobuild", false)
target("portable-joint-step-v0-1-0")
    set_kind("binary")
    -- Ancestor SDK project selection must not relocate this example's output.
    set_targetdir(path.join(os.scriptdir(), "build"))
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    uwvm_simulation_example({api_version = 1, sdk_root = sdk,
        manifest = "simulation.json", timeout_seconds = 180})
target_end()
