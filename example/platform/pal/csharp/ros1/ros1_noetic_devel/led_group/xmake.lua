-- @file xmake.lua
-- @brief Compile the genuine csharp pal led_group observation.
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
includes(path.join(root, "tools/platform/pal/xmake/required_guest_tests.lua"))

-- Run the existing artifact; compilation is a separate explicit action.
set_policy("run.autobuild", false)

set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
target("pal_led_group")
    set_language("csharp")
    set_wasm_exceptions("eh")
    set_ros_platform("pal")
    set_ros1_version("noetic")
    set_ros_config({vendor_profile = "ros1_noetic_devel"})
    set_ros_scenario("led_group")
    set_values("ros.sdk.main_class", "uwvm.pal.example.Main")
    add_files("Main.cs")
    uwvm_pal_required_guest_tests({scenario = "led_group",
        cases = {"guest-contract-normal", "guest-contract-denied", "guest-contract-invalid-input", "guest-contract-cleanup"}})
target_end()
