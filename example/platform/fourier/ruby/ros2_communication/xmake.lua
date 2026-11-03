-- @file xmake.lua
-- @brief Build genuine Ruby Wasm for an official ROS relay communication scenario.
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
option("qualification-stage")
    set_default("stage-a")
    set_values("stage-a", "full")
    set_showmenu(true)
    set_description("Selected qualification scope; full also requires vendor simulation")
option_end()

-- @brief Start only the public scenario harness with explicit installed inputs.
local function communication(target)
    import("core.project.config")
    import("lib.detect.find_program")
    local filename = target:values("ros.sdk.run_config") or config.get("ros-run-config")
                     or os.getenv("UWVM_STAGE_A_RUN_CONFIG")
    assert(filename and os.isfile(filename), "BLOCKED_EXPLICIT_STAGE_A_DEPLOYMENT_REQUIRED")
    local python = assert(find_program("python3"), "Install Python3 for infrastructure lifecycle control")
    os.execv(python, {
        path.join(target:scriptdir(), "stage_a.py"),
        "--sdk", root,
        "--target", "wasm32-wasip1",
        "--wasm", path.absolute(target:targetfile()),
        "--config", path.absolute(filename),
        "--qualification-scope", config.get("qualification-stage") or "stage-a",
        "--report-directory", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/stage-a")
    })
end

target("fourier-ruby-ros2-communication")
    set_kind("binary")
    set_language("ruby")
    set_ros_platform("fourier")
    set_ros2_version("jazzy")
    set_values("ros.sdk.profile", "ros2_aurora_bridge_v1")
    set_ros_scenario("status")
    add_files("main.rb", {rule = "ros.wasm.source"})
    add_tests("official-ros-communication")
    on_run(communication)
    on_test(function(target, opt)
        local failed, failure = false, nil
        try {
            function() communication(target) end,
            catch {
                function(errors)
                    failed = true
                    failure = tostring(errors or "Stage A process failed")
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
