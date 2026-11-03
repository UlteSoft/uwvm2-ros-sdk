-- SPDX-License-Identifier: Apache-2.0
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("installed-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/wasi_component.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)
local function source(name, kind, file)
    target(name)
        set_wasm_kind(kind)
        set_language("c")
        set_ros_platform("wasi")
        set_plat(get_config("plat") or "wasm-wasip1")
        set_arch(get_config("arch") or "wasm32")
        set_wasm_exceptions("noeh")
        add_files(file)
        if kind == "binary" then
            add_deps("c-pointer-algorithm")
            uwvm_wasi_component({api_version = 1, sdk_root = sdk, manifest = "component.json"})
        end
    target_end()
end
source("c-pointer-algorithm", "static", "algorithm.c")
source("c-pointer-consumer", "binary", "main.c")
