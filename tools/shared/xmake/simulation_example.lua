-- SPDX-License-Identifier: Apache-2.0
-- @file simulation_example.lua
-- @brief Version 1 registration for genuine official-simulator SDK examples.
-- @details Add this rule to the real application target. The standard Xmake
-- test facility builds that target and dispatches one mandatory scenario suite.
-- Platform drivers, simulator bindings and assertions remain in their examples.
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)

-- Pure DSL declarations: do not instantiate targets before native config.
local required_test_declarations = {}
function uwvm_register_required_test(testname, group)
    local name = interp_get_scopename()
    if interp_get_scopekind() ~= "target" or type(name) ~= "string"
        or type(testname) ~= "string" or #testname == 0 or type(group) ~= "string" or #group == 0 then
        on_load(function() raise("BLOCKED_REQUIRED_TEST_DECLARATION_REQUIRES_REAL_TARGET") end)
        return
    end
    required_test_declarations[name .. "/" .. testname] = {group = group}
    return name
end
function uwvm_simulation_example(cfg)
    local name = interp_get_scopename()
    if interp_get_scopekind() ~= "target" or type(name) ~= "string" or type(cfg) ~= "table" then
        on_load(function() raise("BLOCKED_SIMULATION_DECLARATION_REQUIRES_REAL_TARGET") end)
        return
    end
    cfg.declared_target = name
    uwvm_register_required_test("official-scenarios", "official-simulation")
    add_rules("uwvm.simulation-example.v1", cfg)
end

rule("uwvm.simulation-example.v1")
    on_load(function(target)
        import("core.base.json")
        local cfg = target:extraconf("rules", "uwvm.simulation-example.v1") or {}
        assert(cfg.api_version == 1, "Expected simulation-example API version 1")
        assert(cfg.declared_target == target:name(),
               "BLOCKED_SIMULATION_DECLARATION_REQUIRED: use uwvm_simulation_example(cfg) in the real target")
        assert(target:kind() == "binary", "A simulation example needs a real application target")
        assert(type(cfg.sdk_root) == "string" and os.isdir(cfg.sdk_root), "Select the installed SDK")
        for _, key in ipairs({"manifest"}) do
            local value = cfg[key]
            assert(type(value) == "string" and #value > 0 and not path.is_absolute(value),
                   "Simulation manifest/driver must be example-relative files")
            for part in value:gmatch("[^/\\]+") do
                assert(part ~= ".." and part ~= ".tmp", "Private or parent-relative simulation inputs are forbidden")
            end
            assert(os.isfile(path.join(target:scriptdir(), value)), "Missing public simulation input: " .. value)
        end
        local manifest = json.loadfile(path.join(target:scriptdir(), cfg.manifest))
        assert(manifest.format == "uwvm-sdk-simulation-example-v1", "Unknown public simulation manifest")
        assert(type(manifest.scenarios) == "table" and #manifest.scenarios > 0,
               "BLOCKED_ZERO_REQUIRED_SIMULATION_SCENARIOS")
        -- A quarantined required implementation has no executable driver.
        -- Keep the real build and mandatory native test accounting, and fail
        -- the suite before any provider or application process can start.
        local missing = manifest.required_implementation
        if missing ~= nil then
            assert(type(missing) == "table" and missing.status == "BLOCKED"
                and type(missing.diagnostic) == "string"
                and missing.diagnostic:match("^BLOCKED_")
                and type(missing.requirements) == "table" and #missing.requirements > 0,
                "BLOCKED_INVALID_REQUIRED_IMPLEMENTATION_DECLARATION")
            assert(cfg.driver == nil, "BLOCKED_QUARANTINED_PROFILE_MUST_NOT_HAVE_NATIVE_DRIVER")
        else
            local driver = cfg.driver
            assert(type(driver) == "string" and #driver > 0 and not path.is_absolute(driver),
                "A supported profile requires an example-relative public driver")
            for part in driver:gmatch("[^/\\]+") do
                assert(part ~= ".." and part ~= ".tmp", "Private simulation drivers are forbidden")
            end
            assert(os.isfile(path.join(target:scriptdir(), driver)), "Missing public simulation driver")
        end
        local original = os.workingdir and os.workingdir()
        assert(type(original) == "string" and path.is_absolute(original),
               "BLOCKED_SUPPORTED_XMAKE_ORIGINAL_WORKINGDIR_REQUIRED")
        local invocation = {xmake_pid = os.getpid(), original_workingdir = path.absolute(original),
            mutable_curdir = path.absolute(os.curdir()), projectdir = path.absolute(os.projectdir()),
            projectfile = path.absolute(os.projectfile(), os.projectdir()),
            target_scriptdir = path.absolute(target:scriptdir()), pwd = os.getenv("PWD"),
            sdk_root = path.absolute(cfg.sdk_root)}
        local operands = string.format("original=%s; mutable=%s; project=%s; projectfile=%s; script=%s; PWD=%s; SDK=%s",
            invocation.original_workingdir, invocation.mutable_curdir, invocation.projectdir,
            invocation.projectfile, invocation.target_scriptdir, tostring(invocation.pwd), invocation.sdk_root)
        assert(invocation.original_workingdir == invocation.target_scriptdir,
               "BLOCKED_WRONG_EXAMPLE_PROJECT_CWD: " .. operands)
        assert(invocation.pwd and path.is_absolute(invocation.pwd)
            and path.absolute(invocation.pwd) == invocation.original_workingdir,
               "BLOCKED_CWD_PWD_MISMATCH: " .. operands)
        assert(os.isdir(invocation.original_workingdir)
            and os.isfile(path.join(invocation.original_workingdir, "xmake.lua")),
               "BLOCKED_ORIGINAL_EXAMPLE_DIRECTORY_IDENTITY: " .. operands)
        assert(invocation.projectdir == invocation.target_scriptdir
            or (invocation.projectdir == invocation.sdk_root
                and invocation.projectfile == path.join(invocation.sdk_root, "xmake.lua")),
               "BLOCKED_FOREIGN_ANCESTOR_PROJECT: " .. operands)
        assert(invocation.mutable_curdir == invocation.projectdir
            or invocation.mutable_curdir == invocation.target_scriptdir,
               "BLOCKED_UNEXPECTED_XMAKE_CALLBACK_DIRECTORY: " .. operands)
        target:data_set("uwvm.simulation-example.invocation.v1", invocation)
        -- The shared project test action validates selection before the
        -- standard action can take its zero-target/no-build shortcut.
        target:data_set("uwvm.simulation-example.v1", cfg)
        target:add("tests", "official-scenarios", {group = "official-simulation"})
    end)
    on_test(function(target, opt)
        import("core.base.json")
        import("lib.detect.find_program")
        local cfg = assert(target:data("uwvm.simulation-example.v1"))
        local python = import("python_runtime", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true}).resolve()
        -- Keep test observations in SDK generated state. The application's
        -- target directory intentionally accepts declared deployable bytes only.
        local artifacts = import("artifact_contract", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true})
        local evidence = os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT")
        assert(not evidence or path.is_absolute(evidence), "Select an absolute writable test evidence root")
        local root = evidence and path.join(evidence, "simulation-tests", "v1", artifacts.identity(target))
            or artifacts.workspace(target, "simulation-tests")
        os.mkdir(root)
        local output = path.join(root, path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "Refusing to overwrite a simulation invocation")
        os.mkdir(output)
        local stdout = path.join(output, "suite.stdout")
        local stderr = path.join(output, "suite.stderr")
        local summary = path.join(output, "suite.json")
        local argv = {
            path.join(cfg.sdk_root, "tools/shared/python/simulation_example.py"),
            "--sdk-root", path.absolute(cfg.sdk_root),
            "--manifest", path.join(target:scriptdir(), cfg.manifest),
            "--wasm", path.absolute(target:targetfile()),
            "--output", output
        }
        if cfg.driver then
            table.insert(argv, "--driver")
            table.insert(argv, path.join(target:scriptdir(), cfg.driver))
        end
        local code, error = os.execv(python, argv, {try = true, timeout = (cfg.timeout_seconds or 300) * 1000,
            stdout = stdout, stderr = stderr, curdir = target:scriptdir()})
        json.savefile(path.join(output, "command.json"), {format = "uwvm-sdk-simulation-command-v1",
            executable = python, arguments = argv, cwd = target:scriptdir(), pwd = os.getenv("PWD"),
            target = target:name(), target_kind = target:kind(),
            application = path.absolute(target:targetfile()), exit_code = code,
            xmake_invocation = target:data("uwvm.simulation-example.invocation.v1")})
        json.savefile(path.join(root, "latest.json"), {format = "uwvm-sdk-simulation-latest-v1",
            invocation_directory = output, exit_code = code})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        if code ~= 0 then
            opt.errors = "Official simulation suite failed or BLOCKED; exit=" .. tostring(code)
                .. "; " .. tostring(error or "") .. "\n" .. opt.stderr
            return false
        end
        assert(os.isfile(summary), "Simulation driver did not create a fresh suite summary")
        local result = json.loadfile(summary)
        local passed = result.format == "uwvm-sdk-simulation-result-v1" and result.status == "PASS"
            and result.selected > 0 and result.executed == result.selected
            and result.passed == result.selected and result.failed == 0
            and result.accounting_format == "uwvm-sdk-simulation-case-accounting-v2"
            and result.required == result.selected and result.attempted == result.executed
            and result.not_run == 0 and result.not_executed == 0 and result.suite_failures == 0
            and result.blocked == 0 and result.skipped == 0
            and result.wasm_sha256_before == result.wasm_sha256_after
        if not passed then
            opt.errors = "Required simulation cases did not all execute and pass; see " .. summary
        end
        return passed
    end)
rule_end()

-- A target callback may never run when Xmake filters away every test. Keep
-- selection validation at the project action entry and delegate all building,
-- on_test dispatch, failure accounting and reporting to Xmake's native action.
task("test")
    set_category("action")
    set_menu {usage = "xmake test [options] [tests]",
        description = "Run mandatory official simulation tests with nonempty selection.",
        options = {
            {"j", "jobs", "kv", tostring(os.default_njob()), "Parallel build jobs."},
            {"g", "group", "kv", nil, "Exact official-simulation group only."},
            {"w", "workdir", "kv", nil, "Unsupported for this fixed public example."},
            {"r", "rebuild", "k", nil, "Rebuild the application."},
            {nil, "tests", "vs", nil, "Exact target/official-scenarios names only."}
        }}
    on_run(function()
        import("core.base.option")
        -- Preserve original caller/PWD while entering the selected project.
        -- Native configuration must load target objects for the first time.
        os.cd(os.projectdir())
        local names, count = required_test_declarations, 0
        for _ in pairs(names) do count = count + 1 end
        assert(count > 0, "BLOCKED_ZERO_REQUIRED_SIMULATION_SCENARIOS")
        assert(not option.get("workdir"), "BLOCKED_UNSUPPORTED_SIMULATION_WORKDIR")
        local group = option.get("group")
        local group_count = 0
        for _, info in pairs(names) do
            if not group or info.group == group then group_count = group_count + 1 end
        end
        assert(group_count > 0, "BLOCKED_ZERO_OR_UNSUPPORTED_SIMULATION_SELECTION")
        for _, name in ipairs(option.get("tests") or {}) do
            assert(names[name] and (not group or names[name].group == group),
                   "BLOCKED_ZERO_OR_UNSUPPORTED_SIMULATION_SELECTION")
        end
        import("core.base.task")
        import("core.base.json")
        import("core.project.project")
        -- A DSL declaration is not an executable Xmake test. Load the same
        -- configuration as the native action before checking its real targets.
        task.run("config", {}, {disable_dump = true})
        local selected, requested = {}, option.get("tests")
        for name, info in pairs(names) do
            if not group or info.group == group then
                if not requested or table.contains(requested, name) then
                    selected[name] = {group = info.group, attempted = 0, executed = 0}
                end
            end
        end
        local root = os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT")
        assert(not root or path.is_absolute(root), "BLOCKED_REQUIRED_TEST_EVIDENCE_ROOT")
        root = root or path.join(os.projectdir(), ".xmake", "uwvm-required-tests")
        local output = path.join(root, "required-tests", path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "BLOCKED_REQUIRED_TEST_EVIDENCE_EXISTS")
        os.mkdir(output)
        local accounting = {format = "uwvm-sdk-required-test-dispatch-v1", status = "PREFLIGHT",
            selected = 0, attempted = 0, executed = 0, tests = selected,
            xmake_actor = {pid = os.getpid()}, official_simulation_accepted = false}
        for _ in pairs(selected) do accounting.selected = accounting.selected + 1 end
        local function save()
            json.savefile(path.join(output, "dispatch.json"), accounting)
        end
        local function blocked(reason)
            accounting.status, accounting.diagnostic = "BLOCKED", reason
            save()
            raise(reason .. "; evidence=" .. output)
        end
        save()
        local actual = {}
        for _, target in ipairs(project.ordertargets()) do
            local target_callback = target:script("test")
            local rule_callbacks = {}
            for _, rule in ipairs(target:orderules()) do
                local callback = rule:script("test")
                if callback then table.insert(rule_callbacks, callback) end
            end
            local wraps_target = false
            for _, testname in ipairs(target:get("tests") or {}) do
                local full = target:name() .. "/" .. testname
                local row = selected[full]
                if row then
                    local extra = target:extraconf("tests", testname) or {}
                    local actual_group = extra.group or target:get("group")
                    if actual[full] or actual_group ~= row.group then
                        blocked("BLOCKED_REQUIRED_TEST_NATIVE_IDENTITY: " .. full)
                    end
                    -- Build-only/expected-failure tests cannot satisfy a required
                    -- successful runtime scenario or clone away its callback.
                    if extra.build_should_fail or extra.build_should_pass or extra.should_fail or extra.files then
                        blocked("BLOCKED_REQUIRED_TEST_RUNTIME_IMPLEMENTATION: " .. full)
                    end
                    if not target_callback and #rule_callbacks == 0 then
                        blocked("BLOCKED_REQUIRED_TEST_CALLBACK_MISSING: " .. full)
                    end
                    actual[full], wraps_target = true, true
                end
            end
            if wraps_target then
                -- Keep Xmake's before/after scripts, package environments,
                -- scheduling and failure accounting. Observe only its actual
                -- main test callback; a missing dispatch can never count PASS.
                target:set("test", function(loaded_target, opt)
                    local row = selected[opt.name]
                    assert(row and row.attempted == 0, "BLOCKED_REQUIRED_TEST_DUPLICATE_OR_FOREIGN_DISPATCH")
                    row.attempted, row.actor_pid = 1, os.getpid()
                    accounting.attempted = accounting.attempted + 1
                    accounting.status = "RUNNING"
                    save()
                    local passed, failure
                    local returned = try {function()
                        if target_callback then
                            passed = target_callback(loaded_target, opt)
                        else
                            for _, callback in ipairs(rule_callbacks) do passed = callback(loaded_target, opt) end
                        end
                        return true
                    end, catch {function(error) failure = tostring(error) end}}
                    if returned then
                        row.executed, row.passed = 1, passed == true
                        accounting.executed = accounting.executed + 1
                    else
                        row.error = failure or "Test callback did not return"
                    end
                    save()
                    if not returned then raise(row.error) end
                    return passed
                end)
            end
        end
        for name in pairs(selected) do
            if not actual[name] then blocked("BLOCKED_REQUIRED_TEST_NOT_IMPLEMENTED: " .. name) end
        end
        if accounting.selected == 0 then blocked("BLOCKED_ZERO_REQUIRED_SIMULATION_SCENARIOS") end
        local native = import("actions.test.main", {rootdir = os.programdir(), anonymous = true})
        local failure
        local returned = try {function()
            if type(native) == "function" then native() else native.main() end
            return true
        end, catch {function(error) failure = tostring(error) end}}
        local complete = accounting.attempted == accounting.selected and accounting.executed == accounting.selected
        for _, row in pairs(selected) do complete = complete and row.passed == true end
        accounting.status = returned and complete and "PASS" or "FAIL"
        accounting.diagnostic = failure
        save()
        if not returned then raise(failure or "Required native tests failed") end
        assert(complete, "BLOCKED_REQUIRED_TEST_DISPATCH_INCOMPLETE; evidence=" .. output)
    end)
task_end()
