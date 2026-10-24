-- @file xmake.lua
-- @brief Build this genuine source entry into its sole deployment Wasm.
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

local sdk = root

-- Standard Xmake kinds/dependencies; no private producer or permission hook.
local requested_arch = get_config("arch") or "wasm32"
local requested_plat = get_config("plat") or "wasm-wasip1"
local specs = {
    {name = "algorithm_core", kind = "static", language = "c", file = "algorithm_core.c", filename = "libalgorithm_core.a",
            directory = ".uwvm-ros/lib"},
    {name = "io", kind = "shared", language = "c", file = "io.c", filename = "io.wasm", directory = "build"},
    {name = "algorithm", kind = "shared", language = "c", file = "algorithm.c", filename = "algorithm.wasm", directory = "build",
            archive = true},
    {name = "ros_comm", kind = "shared", language = "c", file = "ros_comm.c", filename = "ros_comm.wasm", directory = "build"},
    {name = "main", kind = "binary", language = "c", file = "main.c", filename = "main.wasm", directory = "build", dynamic = true},
    {name = "static_check_c", kind = "binary", language = "c", file = "static_main.c", filename = "static_check_c.wasm", directory =
            "static_build", archive = true, optional = true},
    {name = "static_check_cpp", kind = "binary", language = "cpp", file = "static_main.cpp", filename = "static_check_cpp.wasm",
            directory = "static_build", archive = true, optional = true},
    {name = "algorithm_wrong", kind = "shared", language = "c", file = "algorithm_wrong.c", filename = "algorithm_wrong.wasm",
            directory = "negative_build", optional = true},
}
for _, spec in ipairs(specs) do
    target(spec.name)
        set_kind(spec.kind)
        set_language(spec.language)
        set_ros_platform("franka")
        set_ros1_version("noetic")
        set_values("ros.vendor.profile", "ros1")
        set_ros_scenario("module_pipeline")
        set_arch(requested_arch)
        set_plat(requested_plat)
        set_filename(spec.filename)
        set_targetdir(spec.directory)
        if spec.optional then
            set_default(false)
        end
        if spec.archive then
            add_deps("algorithm_core")
            add_linkdirs(".uwvm-ros/lib")
            add_links("algorithm_core")
        end
        if spec.dynamic then
            add_deps("io", "algorithm", "ros_comm")
        end
        add_includedirs(path.join(sdk, "include/platform"), {public = true})
        add_files(spec.file)
    target_end()
end
