-- @file xmake.lua
-- @brief Build the genuine pal decode_value C FFI caller as one Wasm command.
-- @details Requires the shared C provider and pinned LLVM23 closure.
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
target("pal_ffi_decode_value")
    set_language("c_ffi_bridge")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_ros_scenario("decode_value")
    add_includedirs(path.join(root, "include/platform"))
    add_files("Main.c", path.join(root, "src/platform/pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.c"))
target_end()
