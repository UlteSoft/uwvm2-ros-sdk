-- SPDX-License-Identifier: Apache-2.0
-- Apply inside the provider-owned Wasm target.
function uwvm_ros_joint_fixture(options)
    local sdk = options.sdk_root
    local shared = path.join(sdk, "tools/shared/ros_joint_fixture")
    local function pinned_inputs(target)
        local inputs = {}
        local function pin(filename)
            inputs[path.relative(filename, sdk)] = hash.sha256(filename):lower()
        end
        for _, pattern in ipairs({"*.c", "*.lua", "*.py", "*.json", "*.urdf", "*.yaml", "*.wbt"}) do
            for _, filename in ipairs(os.files(path.join(target:scriptdir(), pattern))) do pin(filename) end
        end
        for _, pattern in ipairs({"*.c", "*.h", "*.cpp", "*.py", "*.lua", "*.patch", "types/**", "native/**"}) do
            for _, filename in ipairs(os.files(path.join(shared, pattern))) do pin(filename) end
        end
        for _, pattern in ipairs({"tools/xmake/**.lua", "tools/custom_types/**", "include/platform/ros/c/**.h",
                "include/platform/ros2/c/**.h", "src/platform/ros2/control_toolbox/**", "src/platform/ros2/joint_trajectory/**"}) do
            for _, filename in ipairs(os.files(path.join(sdk, pattern))) do pin(filename) end
        end
        for _, relative in ipairs({"tools/custom_types.py", "tools/industrial/vendor_profile.py",
                "tools/platform/abb/bindings.py", "tools/platform/unitree/native/metadata_reader.cc.in",
                "tools/shared/python/native_fixture.py", "tools/shared/python/wasi_policy.py",
                "tools/shared/python/host_interfaces.py", "tools/shared/host-interfaces.json", "tools/shared/python/pipe_capture.py",
                "tools/shared/python/portability_contract.py", "tools/shared/xmake/upstream_component.lua"}) do pin(path.join(sdk, relative)) end
        return inputs
    end
    
    local function verify_built_guest(target, json, need)
        local receipt = path.join(target:dependir(), "joint-build.json")
        need(os.isfile(receipt) and os.isfile(target:targetfile()), "Build the Wasm guest with xmake first")
        local built = json.loadfile(receipt)
        local inputs = pinned_inputs(target)
        need(built.format == "uwvm-sdk-joint-build-v1", "Build the current Wasm fixture")
        for key, value in pairs(inputs) do need(built.inputs[key] == value, "Input changed since build: " .. key) end
        for key in pairs(built.inputs) do need(inputs[key], "Build input set changed: " .. key) end
        for name, value in pairs(built.generated) do
            need(os.isfile(path.join(built.generated_root, name)) and
                hash.sha256(path.join(built.generated_root, name)):lower() == value, "Generated record changed: " .. name)
        end
        need(hash.sha256(target:targetfile()):lower() == built.wasm_sha256, "Built Wasm changed")
        return built
    end
    
    on_build(function(target)
        import("core.base.option")
        import("core.base.json")
        local testing = option.taskname() == "test"
        local receipt = path.join(target:dependir(), "joint-build.json")
        local built = testing and os.isfile(receipt) and json.loadfile(receipt) or nil
        assert(not testing or built, "Build the Wasm guest with xmake first")
        local generated = testing and built.generated_root or path.join(target:dependir(), "joint-bindings", path.filename(os.tmpfile({ramdisk = false})))
        target:add("includedirs", generated, shared, path.join(sdk, "include/platform/ros/c"))
        local inputs = pinned_inputs(target)
        if testing then
            verify_built_guest(target, json, assert)
        else
            local python = import("python_runtime", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).resolve()
            os.vrunv(python, {path.join(shared, "prepare_bindings.py"), "--sdk-root", sdk, "--output", generated})
            import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).build(target)
            local records = {}
            for _, filename in ipairs(os.files(path.join(generated, "**"))) do
                records[path.relative(filename, generated)] = hash.sha256(filename):lower()
            end
            json.savefile(receipt, {format = "uwvm-sdk-joint-build-v1", inputs = inputs, generated = records, generated_root = path.absolute(generated),
                wasm_sha256 = hash.sha256(target:targetfile()):lower()})
        end
    end)
    uwvm_register_required_test("official-scenarios", "required-wasm-guest")
    add_tests("official-scenarios", {group = "required-wasm-guest"})
    on_test(function(target, opt)
        import("core.base.json")
        verify_built_guest(target, json, assert)
        local python = import("python_runtime", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).resolve()
        local config = os.getenv(options.config_environment)
        assert(config and os.isfile(config), "Provide " .. options.config_environment .. " with explicit native files, runtime, gateway and WASI/ROS grants")
        local evidence = os.getenv("UWVM_ROS_TEST_OUTPUT_ROOT") or path.join(target:dependir(), "joint-tests")
        local output = path.join(evidence, path.filename(os.tmpfile({ramdisk = false})))
        os.mkdir(output)
        local stdout, stderr = path.join(output, "suite.stdout"), path.join(output, "suite.stderr")
        import("core.base.json")
        local contract = json.loadfile(config)
        local executable = python
        local arguments = {}
        if contract.launcher then
            executable = contract.launcher.executable
            assert(path.is_absolute(executable) and os.isfile(executable), "Select an installed host fixture launcher")
            assert(hash.sha256(executable):lower() == contract.launcher.sha256, "Host fixture launcher changed")
            for _, argument in ipairs(contract.launcher.arguments) do
                assert(type(argument) == "string" and not argument:find("%z"), "Invalid host fixture launcher argument")
                table.insert(arguments, argument)
            end
        end
        table.join2(arguments, {path.join(shared, options.driver or "test_fixture.py"), "--sdk-root", sdk, "--example", target:scriptdir(),
            "--wasm", path.absolute(target:targetfile()), "--config", path.absolute(config),
            "--output", path.absolute(output)})
        local code = os.execv(executable, arguments, {try = true, timeout = 480000,
            stdout = stdout, stderr = stderr, curdir = target:scriptdir()})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        if code ~= 0 then opt.errors = "Wasm/official-controller integration failed; original evidence: " .. output end
        return code == 0
    end)
end
