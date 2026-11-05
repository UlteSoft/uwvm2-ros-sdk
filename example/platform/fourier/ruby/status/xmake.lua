-- @file xmake.lua
-- @brief Build one genuine ruby fourier observation as a single Wasm command.
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
target("fourier-ruby-status")
    set_kind("binary")
    set_language("ruby")
    set_ros_platform("fourier")
    set_ros2_version("jazzy")
    set_values("ros.sdk.profile", "ros2_aurora_bridge_v1")
    set_ros_scenario("status")
    add_files("main.rb", {rule = "ros.wasm.source"})
    -- Required execution is pending the actual all-Wasm ROS/client route.
    -- Keep this project visible to Linux CI and fail instead of zero-test green.
    uwvm_register_required_test("official-ros-wasm-required", "required-wasm-guest")
    add_tests("official-ros-wasm-required", {group = "required-wasm-guest"})
    on_test(function(target, opt)
        import("core.base.json")
        local diagnostic = "BLOCKED_REQUIRED_FOURIER_WASM_ROS_STATUS: actual guest query/callback audit and official provider qualification are missing"
        local output = path.join(path.absolute(target:scriptdir()), ".uwvm-ros", "required-tests",
            path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "Refusing to overwrite a required test invocation")
        os.mkdir(output)
        json.savefile(path.join(output, "blocked.json"), {
            format = "uwvm-sdk-required-test-blocker-v1", target = target:name(),
            status = "BLOCKED", diagnostic = diagnostic,
            application = path.absolute(target:targetfile()),
            application_sha256 = os.isfile(target:targetfile()) and hash.sha256(target:targetfile()):lower() or nil,
            count_unit = "required-test-suite",
            selected = 1, executed = 0, passed = 0, failed = 0, blocked = 1, skipped = 0,
            required_operation_case_count = 3, selected_operation_cases = 0,
            executed_operation_cases = 0, blocked_operation_cases = 3,
            required_cases = {"audited-fresh-status-enters-Wasm", "denied-query-no-native-effect",
                              "bounded-callback-and-retirement"},
            missing = {"qualified guest client/query callback contract", "actual audited runtime/provider installation",
                       "corresponding official Fourier simulation"},
            xmake_pid = os.getpid(), guest_execution_started = false,
            native_ROS_application_started = false
        })
        opt.errors = diagnostic
        return false
    end)
target_end()
