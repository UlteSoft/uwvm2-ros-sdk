-- @file xmake.lua
-- @brief Compile the genuine java hello_robot joint_trajectory observation.
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
target("hello_robot_joint_trajectory")
    set_language("java")
    set_ros_platform("hello_robot")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "mobile_fjt_humble"})
    set_ros_scenario("joint_trajectory")
    set_values("ros.sdk.main_class", "uwvm.hello_robot.example.Main")
    add_files("Main.java")
target_end()
