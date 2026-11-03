-- @file xmake.lua
-- @brief Build a genuine php typed publisher component as one Wasm command.
-- @details Set UWVM_ROS_SDK_ROOT to an installed SDK, or place this example inside
-- its distribution. Compilation needs Xmake and verified SDK inputs only.
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
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)
target("fourier-php-publisher-api")
    set_kind("binary")
    set_language("php")
    set_ros_platform("fourier")
    set_ros2_version("jazzy")
    set_values("ros.sdk.profile", "ros2_aurora_bridge_v1")
    set_ros_scenario("status")
    add_files("main.php", {rule = "ros.wasm.source"})
    add_tests("publisher-api")
    on_test(function(target, opt)
        import("core.project.config")
        local deployment = target:values("ros.sdk.run_config") or config.get("ros-run-config")
                           or os.getenv("UWVM_ROS_RUN_CONFIG")
        if not deployment or not os.isfile(deployment) then
            opt.errors = "BLOCKED_GUEST_RUNTIME_CONFIGURATION_REQUIRED: select an explicit installed uwvm2-ros deployment for the6 required publisher/echo assertions and explicit publish/echo grants"
            return false
        end
        local previous = os.curdir()
        os.cd(path.absolute(target:scriptdir()))
        local failed, failure = false, nil
        try {
            function()
                import("dispatch", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).run(target)
            end,
            catch {
                function(errors)
                    failed = true
                    failure = tostring(errors or "Guest runtime failed")
                end
            },
            finally {
                function()
                    os.cd(previous)
                end
            }
        }
        if failed then
            print(failure)
            opt.errors = failure
            return false
        end
        return true
    end)
target_end()
