local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
includes(path.join(sdk, "tools/xmake/ros.lua"))
set_plat("wasm-wasip1")
set_arch("wasm32")
set_policy("test.return_zero_on_failure", false)
set_policy("test.stop_on_first_failure", false)
target("full-backend-contract")
    set_kind("binary")
    set_targetdir(path.join(os.scriptdir(), "build/artifacts"))
    set_language("java")
    set_ros_platform("pal")
    set_ros2_version("humble")
    set_ros_config({vendor_profile = "ros2_humble_devel"})
    set_values("ros.sdk.main_class", "uwvm.compiler.tests.FullBackendChecks")
    add_files("FullBackendChecks.java")
    add_tests("full-backend")
    on_test(function(current, opt)
        import("core.base.json")
        local file = assert(os.getenv("UWVM_ROS_JAVA_GUEST_TEST_CONFIG"),
            "Run compiler tests inside the admitted Linux validation executor")
        local config = json.loadfile(file)
        assert(config.format == "uwvm-java-component-runtime-v1")
        assert(os.isfile(config.runtime) and hash.sha256(config.runtime) == config.sha256,
            "Use the exact frozen Wasm runtime from the qualification inputs")
        assert(#config.arguments == 1 and config.arguments[1] == "--runtime-aot")
        local output = path.join(current:scriptdir(), ".uwvm-ros/compiler-tests/full-backend")
        assert(not os.exists(output), "Preserve each original compiler test result")
        os.mkdir(output)
        local argv = {"--runtime-aot", "--ros2-global-disable", "--run", current:targetfile()}
        local stdout, stderr = path.join(output, "VM.stdout"), path.join(output, "VM.stderr")
        local code = os.execv(config.runtime, argv, {try = true, timeout = 60000,
            envs = config.environment, stdout = stdout, stderr = stderr})
        local text = io.readfile(stdout) or ""
        local passed = code == 0 and text:find('"sdk09_HEAD_compiler_checks":1284', 1, true) ~= nil
        json.savefile(path.join(output, "execution.json"), {runtime = config.runtime,
            runtime_sha256 = config.sha256, artifact = current:targetfile(),
            artifact_sha256 = hash.sha256(current:targetfile()), argv = argv, exit = code,
            stdout = stdout, stdout_sha256 = hash.sha256(stdout),
            stderr = stderr, stderr_sha256 = hash.sha256(stderr), passed = passed,
            scope = "finite compiler correctness only; no ROS or whole SDK acceptance"})
        if not passed then opt.errors = "Required genuine Wasm compiler assertions failed: " .. output end
        return passed
    end)
target_end()
