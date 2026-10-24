-- @file xmake.lua
-- @brief Build one complete NVIDIA application with the shared SDK provider.
-- @details Set UWVM_ROS_SDK_ROOT to the installed SDK. Deployment grants remain manual.
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

-- Run the existing artifact; compilation is a separate explicit action.
set_policy("run.autobuild", false)

-- The producer and consumer use ordinary public Xmake kinds/dependencies.
target("array_c")
    set_kind("shared")
    set_language("c")
    set_ros_platform("wasi")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("producer.c")
    add_includedirs("include", { public = true })
    set_targetdir(path.join("build", "array_c"))
    add_defines("NV_ARRAY_PRODUCER")
target_end()

target("main")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("nvidia-isaac-ros")
    set_ros2_version("jazzy")
    set_values("ros.vendor.transport", "dds")
    set_ros_scenario("original_array_c_shared")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("main.cpp")
    add_deps("array_c")
    set_targetdir(path.join("build", "main"))
target_end()
