-- @file xmake.lua
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

target("agilex-scout-closed-loop")
    set_kind("binary")
    set_language("c")
    set_ros_platform("agilex")
    set_ros2_version("humble")
    set_ros_scenario("scout_closed_loop")
    set_values("ros.vendor.profile", "ros2")
    set_values("ros.vendor.revision", "08e28b26f6ef1dc92bee6cc163632c5f7db951a93fa893d049b201a6040beeb2")
    set_values("ros.vendor.model", "SCOUT")
    set_arch("wasm32")
    set_plat("wasm-wasip1")
    add_files("main.c")
    add_includedirs(path.join(root, "include"))
    add_ldflags("-lm", {force = true})
    uwvm_register_required_test("real-scout", "official-simulation")
    add_tests("real-scout", {group = "official-simulation"})
    on_test(function(target, opt)
        import("core.base.json")
        local configfile = os.getenv("UWVM_SCOUT_SIMULATION_CONFIG")
        assert(configfile and path.is_absolute(configfile) and os.isfile(configfile),
               "Select the explicit simulator/driver/VM inputs with UWVM_SCOUT_SIMULATION_CONFIG")
        local cfg = json.loadfile(configfile)
        local python = import("python_runtime", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).resolve()
        local parent = os.getenv("UWVM_SDK_OUTPUT")
        assert(parent and path.is_absolute(parent), "Run this test from the admitted CPU queue")
        local output = path.join(parent, "scout-test-" .. tostring(os.getpid()))
        assert(not os.exists(output), "Preserve existing test evidence; use a fresh invocation")
        os.mkdir(output)
        local argv = {"-B", path.join(target:scriptdir(), "run_simulation.py"),
                      "--sdk", root, "--wasm", path.absolute(target:targetfile())}
        for _, key in ipairs({"vm", "gateway", "native-base-report", "native-closure",
                               "native-environment", "native-sources"}) do
            assert(type(cfg[key]) == "string" and path.is_absolute(cfg[key]), "Missing explicit input: " .. key)
            table.insert(argv, "--" .. key)
            table.insert(argv, cfg[key])
        end
        local code = os.execv(python, argv, {try = true, timeout = 300000,
            envs = {UWVM_SDK_OUTPUT = output}, stdout = path.join(output, "test.stdout"),
            stderr = path.join(output, "test.stderr")})
        opt.stdout = io.readfile(path.join(output, "test.stdout")) or ""
        opt.stderr = io.readfile(path.join(output, "test.stderr")) or ""
        local receipt = path.join(output, "simulation-result.json")
        if code ~= 0 or not os.isfile(receipt) then
            opt.errors = "Actual SCOUT Wasm simulation failed; see " .. output
            return false
        end
        local result = json.loadfile(receipt)
        return result.status == "PASS" and result.guest_count == 1
            and result.independently_matched_feedback >= 100
            and result.fully_matched_odometry >= 100
            and result.owned_retirement.status == "RETIRED"
    end)
target_end()
