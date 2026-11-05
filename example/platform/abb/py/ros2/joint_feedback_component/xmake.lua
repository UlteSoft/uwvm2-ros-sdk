-- SPDX-License-Identifier: Apache-2.0
-- Guest component assertions; official framework simulation remains mandatory.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then
    local current, seen = path.absolute(os.scriptdir()), {}
    while current and not seen[current] do
        seen[current] = true
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then sdk = current; break end
        local parent = path.directory(current)
        if parent == current then break end
        current = parent
    end
end
if not sdk or not os.isfile(path.join(sdk, "tools/xmake/ros.lua")) then
    target("abb-python-joint-feedback-component")
        set_kind("binary")
        on_load(function() raise("BLOCKED_REQUIRED_INSTALLED_SDK") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)
target("abb-python-joint-feedback-component")
    set_kind("binary")
    set_language("py")
    set_ros_platform("ros")
    set_ros2_version("jazzy")
    set_ros_scenario("joint_feedback_component")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    set_values("ros.sdk.python.transplate", "rclpy-jazzy-pubsub-v1")
    add_files(path.join(sdk, "include/platform/abb/transplate/ros2/rclpy/v0_1_0/joint_feedback.py"))
    after_load(function(target)
        local identity = import("artifact_contract", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).identity(target)
        target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build", identity))
        target:set("objectdir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects", identity))
        target:set("dependir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/dependencies", identity))
    end)
    on_build(function(target)
        import("core.base.option")
        import("core.base.json")
        local application = path.join(sdk, "include/platform/abb/transplate/ros2/rclpy/v0_1_0/joint_feedback.py")
        local profile = path.join(sdk, "include/platform/ros/transplate/ros2/rclpy/v1/profile.json")
        local bundle = path.join(sdk, "include/platform/ros/transplate/ros2/rclpy/v1/bundle.json")
        local receipt = path.join(target:objectdir(), "component-build.json")
        local state, seen = {}, {}
        local function pin(relative, expected_sha, expected_bytes)
            assert(type(relative) == "string" and not path.is_absolute(relative)
                and not relative:find("\\", 1, true) and not relative:find("..", 1, true),
                "BLOCKED_PORTABLE_INPUT_PATH")
            local filename = path.join(sdk, relative)
            assert(os.isfile(filename), "BLOCKED_REQUIRED_SOURCE_INPUT: " .. relative)
            local digest = hash.sha256(filename):lower()
            assert(not expected_sha or digest == expected_sha, "BLOCKED_SOURCE_INPUT_CHANGED: " .. relative)
            assert(not expected_bytes or os.filesize(filename) == expected_bytes,
                "BLOCKED_SOURCE_INPUT_SIZE: " .. relative)
            state["input:" .. relative], seen[relative] = digest, true
        end
        pin(path.relative(application, sdk))
        pin(path.relative(profile, sdk))
        pin(path.relative(bundle, sdk))
        for _, name in ipairs({"xmake.lua", "test_guest.py", "component.resources.json", "build.inputs.json"}) do
            pin(path.relative(path.join(target:scriptdir(), name), sdk))
        end
        for _, relative in ipairs({"xmake.lua", "tools/language/python/provider.lua",
                "tools/language/python/transplate.lua", "tools/language/js/pack.lua",
                "tools/language/native/core.lua"}) do pin(relative) end
        for _, filename in ipairs(os.files(path.join(sdk, "tools/xmake/**.lua"))) do
            pin(path.relative(filename, sdk))
        end
        local fixed = json.loadfile(path.join(target:scriptdir(), "build.inputs.json"))
        assert(fixed.format == "sdk02-python-component-build-inputs-v1",
            "BLOCKED_REQUIRED_FIXED_BUILD_INPUTS")
        for _, row in ipairs(fixed.inputs) do pin(row.path, row.sha256, row.bytes) end
        local selected = json.loadfile(profile)
        for _, row in ipairs(selected.inputs) do pin(row.path, row.sha256, row.bytes) end
        pin(selected.core_manifest, selected.core_manifest_sha256)
        local core = json.loadfile(path.join(sdk, selected.core_manifest))
        for _, row in ipairs(core.inputs) do pin(row.path, row.sha256, row.bytes) end
        local modules = json.loadfile(bundle)
        for _, row in ipairs(modules.modules) do pin(row.file, row.sha256) end
        local count = 0
        for _ in pairs(seen) do count = count + 1 end
        state.input_count = count
        if option.taskname() == "test" then
            assert(os.isfile(receipt) and os.isfile(target:targetfile()), "BLOCKED_BUILD_REQUIRED: run xmake first")
            local built = json.loadfile(receipt)
            for key, value in pairs(state) do assert(built[key] == value, "BLOCKED_SOURCE_CHANGED_SINCE_BUILD: " .. key) end
            for key in pairs(built) do
                assert(key == "wasm_sha256" or state[key] ~= nil, "BLOCKED_BUILD_INPUT_SET_CHANGED")
            end
            assert(built.wasm_sha256 == hash.sha256(target:targetfile()), "BLOCKED_BUILT_WASM_IDENTITY")
        else
            import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).build(target)
            local limits = json.loadfile(path.join(target:scriptdir(), "component.resources.json"))
            assert(os.filesize(target:targetfile()) <= limits.runtime.maximum_application_wasm_bytes,
                "BLOCKED_COMPONENT_WASM_FILE_BOUND")
            state.wasm_sha256 = hash.sha256(target:targetfile())
            os.mkdir(path.directory(receipt))
            json.savefile(receipt, state)
        end
    end)
    on_run(function(target)
        import("core.base.json")
        import("core.project.config")
        local filename = os.getenv("UWVM_ROS_RUN_CONFIG") or config.get("ros-run-config")
        assert(filename and os.isfile(filename), "BLOCKED_REQUIRED_PUBLIC_UWVM_ROS_RUN_CONFIG")
        local deployment = json.loadfile(filename)
        assert(deployment.format == "uwvm-ros-command-run-v1",
            "BLOCKED_COMPONENT_REQUIRES_VM_COMMAND_RUN_CONFIGURATION")
        local aot = false
        for _, value in ipairs(deployment.runtime_arguments or {}) do
            assert(type(value) == "string" and not value:find("unwind", 1, true),
                "BLOCKED_DEFAULT_CHECKED_UNWIND_REQUIRED")
            if value == "--runtime-aot" or value == "-Raot" then aot = true end
        end
        assert(aot, "BLOCKED_REQUIRED_NATIVE_AOT_RUNTIME")
        local receipt = path.join(target:objectdir(), "component-build.json")
        assert(os.isfile(receipt) and os.isfile(target:targetfile()), "BLOCKED_BUILD_REQUIRED")
        local built = json.loadfile(receipt)
        assert(built.wasm_sha256 == hash.sha256(target:targetfile()), "BLOCKED_BUILT_WASM_IDENTITY")
        for key, value in pairs(built) do
            if key:sub(1, 6) == "input:" then
                local file = path.join(sdk, key:sub(7))
                assert(os.isfile(file) and hash.sha256(file):lower() == value,
                    "BLOCKED_SOURCE_CHANGED_SINCE_BUILD: " .. key)
            end
        end
        local dispatch = import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true})
        local _, _, context = dispatch.provider(target)
        import("run", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).run(target, sdk, context)
    end)
    uwvm_register_required_test("joint-state-codec", "required-wasm-guest")
    add_tests("joint-state-codec", {group = "required-wasm-guest"})
    on_test(function(target, opt)
        import("lib.detect.find_program")
        local python = import("python_runtime", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).resolve()
        local configuration = os.getenv("UWVM_ROS_RUN_CONFIG")
        assert(configuration and os.isfile(configuration), "BLOCKED_REQUIRED_PUBLIC_UWVM_ROS_RUN_CONFIG")
        local root = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/component-tests")
        os.mkdir(root)
        local output = path.join(root, path.filename(os.tmpfile({ramdisk = false})))
        local argv = {path.join(target:scriptdir(), "test_guest.py"), "--wasm", path.absolute(target:targetfile()),
                      "--config", path.absolute(configuration), "--output", output}
        local code = os.execv(python, argv, {try = true, timeout = 330000, curdir = target:scriptdir()})
        if code ~= 0 then opt.errors = "Required executing-Wasm component assertions failed/BLOCKED; see " .. output end
        return code == 0
    end)
target_end()
