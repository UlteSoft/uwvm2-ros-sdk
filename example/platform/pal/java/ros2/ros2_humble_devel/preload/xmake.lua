-- @file xmake.lua
-- @brief Build genuine Java producers and their three-module consumer.
-- @details UWVM_ROS_SDK_ROOT may select an installed SDK. Otherwise search
-- structured parent directories; imports contain no encoded parent traversal.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local cursor = os.scriptdir()
    while true do
        if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then
            root = cursor; break
        end
        local parent = path.directory(cursor)
        if parent == cursor then
            error("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end
        cursor = parent
    end
end
includes(path.join(root, "tools/xmake/ros.lua"))

-- Run the existing artifact; compilation is a separate explicit action.
set_policy("run.autobuild", false)

set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
target("io")
    set_kind("shared")
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_values("ros.sdk.main_class", "uwvm.pal.preload.Io")
    add_files("Io.java", "Denied.java")
    after_load(function(current)
        assert(current:kind() == "shared", "The common dispatcher must preserve ordinary set_kind(shared)")
    end)
target_end()
target("algorithm")
    set_kind("shared")
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_values("ros.sdk.main_class", "uwvm.pal.preload.Algorithm")
    add_files("Algorithm.java", "Denied.java")
    after_load(function(current)
        assert(current:kind() == "shared", "The common dispatcher must preserve ordinary set_kind(shared)")
    end)
target_end()
target("ros_comm")
    set_kind("shared")
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_values("ros.sdk.main_class", "uwvm.pal.preload.RosComm")
    add_files("RosComm.java")
    after_load(function(current)
        assert(current:kind() == "shared", "The common dispatcher must preserve ordinary set_kind(shared)")
    end)
target_end()
target("main")
    set_kind("binary")
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_values("ros.sdk.main_class", "uwvm.pal.preload.Main")
    add_files("Main.java", "Denied.java")
    add_deps("io", "algorithm", "ros_comm")
    after_load(function(current)
        assert(current:kind() == "binary", "The common dispatcher must preserve ordinary set_kind(binary)")
    end)
target_end()
