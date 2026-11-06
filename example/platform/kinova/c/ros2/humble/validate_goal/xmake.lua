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
target("kinova-c-ros2_humble-validate_goal")
    set_language("c")
    set_ros_platform("kinova")
    set_ros2_version("humble")
    set_values("ros.vendor.profile", "ros2_humble")
    set_ros_scenario("validate_goal")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    add_files("main.c")


    -- Each assertion executes inside the compiled Wasm, never in a host client.
    uwvm_register_required_test("guest-bounds", "required-wasm-guest")
    add_tests("guest-bounds", {group = "required-wasm-guest", runargs = {"--guest-test", "bounds"}})
    uwvm_register_required_test("guest-sequence", "required-wasm-guest")
    add_tests("guest-sequence", {group = "required-wasm-guest", runargs = {"--guest-test", "sequence"}})
    uwvm_register_required_test("guest-codec", "required-wasm-guest")
    add_tests("guest-codec", {group = "required-wasm-guest", runargs = {"--guest-test", "codec"}})
    on_test(function(target, opt)
        import("core.base.json")
        import("lib.detect.find_program")
        local configfile = os.getenv("UWVM_ROS_KINOVA_GUEST_TEST_CONFIG")
        assert(configfile and os.isfile(configfile), "BLOCKED_REQUIRED_KINOVA_GUEST_TEST_CONFIG")
        local deployment = json.loadfile(configfile)
        assert(deployment.format == "uwvm-ros-command-run-v1"
            and deployment.target == target:arch() .. "-wasip1"
            and deployment.backend == "ros2" and deployment.distribution == "humble",
            "BLOCKED_EXACT_KINOVA_GUEST_RUNTIME_PROFILE")
        local runtime = assert(find_program(deployment.runtime), "BLOCKED_REQUIRED_UWVM2_ROS_RUNTIME")
        local expected = deployment.runtime_sha256
        assert(type(expected) == "string" and #expected == 64
            and expected:match("^[0-9a-f]+$") and hash.sha256(runtime):lower() == expected,
            "BLOCKED_EXACT_UWVM2_ROS_RUNTIME_SHA256")
        local arguments = import("wasi_policy", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).test_arguments(
            deployment.runtime_arguments, deployment.wasi_policy, {main=path.absolute(target:targetfile())})
        local aot = false
        for _, argument in ipairs(arguments) do
            assert(argument ~= "--run" and argument ~= "-r"
                and not argument:find("interpreter", 1, true)
                and not argument:find("unwind", 1, true),
                "BLOCKED_GUEST_RUN_OWNERSHIP_AND_MANDATORY_UNWIND")
            if argument == "--runtime-aot" or argument == "-Raot" then aot = true end
        end
        assert(aot, "BLOCKED_EXPLICIT_NATIVE_AOT_RUNTIME_REQUIRED")
        local runargs = opt.runargs or {}
        local group = runargs[2]
        assert(runargs[1] == "--guest-test"
            and ({bounds = true, sequence = true, codec = true})[group] and #runargs == 2,
            "BLOCKED_UNKNOWN_KINOVA_GUEST_ASSERTION_GROUP")
        local wasm = path.absolute(target:targetfile())
        local before = hash.sha256(wasm):lower()
        local directory = path.join(target:scriptdir(), ".uwvm-ros", "guest-tests", "v1")
        os.mkdir(directory)
        local attempt = path.join(directory, path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(attempt), "Refusing to overwrite a guest test attempt")
        os.mkdir(attempt)
        local stdout, stderr = path.join(attempt, "stdout.log"), path.join(attempt, "stderr.log")
        table.join2(arguments, {"--run", wasm, "--guest-test", group})
        local code, errors = import("pipe_run", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).execute(runtime, arguments, {try = true, timeout = 30000,
            stdout = stdout, stderr = stderr, curdir = target:scriptdir(), envs = {TMPDIR = attempt}})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        local actual_group, assertions, failures =
            opt.stdout:match("kinova_guest_contract_v1 group=(%w+) assertions=(%d+) failures=(%d+)")
        local native_unwind = opt.stderr .. opt.stdout
        native_unwind = native_unwind:gsub("\27%[[0-?]*[ -/]*[@-~]", "")
        local passed = code == 0 and actual_group == group and tonumber(assertions)
            and tonumber(assertions) >= ({bounds = 70, sequence = 11, codec = 64})[group]
            and tonumber(failures) == 0 and hash.sha256(wasm):lower() == before
            and native_unwind:find("[unwind-check] status=ok", 1, true)
            and not native_unwind:find("body-fallback=yes", 1, true)
            and (native_unwind:find("body-fallback=no", 1, true)
                or native_unwind:find("Resolved runtime configuration: mode=full_compile, compiler=llvm_jit_only, "
                    .. "uwvm-int-translation=disabled, llvm-jit-ir-translation=enabled.", 1, true))
        json.savefile(path.join(attempt, "result.json"), {
            format = "kinova-guest-contract-test-v1", category = "GUEST_COMPONENT_NOT_OFFICIAL_SIMULATION",
            group = group, assertions = tonumber(assertions), failures = tonumber(failures),
            actual_guest_marker = actual_group, runtime = runtime, runtime_sha256 = expected,
            wasm_sha256_before = before, wasm_sha256_after = hash.sha256(wasm):lower(),
            command = arguments, cwd = target:scriptdir(), exit_code = code,
            xmake_pid = os.getpid(), status = passed and "PASS" or "FAIL_OR_BLOCKED"})
        if not passed then opt.errors = "Required Wasm assertions/native unwind failed: " .. tostring(errors or code) end
        return passed and true or false
    end)

target_end()
