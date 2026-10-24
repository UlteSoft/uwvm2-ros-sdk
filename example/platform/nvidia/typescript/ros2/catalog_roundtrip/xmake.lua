-- @file xmake.lua
-- @brief Build one genuine TypeScript ESM guest through the shared frontend.
-- @details Configure the public SDK root explicitly; run never grants permissions.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
-- Diagnose installation errors in Xmake's script domain, where raise exists.
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function()
            raise("Set UWVM_ROS_SDK_ROOT to the SDK")
        end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
target("catalog_roundtrip")
    set_kind("binary")
    set_language("typescript")
    set_ros_platform("nvidia")
    set_ros2_version("jazzy")
    set_values("ros.vendor.component", "nvidia-isaac-ros")
    set_values("ros.vendor.transport", "cpu-value")
    set_ros_scenario("catalog_roundtrip")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("main.mts")
target_end()
