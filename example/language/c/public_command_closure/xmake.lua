-- SPDX-License-Identifier: Apache-2.0
-- One genuine command selected through the installed SDK ancestor.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function() raise("BLOCKED_SDK_INSTALLATION: set UWVM_ROS_SDK_ROOT") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/wasi_component.lua"))
set_policy("run.autobuild", false)
target("sdk-public-child-command")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    uwvm_wasi_component({api_version = 1, sdk_root = sdk, manifest = "component.json"})
target_end()
