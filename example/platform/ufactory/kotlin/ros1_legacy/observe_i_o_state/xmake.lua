-- @file xmake.lua
-- @brief Build one genuine kotlin ufactory/ros1_legacy command as a single Wasm.
-- @details Compilation consumes verified SDK dependencies; native ROS and the
-- installed runtime are needed only by xmake run. No policy is created here.
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

target("ufactory-ros1_legacy-kotlin-observe_i_o_state")
    set_language("kotlin")
    set_ros_platform("ufactory")
    set_ros1_version("noetic")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_ros_scenario("ros1_legacy__observe_i_o_state")
    set_ros_config({
        profile = "ros1_legacy",
        catalog_version = "9df740b076963c4931bb031c3a7d2119c03f3c7632af46b936e5ba817bb8ae57",
        abi = "uwvm-ros-v1",
        transport = "native-ros",
    })
    add_files("Main.kt")
target_end()
