-- Exercise the original four-module Java graph and native publisher ownership.
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)
function uwvm_pal_preload_tests()
    local cases = {"guest-contract-normal", "guest-contract-denied",
                   "guest-contract-invalid-input", "guest-contract-cleanup", "guest-contract-boundary-denied"}
    for _, name in ipairs(cases) do
        uwvm_register_required_test(name, "required-wasm-guest")
        add_tests(name, {group = "required-wasm-guest"})
    end
    on_test(function(target, opt)
        local root = assert(os.getenv("UWVM_ROS_SDK_ROOT"), "Select the installed SDK")
        local deployment = os.getenv("UWVM_ROS_PAL_PRELOAD_TEST_DEPLOYMENT")
        assert(deployment and path.is_absolute(deployment), "Select explicit per-module WASI/ROS preload test authority")
        local evidence = assert(os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT"), "Select a writable test evidence directory")
        local name = assert(opt.name:match("/([^/]+)$"), "Select the exact registered test")
        local artifacts = import("artifact_contract", {rootdir=path.join(root, "tools/xmake"), anonymous=true})
        local python = import("python_runtime", {rootdir=path.join(root, "tools/xmake"), anonymous=true}).resolve()
        local output = path.join(evidence, "pal-preload-" .. path.filename(os.tmpfile({ramdisk=false})))
        local code = os.execv(python, {path.join(root, "tools/shared/python/native_pal_preload_test.py"),
            "--sdk-root", root, "--manifest", path.join(target:scriptdir(), "preload.tests.json"),
            "--module-graph", artifacts.metadatafile(target), "--case", name,
            "--deployment", deployment, "--output", output},
            {try=true,curdir=target:scriptdir(),timeout=1900000})
        if code ~= 0 then opt.errors = "Actual Java/Wasm preload contract failed: " .. output; return false end
        import("core.base.json")
        local result = json.loadfile(path.join(output, "suite.json"))
        return result.status == "PASS" and result.retirement.status == "RETIRED"
    end)
end
