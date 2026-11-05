-- SPDX-License-Identifier: Apache-2.0
local sdk = path.absolute("../../../..", os.scriptdir())
if not uwvm_register_required_test then
    includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
end
function uwvm_python_transplate_native(cfg)
    local name = uwvm_register_required_test("native-python-guest", "native-ros")
    if not name or type(cfg) ~= "table" then return end
    cfg.declared_target = name
    add_rules("uwvm.python-transplate-native.v1", cfg)
end
rule("uwvm.python-transplate-native.v1")
    on_load(function(target)
        local cfg = target:extraconf("rules", "uwvm.python-transplate-native.v1") or {}
        assert(cfg.api_version == 1 and cfg.declared_target == target:name() and target:kind() == "binary",
            "Select the genuine Python/Wasm binary target")
        assert(cfg.backend == "ros1" or cfg.backend == "ros2", "Select the native ROS backend")
        assert(type(cfg.sdk_root) == "string" and os.isdir(cfg.sdk_root), "Installed SDK required")
        assert(path.absolute(os.workingdir()) == path.absolute(target:scriptdir())
            and os.getenv("PWD") == path.absolute(target:scriptdir()), "Use the example working directory")
        target:data_set("uwvm.python-transplate-native.v1", cfg)
        target:add("tests", "native-python-guest", {group = "native-ros"})
    end)
    on_test(function(target, opt)
        import("core.base.json")
        local cfg = target:data("uwvm.python-transplate-native.v1")
        local selected = os.getenv("UWVM_ROS_PYTHON_NATIVE_TEST_DEPLOYMENT")
        assert(selected and path.is_absolute(selected), "Select UWVM_ROS_PYTHON_NATIVE_TEST_DEPLOYMENT")
        local deployment = json.loadfile(selected)
        assert(deployment.format == "uwvm-sdk-python-transplate-native-v1" and deployment.backend == cfg.backend,
            "Select the matching explicit native Python/Wasm deployment")
        local seconds = deployment.limits and deployment.limits.timeout_seconds
        assert(type(seconds) == "number" and seconds >= 1 and seconds <= 3600 and seconds == math.floor(seconds),
            "Select a finite test deadline")
        local python = import("python_runtime", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true}).resolve()
        local artifacts = import("artifact_contract", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true})
        local evidence = os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT")
        assert(not evidence or path.is_absolute(evidence), "Select an absolute evidence root")
        local root = evidence and path.join(evidence, "native-python", artifacts.identity(target))
            or artifacts.workspace(target, "native-python")
        local output = path.join(root, path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "Refusing to overwrite native evidence")
        os.mkdir(output)
        local fixture = path.join(output, "fixture")
        local stdout, stderr = path.join(output, "suite.stdout"), path.join(output, "suite.stderr")
        local argv = {path.join(cfg.sdk_root, "tools/shared/python/native_python_transplate_test.py"),
            "--sdk-root", path.absolute(cfg.sdk_root), "--manifest", path.join(target:scriptdir(), "guest-cases.json"),
            "--wasm", path.absolute(target:targetfile()), "--output", fixture,
            "--backend", cfg.backend, "--deployment", selected}
        local code = os.execv(python, argv, {try = true, curdir = target:scriptdir(),
            timeout = (seconds + 120) * 1000, stdout = stdout, stderr = stderr})
        json.savefile(path.join(output, "command.json"), {format = "uwvm-sdk-native-python-test-command-v1",
            argv = argv, executable = python, cwd = target:scriptdir(), pwd = os.getenv("PWD"),
            target = target:name(), wasm = path.absolute(target:targetfile()), exit_code = code})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        if code ~= 0 then opt.errors = "Native Python/Wasm test failed: " .. output .. "\n" .. opt.stderr; return false end
        local report = json.loadfile(path.join(fixture, "suite.json"))
        return report.status == "PASS" and report.guest_exit == 0 and report.observer_exit == 0
            and report.actual_vm_fd_exec and report.pins_unchanged
            and report.retirement.status == "RETIRED"
            and report.wasm_sha256_before == report.wasm_sha256_after
    end)
rule_end()
