-- @file xmake.lua
-- @brief Build one actual-language complete vendor value lesson into a sole Wasm.
-- @details UWVM_ROS_SDK_ROOT names the installed SDK; it supplies verified dependencies.
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
set_arch(get_config("arch") or "wasm32")
set_plat("wasm-wasip1")
target("doosan_ros1_service_response_codec")
    set_kind("binary")
    set_language("as")
    set_ros_platform("doosan")
    set_ros1_version("noetic")
    set_values("ros.sdk.vendor_version", "doosan-ros1-aws-robot-complete")
    set_values("ros.sdk.vendor_binding", "share/platform/doosan/bindings/as/doosan-ros1-aws-robot-complete.json")
    set_ros_scenario("service_response_codec")
    add_files("main.ts")
target_end()
