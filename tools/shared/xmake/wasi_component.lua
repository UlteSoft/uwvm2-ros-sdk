-- SPDX-License-Identifier: Apache-2.0
-- @brief Genuine WASI guest component tests through the standard Xmake facility.
local sdk = path.absolute("../../..", os.scriptdir())
if not uwvm_register_required_test then
    includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
end
function uwvm_wasi_component(cfg)
    local name = uwvm_register_required_test("guest-cases", "guest-component")
    if not name or type(cfg) ~= "table" then return end
    cfg.declared_target = name
    add_rules("uwvm.wasi-component.v1", cfg)
end
rule("uwvm.wasi-component.v1")
    on_load(function(target)
        import("core.base.json")
        local cfg = target:extraconf("rules", "uwvm.wasi-component.v1") or {}
        assert(cfg.api_version == 1 and cfg.declared_target == target:name() and target:kind() == "binary",
            "BLOCKED_WASI_COMPONENT_REAL_BINARY_DECLARATION")
        assert(type(cfg.sdk_root) == "string" and os.isdir(cfg.sdk_root), "BLOCKED_INSTALLED_SDK_REQUIRED")
        assert(type(cfg.manifest) == "string" and not path.is_absolute(cfg.manifest), "Use a public relative component manifest")
        for part in cfg.manifest:gmatch("[^/\\]+") do assert(part ~= ".." and part ~= ".tmp", "Private component input is forbidden") end
        local example = path.absolute(target:scriptdir())
        local original = path.absolute(os.workingdir())
        assert(original == example and os.getenv("PWD") == example, "BLOCKED_WRONG_COMPONENT_CWD_PWD")
        assert(path.absolute(os.projectdir()) == example or path.absolute(os.projectdir()) == path.absolute(cfg.sdk_root),
            "BLOCKED_FOREIGN_COMPONENT_PROJECT")
        local manifest = json.loadfile(path.join(example, cfg.manifest))
        assert(manifest.format == "uwvm-sdk-wasi-component-v1" and #manifest.cases > 0,
            "BLOCKED_ZERO_REQUIRED_GUEST_COMPONENT_CASES")
        target:data_set("uwvm.wasi-component.v1", cfg)
        target:add("tests", "guest-cases", {group = "guest-component"})
    end)
    on_test(function(target, opt)
        import("core.base.json")
        import("lib.detect.find_program")
        local cfg = target:data("uwvm.wasi-component.v1")
        local python = import("python_runtime", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true}).resolve()
        local artifacts = import("artifact_contract", {rootdir = path.join(cfg.sdk_root, "tools/xmake"), anonymous = true})
        local evidence = os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT")
        assert(not evidence or path.is_absolute(evidence), "Select an absolute writable test evidence root")
        local root = evidence and path.join(evidence, "guest-tests", artifacts.identity(target))
            or artifacts.workspace(target, "guest-tests")
        local output = path.join(root, path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "Refusing to overwrite guest test evidence")
        os.mkdir(output)
        local stdout, stderr = path.join(output, "suite.stdout"), path.join(output, "suite.stderr")
        local argv = {path.join(cfg.sdk_root, "tools/shared/python/wasi_component.py"),
            "--sdk-root", path.absolute(cfg.sdk_root), "--manifest", path.join(target:scriptdir(), cfg.manifest),
            "--wasm", path.absolute(target:targetfile()), "--output", output}
        local code = os.execv(python, argv, {try = true, curdir = target:scriptdir(), timeout = 300000,
            stdout = stdout, stderr = stderr})
        json.savefile(path.join(output, "command.json"), {format = "uwvm-sdk-guest-test-command-v1",
            argv = argv, executable = python, cwd = target:scriptdir(), pwd = os.getenv("PWD"),
            original_workingdir = os.workingdir(), projectdir = os.projectdir(), xmake_pid = os.getpid(),
            target = target:name(), target_kind = target:kind(), wasm = path.absolute(target:targetfile()), exit_code = code})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        if code ~= 0 then opt.errors = "Guest component FAILED/BLOCKED: " .. output .. "\n" .. opt.stderr; return false end
        local report = json.loadfile(path.join(output, "suite.json"))
        return report.status == "PASS" and report.selected > 0 and report.executed == report.selected
            and report.passed == report.selected and report.failed == 0 and report.blocked == 0
            and report.skipped == 0 and report.wasm_sha256_before == report.wasm_sha256_after
    end)
rule_end()
