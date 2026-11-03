-- @file xmake.lua
-- @brief Build the genuine managed shared producer and scalar Java consumer.
-- @details UWVM_ROS_SDK_ROOT may select an installed SDK. Otherwise search
-- structured parent directories; imports contain no encoded parent traversal.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local cursor = os.scriptdir()
    while true do
        if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then
            root = cursor
            break
        end
        local parent = path.directory(cursor)
        if parent == cursor then
            error("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end
        cursor = parent
    end
end
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/platform/pal/xmake/java_shared_math_tests.lua"))
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
target("math")
set_kind("shared")
set_targetdir(path.join(os.scriptdir(), "build/artifacts/math"))
set_objectdir(path.join(os.scriptdir(), "build/.objs/math"))
set_dependir(path.join(os.scriptdir(), "build/.deps/math"))
set_language("kotlin")
set_ros_platform("pal")
set_ros2_version("humble")
set_ros_config({ vendor_profile = "ros2_humble_devel" })
set_values("ros.sdk.main_class", "uwvm.pal.preload.math.Arithmetic")
add_files("Arithmetic.kt")
after_load(function(current)
    assert(current:kind() == "shared", "The common dispatcher must preserve set_kind(shared)")
end)
target_end()
target("main")
set_kind("binary")
set_targetdir(path.join(os.scriptdir(), "build/artifacts/main"))
set_objectdir(path.join(os.scriptdir(), "build/.objs/main"))
set_dependir(path.join(os.scriptdir(), "build/.deps/main"))
set_language("java")
set_ros_platform("pal")
set_ros2_version("humble")
set_ros_config({ vendor_profile = "ros2_humble_devel" })
set_values("ros.sdk.main_class", "uwvm.pal.preload.math.Main")
add_files("Main.java")
add_deps("math")
after_load(function(current)
    assert(current:kind() == "binary", "The common dispatcher must preserve set_kind(binary)")
end)
uwvm_pal_java_shared_math_tests({producer_language = "kotlin"})
target_end()
