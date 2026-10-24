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

-- @brief Declare each module through the shared SDK dispatcher and ordinary Xmake kinds.
-- @details Shared targets use the public owned-memory Core preload model. Only
-- the explicit deployment can assign WASI/ROS rights to the loaded module names.
-- @param name Stable module identity used by preload and permission declarations.
-- @param language Genuine source-language selector for this producer.
-- @param platform Common WASI or original NVIDIA ROS platform.
-- @param source Translation unit belonging exclusively to the module.
-- @param definition Optional producer macro selecting exported module functions.
-- @return None; the ordinary Xmake target is fully declared.
local function module_target(name, language, platform, source, definition)
    target(name)
        set_kind(name == "main" and "binary" or "shared")
        set_language(language)
        set_ros_platform(platform)
        if platform ~= "wasi" then
            set_ros2_version("jazzy")
            set_values("ros.vendor.transport", "dds")
        end
        set_ros_scenario("original_array_modules")
        set_arch(get_config("arch") or "wasm32")
        set_plat("wasm-wasip1")
        add_files(source)
        add_includedirs("include", { public = true })
        set_targetdir(path.join("build", name))
        if definition then
            add_defines(definition)
        end
        if name == "main" then
            add_deps("io", "algorithm", "ros_comm")
        end
    target_end()
end

module_target("io", "c", "wasi", "io.c", "NV_BUILD_IO")
module_target("algorithm", "cpp", "wasi", "algorithm.cpp", "NV_BUILD_ALGORITHM")
module_target("ros_comm", "c", "nvidia-isaac-ros", "ros_comm.c", "NV_BUILD_ROS_COMM")
module_target("main", "c", "nvidia-isaac-ros", "main.c", nil)
