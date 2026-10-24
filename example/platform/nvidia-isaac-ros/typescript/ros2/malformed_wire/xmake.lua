-- @file xmake.lua
-- @brief Check real TypeScript and execute emitted ESM through the shared QuickJS route.
-- @details The parent owns the one compiler/engine integration; no local hook or grants exist.
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
target("malformed_wire")
    set_kind("binary")
    set_language("typescript")
    set_ros_platform("nvidia-isaac-ros")
    set_ros2_version("jazzy")
    set_values("ros.vendor.transport", "cpu-value")
    set_ros_scenario("malformed_wire")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("main.mts")
target_end()
