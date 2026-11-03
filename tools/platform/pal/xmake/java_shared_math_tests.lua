-- SPDX-License-Identifier: Apache-2.0
-- @brief Execute four genuine managed-library Wasm component cases.
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)

function uwvm_pal_java_shared_math_tests(config)
    local producer_language = (config or {}).producer_language or "java"
    add_tests("required-" .. producer_language .. "-producer-shared-math", {group = "required-wasm-guest", run_timeout = 300000})
    on_test(function(target, opt)
        import("core.base.json")
        import("lib.detect.find_program")
        local root = assert(target:values("ros.sdk.root"))
        local python = import("python_runtime", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).resolve()
        local producer = assert(target:dep("math"), "The real math module dependency is absent")
        assert((producer_language == "java" or producer_language == "kotlin")
            and producer:values("ros.sdk.language") == producer_language
            and target:values("ros.sdk.language") == "java", "Managed producer/consumer language selection differs")
        local state = path.absolute(path.join(target:scriptdir(), ".uwvm-ros/component-tests/shared-math"))
        os.mkdir(state)
        local output = path.join(state, path.filename(os.tmpfile({ramdisk = false})))
        assert(not os.exists(output), "Refusing to overwrite a previous guest test")
        os.mkdir(output)
        local modules = {}
        local reader = import("wasm_module", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
        for name, current in pairs({main = target, math = producer}) do
            local filename = current:targetfile()
            filename = path.absolute(filename)
            local metadata = reader.inspect(assert(io.readfile(filename, {encoding = "binary"})))
            metadata.sections = nil -- Raw section bytes stay in the complete retained Wasm.
            modules[name] = {path = filename, sha256 = hash.sha256(filename), metadata = metadata}
            local matches = {}
            for _, receiptfile in ipairs(os.files(path.join(current:scriptdir(), ".uwvm-ros/managed-aot/**/aot-receipt.json"))) do
                local receipt = json.loadfile(receiptfile)
                if receipt.artifact_sha256 == modules[name].sha256 and receipt.language == current:values("ros.sdk.language")
                    and receipt.target_kind == current:kind() then
                    table.insert(matches, {path = path.absolute(receiptfile), sha256 = hash.sha256(receiptfile)})
                end
            end
            assert(#matches == 1, "Exactly one real matching compiler receipt is required for " .. name)
            modules[name].compiler_receipt = matches[1]
        end
        local metadatafile = path.join(output, "modules.json")
        json.savefile(metadatafile, modules)
        local code = os.execv(python, {"-B", path.join(root, "tools/platform/pal/tests/java_shared_math.py"),
            "--main", path.absolute(target:targetfile()), "--library", path.absolute(producer:targetfile()),
            "--producer-language", producer_language,
            "--metadata", metadatafile, "--output", output},
            {try = true, timeout = 300000, stdout = path.join(output, "suite.stdout"), stderr = path.join(output, "suite.stderr")})
        local summaryfile = path.join(output, "suite.json")
        local summary = os.isfile(summaryfile) and json.loadfile(summaryfile) or nil
        local passed = code == 0 and summary and summary.passed == true and summary.required == 4
            and summary.executed == 4 and summary.passed_count == 4 and summary.failed == 0
            and summary.blocked == 0 and summary.not_run == 0 and #summary.selected == 4
        if not passed then
            opt.errors = "REQUIRED_JAVA_WASM_COMPONENT_FAILED_OR_BLOCKED: " .. summaryfile
        end
        return passed == true
    end)
end
