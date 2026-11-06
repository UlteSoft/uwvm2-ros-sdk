-- SPDX-License-Identifier: Apache-2.0
-- One genuine freestanding Wasm application; all ROS authority is external.
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
    target("abb-c-official-ros-sdk-required")
        set_kind("phony")
        on_load(function() raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)
set_policy("test.return_zero_on_failure", false)

target("abb-c-official-ros-communication")
    set_kind("binary")
    set_language("c")
    set_ros_platform("ros")
    set_wasm_entry("freestanding")
    set_ros2_version("jazzy")
    set_ros_scenario("official_ros_communication")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    on_build(function(target)
        import("core.base.option")
        import("core.base.json")
        local inputs = {}
        local function pin(filename)
            assert(os.isfile(filename), "Missing build source: " .. filename)
            inputs[path.relative(filename, sdk)] = hash.sha256(filename):lower()
        end
        for _, name in ipairs({"main.c", "xmake.lua", "test_communication.py"}) do pin(path.join(target:scriptdir(), name)) end
        for _, relative in ipairs({"include/platform/ros2/c/roswasm/abi/ros2.h",
                "include/platform/ros2/c/roswasm/detail/ros2/abi.h",
                "include/platform/ros/c/roswasm/detail/common/abi.h",
                "include/platform/ros/c/roswasm/detail/common/c_portability.h",
                "tools/platform/ros/provider.lua", "share/platform/ros/provider.json",
                "share/platform/ros/bindings/c.json", "share/wasm/toolchains.json"}) do pin(path.join(sdk, relative)) end
        for _, filename in ipairs(os.files(path.join(sdk, "tools/xmake/**.lua"))) do pin(filename) end
        local receipt = path.join(target:dependir(), "communication-build.json")
        if option.taskname() == "test" then
            assert(os.isfile(receipt) and os.isfile(target:targetfile()), "Build with xmake before xmake test")
            local built = json.loadfile(receipt)
            for key, value in pairs(inputs) do assert(built.inputs[key] == value, "Source changed after build: " .. key) end
            for key in pairs(built.inputs) do assert(inputs[key], "Build input set changed: " .. key) end
            assert(built.wasm_sha256 == hash.sha256(target:targetfile()):lower(), "Built Wasm identity changed")
        else
            import("dispatch", {rootdir = path.join(sdk, "tools/xmake"), anonymous = true}).build(target)
            assert(os.filesize(target:targetfile()) <= 67108864, "Wasm exceeds the explicit 64 MiB bound")
            os.mkdir(path.directory(receipt))
            json.savefile(receipt, {format = "sdk02-c-communication-build-v1", inputs = inputs,
                wasm_sha256 = hash.sha256(target:targetfile()):lower()})
        end
    end)
    uwvm_register_required_test("official-ros-communication", "required-wasm-guest")
    add_tests("official-ros-communication", {group = "required-wasm-guest"})
    on_test(function(target, opt)
        import("lib.detect.find_program")
        local python = assert(find_program("python3"), "Install Python 3 for bounded process supervision")
        local configuration = os.getenv("UWVM_ROS_RUN_CONFIG")
        assert(configuration and os.isfile(configuration), "Supply explicit UWVM_ROS_RUN_CONFIG for the real official ROS peer and runtime")
        local output_root = os.getenv("UWVM_ROS_TEST_OUTPUT_ROOT")
        if output_root then
            assert(path.is_absolute(output_root), "UWVM_ROS_TEST_OUTPUT_ROOT must be an absolute path")
        else
            output_root = path.join(target:dependir(), "communication-tests")
        end
        local output = path.join(output_root, path.filename(os.tmpfile({ramdisk = false})))
        os.mkdir(path.directory(output))
        local stdout, stderr = output .. ".suite.stdout", output .. ".suite.stderr"
        local code = os.execv(python, {path.join(target:scriptdir(), "test_communication.py"),
            "--wasm", path.absolute(target:targetfile()), "--config", path.absolute(configuration),
            "--output", path.absolute(output)}, {try = true, timeout = 330000, curdir = target:scriptdir(),
            stdout = stdout, stderr = stderr})
        opt.stdout = os.isfile(stdout) and io.readfile(stdout) or ""
        opt.stderr = os.isfile(stderr) and io.readfile(stderr) or ""
        if code ~= 0 then opt.errors = "Real ROS communication failed or is blocked; original records: " .. output end
        return code == 0
    end)
target_end()
