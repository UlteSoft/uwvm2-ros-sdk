-- SPDX-License-Identifier: Apache-2.0
local root = os.getenv("UWVM_ROS_SDK_ROOT") or path.absolute("../../../../../../../..", os.scriptdir())
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("rmw-7-3-4-qos-snapshot-component")
        set_kind("binary")
        on_load(function() raise("BLOCKED_SDK_INSTALLATION: select the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
target("rmw-7-3-4-qos-snapshot-component")
    set_kind("binary")
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_includedirs(path.join(root, "include"))
    add_files("main.c")
    uwvm_wasi_component({api_version = 1, sdk_root = root, manifest = "component.json"})
target_end()
