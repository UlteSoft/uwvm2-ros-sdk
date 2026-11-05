-- Original Python and independent observer both execute inside uwvm2-ros.
function uwvm_turtlebot_scene_test(cfg)
    uwvm_register_required_test("native-scene", "native-scene")
    add_tests("native-scene", {group = "native-scene"})
    on_test(function(target, opt)
        import("core.base.json")
        local deployment = os.getenv("UWVM_ROS_TURTLEBOT_TEST_DEPLOYMENT")
        assert(deployment and path.is_absolute(deployment), "Select the installed TurtleBot native test deployment")
        local evidence = assert(os.getenv("UWVM_ROS_TEST_EVIDENCE_ROOT"), "Select a writable test evidence root")
        assert(path.is_absolute(evidence), "Absolute test evidence root required")
        local output = path.join(evidence, "turtlebot-" .. path.filename(os.tmpfile({ramdisk = false})))
        local python = import("python_runtime", {rootdir=path.join(cfg.sdk_root,"tools/xmake"),anonymous=true}).resolve()
        local argv = {path.join(cfg.sdk_root,"tools/platform/robotis/turtlebot_scene_test.py"),
            "--sdk-root",cfg.sdk_root,"--deployment",deployment,
            "--wasm",path.absolute(target:targetfile()),"--output",output}
        local code = os.execv(python,argv,{try=true,curdir=target:scriptdir(),timeout=600000})
        if code ~= 0 then opt.errors = "Actual TurtleBot native scene failed: " .. output; return false end
        local result = json.loadfile(path.join(output,"suite.json"))
        return result.format == "uwvm-sdk-turtlebot-native-result-v1" and result.passed == true
            and result.owned_retirement == "RETIRED"
    end)
end
