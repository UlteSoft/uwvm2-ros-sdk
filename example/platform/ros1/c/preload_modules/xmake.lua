-- @brief Keep ordinary command startup with the full public C/C++ facade.
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

-- Run uses existing Wasm; compiler restoration belongs to an explicit build.
set_policy("run.autobuild", false)

-- @brief Build one application and three separately preloaded real Core modules.
option("denial-probe")
    set_default(false)
    set_showmenu(true)
option_end()

target("io")
    set_kind("shared")
    set_language("cpp")
    set_ros_platform("wasi")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("io.cpp")
    set_targetdir("build/io")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()

target("algorithm")
    set_kind("shared")
    set_language("cpp")
    set_ros_platform("wasi")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("algorithm.cpp")
    set_targetdir("build/algorithm")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
    if has_config("denial-probe") then
        add_defines("PRELOAD_DENIAL_PROBE")
    end
target_end()

target("ros_comm")
    set_kind("shared")
    set_language("cpp")
    set_ros_platform("ros1")
    set_ros1_version("noetic")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("ros_comm.cpp")
    set_targetdir("build/ros_comm")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
target_end()

target("main")
    set_kind("binary")
    set_language("c")
    -- The main selects deployment metadata; its module still has no ROS grants.
    set_ros_platform("ros1")
    set_ros1_version("noetic")
    set_ros_scenario("preload_modules")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("main.c")
    set_targetdir("build/main")
    add_defines("PRELOAD_ROS_VERSION=1")
    add_includedirs("include", {public = true})
    add_deps("io", "algorithm", "ros_comm")
    if has_config("denial-probe") then
        add_defines("PRELOAD_DENIAL_PROBE")
    end
target_end()
