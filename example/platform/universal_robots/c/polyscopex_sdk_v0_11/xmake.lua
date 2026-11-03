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
    target("psx011-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
set_policy("run.autobuild", false)
target("psx011-facade-contract")
    set_kind("binary")
    set_language("c")
    set_languages("c11")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_wasm_exceptions(get_config("wasm_exceptions") or "noeh")
    add_files("main.c")
    uwvm_wasi_component({api_version = 1, sdk_root = root, manifest = "contract-cases.json"})
target_end()
target("psx011-live-client")
    set_kind("binary")
    set_language("c")
    set_languages("c11")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_wasm_exceptions(get_config("wasm_exceptions") or "noeh")
    add_files("live_client.c")
target_end()
