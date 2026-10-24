-- @file xmake.lua
-- @brief Compile the genuine vbnet robotis version_info observation.
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
target("robotis_version_info")
    set_language("vbnet")
    set_wasm_exceptions("eh")
    set_ros_platform("robotis")
    set_ros1_version("noetic")
    set_ros_config({vendor_profile = "noetic"})
    set_ros_scenario("version_info")
    set_values("ros.sdk.main_class", "uwvm.robotis.example.Main")
    add_files("Main.vb")
target_end()
