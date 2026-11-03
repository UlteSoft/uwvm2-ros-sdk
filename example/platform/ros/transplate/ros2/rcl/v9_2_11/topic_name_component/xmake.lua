-- SPDX-License-Identifier: Apache-2.0
local root = os.getenv("UWVM_ROS_SDK_ROOT") or path.absolute("../../../../../../../..", os.scriptdir())
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("rcl-9-2-11-topic-name-component")
        set_kind("binary")
        on_load(function() raise("BLOCKED_SDK_INSTALLATION: select the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
target("rcl-9-2-11-topic-name-component")
    set_kind("binary")
    set_language("c")
    add_defines("_POSIX_C_SOURCE=200809L")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_includedirs(path.join(root, "include/platform/ros/transplate/ros2/rcl/v9_2_11/upstream/include"),
        path.join(root, "include/platform/ros/transplate/dependencies/rcutils/10ae877bb83c09555b6006b17794477376779a7b/upstream"),
        path.join(root, "include/platform/ros/transplate/dependencies/rmw/8cb94a87cf3f4049abe2d563af893517bf336930/upstream"))
    add_files("main.c", path.join(root, "src/platform/ros/transplate/ros2/rcl/v9_2_11/upstream/validate_topic_name.c"))
    for _, name in ipairs({"allocator.c", "error_handling.c", "snprintf.c", "strdup.c"}) do
        add_files(path.join(root, "src/platform/ros/transplate/dependencies/rcutils/10ae877bb83c09555b6006b17794477376779a7b/upstream", name))
    end
    uwvm_wasi_component({api_version = 1, sdk_root = root, manifest = "component.json"})
target_end()
