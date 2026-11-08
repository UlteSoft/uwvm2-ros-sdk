-- SDK-built shared memory and two real Wasm workers; no native guest substitute.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then raise("Set UWVM_ROS_SDK_ROOT") end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
set_policy("test.return_zero_on_failure", false)
local function module(name, kind, file, memory)
    target(name)
        set_kind(kind)
        set_language("wat")
        set_ros_platform("wasi")
        set_plat("wasm-wasip1-threads")
        set_arch("wasm32")
        set_wasm_exceptions("noeh")
        if kind == "shared" then set_wasm_entry("freestanding") end
        set_wasm_features({"threads"})
        add_files(file)
        if memory then
            set_wasm_memory_import("env", "memory")
            add_deps("shared_owner")
        end
    target_end()
end
module("shared_owner", "shared", "owner.wat")
module("threaded_counter", "binary", "main.wat", true)
target("threaded_counter_tests")
    set_kind("phony")
    set_toolchains("ros.wasm.command")
    add_deps("shared_owner", "threaded_counter")
    add_tests("thread-authority", {group = "host-permissions"})
    uwvm_register_required_test("thread-authority", "host-permissions")
    on_test(function(target, opt)
        local python = import("python_runtime", {rootdir=path.join(sdk, "tools/xmake"), anonymous=true}).resolve()
        local vm = os.getenv("UWVM_ROS_THREAD_TEST_VM")
        assert(vm and path.is_absolute(vm) and os.isfile(vm), "Set UWVM_ROS_THREAD_TEST_VM to an existing VM launcher")
        local output = path.join(target:dependir(), "thread-tests", path.filename(os.tmpfile({ramdisk=false})))
        local argv = {path.join(target:scriptdir(), "test_threads.py"), "--vm", vm,
            "--wasm", path.absolute(target:dep("threaded_counter"):targetfile()),
            "--owner", path.absolute(target:dep("shared_owner"):targetfile()), "--output", path.absolute(output)}
        local stdout, stderr = os.iorunv(python, argv, {curdir=target:scriptdir(), timeout=180000})
        opt.stdout, opt.stderr = stdout, stderr
        return true
    end)
target_end()
