-- SPDX-License-Identifier: Apache-2.0
-- Execute each required contract against the actual guest and native ROS peer.
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)

function uwvm_pal_required_guest_tests(cfg)
    local allowed = {
        ["guest-contract-normal"] = true,
        ["guest-contract-denied"] = true,
        ["guest-contract-invalid-input"] = true,
        ["guest-contract-cleanup"] = true
    }
    local invalid = type(cfg) ~= "table"
    cfg = type(cfg) == "table" and cfg or {}
    local names, count = {}, 0
    local cases = type(cfg.cases) == "table" and cfg.cases or {}
    for _, name in ipairs(cases) do
        if not allowed[name] or names[name] then
            invalid = true
        else
            names[name] = true
            count = count + 1
            uwvm_register_required_test(name, "required-wasm-guest")
            add_tests(name, {group = "required-wasm-guest"})
        end
    end
    if count ~= 4 or type(cfg.scenario) ~= "string" then invalid = true end
    if count == 0 then
        uwvm_register_required_test("required-contract-invalid", "required-wasm-guest")
        add_tests("required-contract-invalid", {group = "required-wasm-guest"})
    end
    on_test(function(target, opt)
        -- Xmake passes target-name/test-name, not the registration suffix.
        local name = opt.name and opt.name:match("/([^/]+)$")
        if invalid or not names[name] then
            opt.errors = "All four distinct pal guest contracts and an exact scenario are required"
            return false
        end
        local root = os.getenv("UWVM_ROS_SDK_ROOT")
        if not root then
            local cursor = target:scriptdir()
            while cursor do
                if os.isfile(path.join(cursor, "tools/xmake/ros.lua")) then root = cursor; break end
                local parent = path.directory(cursor)
                if parent == cursor then break end
                cursor = parent
            end
        end
        assert(root, "Select the installed SDK root")
        local backend = target:values("ros.sdk.backend")
        assert(backend == "ros1" or backend == "ros2", "Select an explicit ROS backend")
        local deployment = os.getenv("UWVM_ROS_NATIVE_OBSERVATION_DEPLOYMENT")
        assert(deployment and path.is_absolute(deployment),
            "Select UWVM_ROS_NATIVE_OBSERVATION_DEPLOYMENT for the actual typed ROS peer and matching registry")
        local evidence = assert(os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT"),
            "Select a writable evidence directory")
        local output = path.join(evidence, "native-observation-" .. path.filename(os.tmpfile({ramdisk=false})))
        local python = import("python_runtime", {rootdir=path.join(root, "tools/xmake"), anonymous=true}).resolve()
        local runner = backend == "ros1" and "native_ros1_vendor_observation_test.py" or "native_vendor_observation_test.py"
        local command = {path.join(root, "tools/shared/python", runner),
            "--sdk-root", root, "--wasm", path.absolute(target:targetfile()),
            "--output", output, "--deployment", deployment,
            "--operation", cfg.scenario, "--case", name, "--architecture", target:arch()}
        local code = os.execv(python, command, {try=true,curdir=target:scriptdir(),timeout=1900000})
        if code ~= 0 then opt.errors = "Actual pal contract failed: " .. output;return false end
        import("core.base.json")
        local report = json.loadfile(path.join(output, "native-suite.json"))
        return report.passed == true and report.retirement.status == "RETIRED"
    end)
end
