-- @file xmake.lua
-- @brief Compose standard shared targets with one genuine Ruby business module.
-- @brief Locate the installed SDK without parent-depth imports.
-- @details UWVM_ROS_SDK_ROOT selects the installed SDK. An explicit invalid
-- path is diagnosed rather than replaced by another installation.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
local installation_error
if root then
    if not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
        installation_error = "The configured SDK root does not contain tools/xmake/ros.lua"
    end
else
    local current = path.absolute(os.scriptdir())
    local visited = {}
    while current and not visited[current] do
        visited[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then
            root = current
            break
        end
        local parent = path.directory(current)
        if parent == current or parent == "." or parent == "" then
            break
        end
        current = path.absolute(parent)
    end
    if not root then
        installation_error = "Set UWVM_ROS_SDK_ROOT to the installed SDK"
    end
end
if installation_error then
    -- Diagnostics run in Xmake's script domain, where raise is available.
    -- Returning here prevents declarations from using an unavailable SDK API.
    target("sdk-installation-required")
        set_kind("phony")
        on_load(function()
            raise(installation_error)
        end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))

set_policy("run.autobuild", false)
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")

target("io")
    set_kind("shared")
    set_language("cpp")
    set_ros_platform("wasi")
    add_files("io.cpp", {rule = "ros.wasm.source"})
    set_targetdir("build/io")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()

target("algorithm")
    set_kind("shared")
    set_language("ruby")
    set_ros_platform("leju")
    set_ros1_version("noetic")
    set_values("ros.sdk.profile", "ros1_main_packaged_ik")
    add_files("algorithm.rb", {rule = "ros.wasm.source"})
    set_targetdir("build/algorithm")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()

target("ros_comm")
    set_kind("shared")
    set_language("cpp")
    set_ros_platform("ros1")
    set_ros1_version("noetic")
    add_files("ros_comm.cpp", {rule = "ros.wasm.source"})
    set_targetdir("build/ros_comm")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()

target("main")
    set_kind("binary")
    set_language("c")
    set_ros_platform("ros1")
    set_ros1_version("noetic")
    set_ros_scenario("preload_modules")
    add_deps("io", "algorithm", "ros_comm")
    add_files("main.c", {rule = "ros.wasm.source"})
    set_targetdir("build/main")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()
