-- SPDX-License-Identifier: Apache-2.0
-- Build the real shared C algorithm; test reuses its exact frozen bytes.
local root = os.getenv("UWVM_ROS_SDK_ROOT") or path.absolute("../../../../..", os.scriptdir())
includes(path.join(root, "tools/xmake/ros.lua"))
includes(path.join(root, "tools/shared/xmake/simulation_example.lua"))
set_policy("run.autobuild", false)
target("yaskawa-official-joint-step")
    set_kind("binary")
    -- The frozen name section includes the original linker output basename.
    set_basename("portable-joint-step-v0-1-0")
    set_language("c")
    set_ros_platform("wasi")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    uwvm_simulation_example({
        api_version = 1, sdk_root = root,
        manifest = "simulation.example.json",
        timeout_seconds = 300
    })
    on_build(function(target)
        import("core.base.option")
        local testing = option.taskname() == "test"
        local canonical = path.join(root, "lib/platform/ros/portable/v0.1.0/joint-step.wasm")
        local frozen = "c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043"
        assert(hash.sha256(path.join(target:scriptdir(), "main.c")):lower() ==
            "46f6bac6268cc9a4e338f75c57d7b9df508ec98a4b63d9f95bc427186d6fa616", "Frozen application source changed")
        assert(os.isfile(canonical) and hash.sha256(canonical):lower() == frozen,
            "BLOCKED_INSTALLED_FROZEN_APPLICATION")
        if testing then
            assert(os.isfile(target:targetfile()), "BLOCKED_BUILD_REQUIRED: run xmake before xmake test")
        else
            import("dispatch", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).build(target)
        end
        assert(hash.sha256(target:targetfile()):lower() == frozen,
            "BLOCKED_FROZEN_WASM_MISMATCH: no relink, import rewrite or vendor substitution")
    end)
target_end()
