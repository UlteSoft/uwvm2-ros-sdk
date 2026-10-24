-- @file xmake.lua
-- @brief Compile the genuine java trossen joint_trajectory_command observation.
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
target("trossen_joint_trajectory_command")
    set_language("java")
    set_ros_platform("trossen")
    set_ros2_version("jazzy")
    set_ros_config({vendor_profile = "ros2_jazzy"})
    set_ros_scenario("joint_trajectory_command")
    set_values("ros.sdk.main_class", "uwvm.trossen.example.Main")
    add_files("Main.java")
target_end()
