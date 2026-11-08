-- Real guest socket operations; the Python peer is transport test infrastructure.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end
includes(path.join(sdk, "tools/xmake/ros.lua"))
includes(path.join(sdk, "tools/shared/xmake/simulation_example.lua"))
rule("uwvm.socket-preopen-test")
    on_load(function(target)
        assert(target:arch() == "wasm32", "This example tests the standard WASIp1 wasm32 socket ABI")
        target:add("tests", "socket-permissions", {group="host-permissions"})
    end)
    on_test(function(target, opt)
        local python = import("python_runtime", {rootdir=path.join(sdk, "tools/xmake"), anonymous=true}).resolve()
        local artifacts = import("artifact_contract", {rootdir=path.join(sdk, "tools/xmake"), anonymous=true})
        local vm = os.getenv("UWVM_ROS_SOCKET_TEST_VM")
        assert(vm and path.is_absolute(vm) and os.isfile(vm), "Set UWVM_ROS_SOCKET_TEST_VM to the existing uwvm2-ros executable or launcher")
        local output = path.join(artifacts.workspace(target, "socket-tests"), path.filename(os.tmpfile({ramdisk=false})))
        local argv = {path.join(target:scriptdir(), "test_socket.py"), "--wasm", path.absolute(target:targetfile()),
            "--vm", vm, "--output", output, "--sdk-root", sdk}
        local stdout, stderr = os.iorunv(python, argv, {curdir=target:scriptdir(), timeout=120000})
        opt.stdout, opt.stderr = stdout, stderr
        return true
    end)
rule_end()
target("socket_preopen")
    set_kind("binary")
    set_language("wat")
    set_ros_platform("wasi")
    add_files("main.wat")
    uwvm_register_required_test("socket-permissions", "host-permissions")
    add_rules("uwvm.socket-preopen-test")
target_end()
