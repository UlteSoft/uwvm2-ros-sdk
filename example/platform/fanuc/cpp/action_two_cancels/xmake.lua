-- @file xmake.lua
-- @brief Build one original two-goal Action application through public Xmake.
-- @details Select the real width with xmake f -a wasm32 or -a wasm64.
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
target("fanuc_action_two_cancels")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("fanuc")
    set_ros2_version("jazzy")
    set_plat("wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_ros_scenario("follow_joint_trajectory")
    set_ros_config({catalog = "complete", transport = "native-ros"})
    add_files("main.cpp")
target_end()
