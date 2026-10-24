-- @file xmake.lua
-- @brief Produce an actual independent Core library from original Ruby source.
target("algorithm")
    set_kind("shared")
    set_language("ruby")
    set_ros_platform("leju")
    set_ros1_version("noetic")
    set_values("ros.sdk.profile", "ros1_main_packaged_ik")
    set_ros_scenario("shared_scalar")
    add_files("algorithm.rb", {rule = "ros.wasm.source"})
target_end()
