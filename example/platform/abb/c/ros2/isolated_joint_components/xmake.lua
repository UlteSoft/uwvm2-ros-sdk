-- SPDX-License-Identifier: Apache-2.0
-- Build two genuine guest business cores and the reader's static pointer library.
-- SDK01 channel/deployment integration is required separately and cannot pass yet.
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
    target("abb-isolated-components-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)

local function guest(name, kind, role, sources, dependency)
    target(name)
        set_kind(kind)
        set_language("c")
        set_ros_platform("ros")
        set_wasm_entry("freestanding")
        set_ros2_version("jazzy")
        set_ros_scenario("isolated_joint_components")
        set_plat("wasm-wasip1")
        set_arch("wasm32")
        set_wasm_exceptions("noeh")
        for _, source in ipairs(sources) do add_files(source) end
        if dependency then add_deps(dependency) end
        on_build(function(target)
            import("core.base.option")
            import("core.base.json")
            local inputs = {}
            local function pin(filename)
                assert(os.isfile(filename), "Missing actual guest source: " .. filename)
                inputs[path.relative(filename, sdk)] = hash.sha256(filename):lower()
            end
            for _, pattern in ipairs({"*.c", "*.h", "*.lua", "*.py", "*.json"}) do
                for _, filename in ipairs(os.files(path.join(target:scriptdir(), pattern))) do pin(filename) end
            end
            for _, filename in ipairs(os.files(path.join(sdk, "tools/xmake/**.lua"))) do pin(filename) end
            for _, relative in ipairs({"tools/platform/ros/provider.lua", "share/platform/ros/provider.json",
                "share/platform/ros/bindings/c.json", "share/wasm/toolchains.json",
                "include/platform/ros2/c/roswasm/abi/ros2.h", "include/platform/ros2/c/roswasm/detail/ros2/abi.h",
                "include/platform/ros/c/roswasm/detail/common/abi.h",
                "include/platform/ros/c/roswasm/detail/common/c_portability.h"}) do pin(path.join(sdk, relative)) end
            local receipt = path.join(target:dependir(), "component-business-build.json")
            if option.taskname() == "test" then
                assert(os.isfile(receipt) and os.isfile(target:targetfile()), "Run xmake before xmake test")
                local built = json.loadfile(receipt)
                for key, value in pairs(inputs) do assert(built.inputs[key] == value, "Guest source changed: " .. key) end
                for key in pairs(built.inputs) do assert(inputs[key], "Guest input set changed: " .. key) end
                assert(built.artifact_sha256 == hash.sha256(target:targetfile()):lower(), "Frozen guest/archive identity changed")
            else
                import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).build(target)
                os.mkdir(path.directory(receipt))
                json.savefile(receipt, {format = "sdk02-guest-component-business-build-v1", role = role,
                    inputs = inputs, artifact_sha256 = hash.sha256(target:targetfile()):lower(),
                    runtime_component_isolation_verified = false})
            end
        end)
        if kind == "binary" then
            uwvm_register_required_test("guest-local-business", "required-wasm-guest")
            add_tests("guest-local-business", {group = "required-wasm-guest"})
            on_test(function(target, opt)
                import("lib.detect.find_program")
                local python = assert(find_program("python3"), "Install Python 3 for process supervision")
                local configuration = os.getenv("UWVM_ROS_RUN_CONFIG")
                assert(configuration and os.isfile(configuration), "Supply an explicit installed VM command-run configuration")
                local output = path.join(target:dependir(), "component-local-tests", path.filename(os.tmpfile({ramdisk = false})))
                os.mkdir(path.directory(output))
                local stdout, stderr = output .. ".suite.stdout", output .. ".suite.stderr"
                local code = os.execv(python, {path.join(target:scriptdir(), "test_local_guest.py"), "--role", role,
                    "--wasm", path.absolute(target:targetfile()), "--config", path.absolute(configuration),
                    "--output", path.absolute(output)}, {try = true, timeout = 180000, curdir = target:scriptdir(),
                    stdout = stdout, stderr = stderr})
                opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
                opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
                if code ~= 0 then opt.errors = "Executing-Wasm business checks failed/BLOCKED: " .. output end
                return code == 0
            end)
        end
    target_end()
end

guest("abb-component-private-planner", "static", "planner-static-same-trust", {"planner.c"})
guest("abb-component-reader-planner", "binary", "reader_planner", {"reader_main.c", "reader_planner.c"}, "abb-component-private-planner")
guest("abb-component-actuator", "binary", "actuator", {"actuator_main.c", "actuator.c"})

-- A full example test must stay red while the required real channel/ROS path
-- has not been integrated. Selecting a local guest target is a narrower check.
target("abb-components-real-integration-required")
    set_kind("phony")
    -- Xmake still resolves a toolchain for a phony target in this Wasm project.
    set_toolchains("ros.wasm.command")
    add_deps("abb-component-reader-planner", "abb-component-actuator")
    uwvm_register_required_test("private-memory-channel-real-ros-required", "required-wasm-guest")
    add_tests("private-memory-channel-real-ros-required", {group = "required-wasm-guest"})
    on_test(function(target, opt)
        opt.errors = "BLOCKED_REQUIRED_SDK01_COMPONENT_CHANNEL_ABI_AND_ACTUAL_PRIVATE_MEMORY_ROS_INTEGRATION; see component.integration.json"
        return false
    end)
target_end()
