-- Independent child projects load the same installed SDK declarations.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local cursor = path.absolute(os.scriptdir())
    while cursor do
        if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then root = cursor; break end
        local parent = path.directory(cursor)
        if parent == cursor then break end
        cursor = parent
    end
end
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
includes(path.join(os.scriptdir(), "../algorithm"))

includes(path.join(os.getenv("UWVM_ROS_SDK_ROOT"),"tools/shared/xmake/wasi_component.lua"))
-- @file xmake.lua
-- @brief Build the command after its real shared dependency without embedding it.
target("shared-scalar-main")
    set_kind("binary")
    set_language("c")
    set_ros_platform("leju")
    set_ros1_version("noetic")
    set_values("ros.sdk.profile", "ros1_main_packaged_ik")
    set_ros_scenario("shared_scalar")
    add_deps("algorithm")
    add_files("main.c", {rule = "ros.wasm.source"})
    uwvm_wasi_component({api_version=1,sdk_root=os.getenv("UWVM_ROS_SDK_ROOT"),manifest="component.json"})
target_end()
