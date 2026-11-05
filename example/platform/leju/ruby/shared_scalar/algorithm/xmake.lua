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

-- @file xmake.lua
-- @brief Produce an actual independent Core library from original Ruby source.
target("algorithm")
    set_kind("shared")
    set_language("ruby")
    set_ros_platform("leju")
    set_ros1_version("noetic")
    set_values("ros.sdk.profile", "ros1_main_packaged_ik")
    set_ros_scenario("shared_scalar")
    add_files("algorithm.rb", {rule = "ros.wasm.source"})
target_end()

-- A standalone library test runs the maintained Wasm consumer against this
-- actual Ruby reactor. Inclusion by the main project only declares the library.
if path.absolute(os.projectdir()) == path.absolute(os.scriptdir()) then
    includes(path.join(root, "tools/shared/xmake/wasi_component.lua"))
    target("algorithm-contract")
        set_kind("binary")
        set_language("c")
        set_ros_platform("leju")
        set_ros1_version("noetic")
        set_values("ros.sdk.profile", "ros1_main_packaged_ik")
        set_ros_scenario("shared_scalar")
        add_deps("algorithm")
        add_files("../main/main.c", {rule = "ros.wasm.source"})
        uwvm_wasi_component({api_version=1,sdk_root=root,manifest="component.json"})
    target_end()
end
