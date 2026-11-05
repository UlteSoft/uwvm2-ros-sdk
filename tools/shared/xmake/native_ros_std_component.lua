-- SPDX-License-Identifier: Apache-2.0
-- Run both zero-resource denial and real native String/Trigger transport.
-- The one Xmake test fails unless both independent suites pass.
function uwvm_native_ros_std_component(cfg)
    uwvm_wasi_component(cfg)
    on_test(function(target, opt)
        local ordinary = target:rule("uwvm.wasi-component.v1"):script("test")
        if not ordinary(target, opt) then return false end
        local deployment = os.getenv("UWVM_ROS_NATIVE_TEST_DEPLOYMENT")
        assert(deployment and path.is_absolute(deployment),
            "Select UWVM_ROS_NATIVE_TEST_DEPLOYMENT for actual native ROS 2 tests")
        local python = import("python_runtime", {rootdir=path.join(cfg.sdk_root, "tools/xmake"), anonymous=true}).resolve()
        local evidence = assert(os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT"), "Select a writable test evidence directory")
        local output = path.join(evidence, "native-" .. path.filename(os.tmpfile({ramdisk=false})))
        local command = {path.join(cfg.sdk_root, "tools/shared/python/native_ros_std_test.py"),
            "--sdk-root", cfg.sdk_root, "--wasm", path.absolute(target:targetfile()),
            "--output", output, "--deployment", deployment, "--operation", cfg.operation,
            "--architecture", target:arch()}
        if cfg.operation == "preload_modules" then
            local artifacts = import("artifact_contract", {rootdir=path.join(cfg.sdk_root,"tools/xmake"),anonymous=true})
            table.join2(command, {"--module-graph", artifacts.metadatafile(target)})
        end
        local code = os.execv(python, command, {try=true, curdir=target:scriptdir(), timeout=180000})
        if code ~= 0 then opt.errors = "Actual native ROS test failed: " .. output;return false end
        import("core.base.json")
        local report = json.loadfile(path.join(output, "native-suite.json"))
        return report.passed == true and report.retirement.status == "RETIRED"
    end)
end
