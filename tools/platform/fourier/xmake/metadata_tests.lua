-- Original PHP assertions run only inside the produced Wasm command.
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)
function uwvm_fourier_metadata_tests(name)
    uwvm_register_required_test(name, "required-wasm-guest")
    add_tests(name, {group="required-wasm-guest"})
    on_test(function(target, opt)
        local root = assert(os.getenv("UWVM_ROS_SDK_ROOT"), "Select the installed SDK")
        local deployment = assert(os.getenv("UWVM_ROS_PHP_METADATA_TEST_DEPLOYMENT"), "Select the explicit PHP metadata test deployment")
        assert(path.is_absolute(deployment), "Use an absolute deployment path")
        local evidence = assert(os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT"), "Select test evidence output")
        local python = import("python_runtime", {rootdir=path.join(root,"tools/xmake"),anonymous=true}).resolve()
        local output = path.join(evidence,"php-metadata-" .. path.filename(os.tmpfile({ramdisk=false})))
        local code = os.execv(python,{path.join(root,"tools/shared/python/native_php_metadata_test.py"),
            "--sdk-root",root,"--manifest",path.join(target:scriptdir(),"cases.json"),
            "--wasm",path.absolute(target:targetfile()),"--deployment",deployment,"--output",output},
            {try=true,curdir=target:scriptdir(),timeout=1900000})
        if code ~= 0 then opt.errors="Actual PHP/Wasm metadata contract failed: " .. output; return false end
        import("core.base.json")
        local report=json.loadfile(path.join(output,"suite.json"))
        return report.status=="PASS" and report.executed==report.selected and report.passed==report.selected
            and report.retirement.status=="RETIRED"
    end)
end
