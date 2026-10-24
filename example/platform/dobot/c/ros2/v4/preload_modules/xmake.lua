-- @file xmake.lua
-- @brief Build real archives and separately preloaded Wasm modules through the common producer.
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

-- @brief Declare only ordinary SDK/Xmake kinds and dependency edges.
local function component(name, kind, language, source, dependencies)
    target(name)
        set_kind(kind)
        set_language(language)
        set_ros_platform("dobot")
        set_ros2_version("humble")
        set_arch(get_config("arch") or "wasm32")
        set_plat(get_config("plat") or "wasm-wasip1")
        set_ros_config({
            profile = "ros2_v4",
            catalog_version = "c5304fd4b7377df0f81cf5f6912e27c4edb3bbf7768878e3098b48021dc59011",
            abi = "uwvm-ros-v1",
            transport = "native-ros",
        })
        add_files(source)
        for _, dependency in ipairs(dependencies or {}) do
            add_deps(dependency)
        end
        before_build(function(current)
            assert(current:kind() == kind, "Install the common qualified kind contract; target kind was coerced")
        end)
    target_end()
end
component("algorithm_core", "static", "c", "algorithm_core.c")
component("io", "shared", "c", "io.c")
component("algorithm", "shared", "c", "algorithm.c", {"algorithm_core"})
component("ros_comm", "shared", "c", "ros_comm.c")
component("main", "binary", "c", "main.c", {"io", "algorithm", "ros_comm"})
component("main_cpp", "binary", "cpp", "main.cpp", {"io", "algorithm", "ros_comm"})
component("wrong_signature", "binary", "c", "wrong_signature.c", {"algorithm"})
