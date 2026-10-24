-- @file xmake.lua
-- @brief Build a C main, C++ shared IO, C++ archive and two C shared modules.
-- @details Ordinary public binary/shared/static and add_deps own all production.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root or not path.is_absolute(root) or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function()
            raise("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Select the same original native service and real width for every target.
local function selected(language)
    set_language(language)
    set_ros_platform("fanuc")
    set_ros2_version("jazzy")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("get_payload_value")
    set_ros_config({catalog = "complete", transport = "native-ros"})
end

target("bridge_static")
    selected("cpp")
    set_kind("static")
    add_files("static_request.cpp", "unused.cpp")
    add_includedirs("include", {public = true})
    add_defines("FANUC_REQUEST_SCALE=3", {public = true})
target_end()

target("io")
    selected("cpp")
    set_kind("shared")
    add_files("io.cpp")
target_end()

for _, name in ipairs({"algorithm", "ros_comm"}) do
    target(name)
        selected("c")
        set_kind("shared")
        add_files(name .. ".c")
    target_end()
end

target("main")
    selected("c")
    set_kind("binary")
    add_files("main.c")
    add_deps("bridge_static", "io", "algorithm", "ros_comm")
    add_ldflags("-Wl,--allow-undefined", {force = true})
target_end()
