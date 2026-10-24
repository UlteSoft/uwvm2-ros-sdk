-- @file xmake.lua
-- @brief Build the command after its real shared dependency without embedding it.
target("shared-scalar-main")
    set_kind("binary")
    set_language("c")
    set_ros_platform("leju")
    set_ros1_version("noetic")
    set_values("ros.sdk.profile", "ros1_main_packaged_ik")
    set_ros_scenario("shared_scalar")
    add_deps("algorithm")
    add_files("main.c", {rule = "ros.wasm.source"})
target_end()
