-- SPDX-License-Identifier: Apache-2.0
-- Genuine application target; shared registration owns Xmake suite aggregation.
local root = os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    local current = path.absolute(os.scriptdir())
    while current and path.directory(current) ~= current do
        if os.isfile(path.join(current, "tools/xmake/ros.lua")) then root = current; break end
        current = path.directory(current)
    end
end
if not root or not os.isfile(path.join(root, "tools/xmake/ros.lua")) then
    target("isaacros-frozen-joint-communication")
        set_kind("binary")
        add_files("main.c")
        on_load(function () raise("BLOCKED_SDK_INSTALLATION: set UWVM_ROS_SDK_ROOT to the installed SDK") end)
    target_end()
    return
end
includes(path.join(root, "tools/xmake/ros.lua"))
local support = path.join(root, "tools/shared/xmake/simulation_example.lua")
if not os.isfile(support) then
    target("isaacros-frozen-joint-communication")
        set_kind("binary")
        add_files("main.c")
        on_load(function () raise("BLOCKED_SHARED_SIMULATION_EXAMPLE_API_V1_REQUIRED") end)
    target_end()
    return
end
includes(support)
set_policy("run.autobuild", false)
-- Keep Xmake's test auto-build phase from recompiling the frozen algorithm.
rule("nvidia.isaacros.communication.frozen-test")
    on_load(function (target)
        import("core.base.option")
        if option.taskname() == "test" then
            os.setenv("UWVM_NVIDIA_FROZEN_TEST", path.absolute(target:scriptdir()))
        end
    end)
rule_end()
target("isaacros-frozen-joint-communication")
    set_kind("binary")
    -- Preserve the original frozen build name in the emitted module bytes.
    set_basename("portable-joint-step-v0-1-0")
    set_language("c")
    set_ros_platform("wasi")
    -- The SDK contract preserves Xmake-selected build/object/dependency paths.
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    set_wasm_exceptions("noeh")
    add_files("main.c")
    add_rules("nvidia.isaacros.communication.frozen-test")
    on_build(function (target)
        import("core.base.json")
        local expected = "c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043"
        local canonical = path.join(root, "lib/platform/ros/portable/v0.1.0/joint-step.wasm")
        assert(os.isfile(canonical) and hash.sha256(canonical):lower() == expected,
               "BLOCKED_INSTALLED_COMMON_FROZEN_WASM")
        local output = path.absolute(target:targetfile())
        if os.getenv("UWVM_NVIDIA_FROZEN_TEST") == path.absolute(target:scriptdir()) then
            assert(os.isfile(output) and hash.sha256(output):lower() == expected,
                   "BLOCKED_FROZEN_WASM_REQUIRED: run xmake first; tests never recompile the algorithm")
            return
        end
        -- Delegate the actual source build to the existing SDK implementation.
        import("dispatch", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).build(target)
        local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
        local state = artifacts.workspace(target, "frozen-algorithm")
        local candidate = path.join(state, "frozen-build-candidate.wasm")
        os.mkdir(path.directory(candidate))
        os.cp(output, candidate)
        assert(hash.sha256(candidate):lower() == expected, "BLOCKED_COMMON_ALGORITHM_REPRODUCIBILITY")
        -- Platform reuse evidence consumes the original installed artifact.
        os.cp(canonical, output)
        json.savefile(path.join(state, "frozen-input.json"), {
            format = "nvidia-frozen-algorithm-input-v1", source = "installed-sdk-artifact",
            sdk_path = "lib/platform/ros/portable/v0.1.0/joint-step.wasm",
            complete_sha256 = expected, source_build_candidate_sha256 = hash.sha256(candidate):lower(),
            rebuilding_is_not_platform_reuse_evidence = true
        })
    end)
    uwvm_simulation_example({api_version = 1, sdk_root = root,
        manifest = "scenarios.v1.json", driver = "run_communication.py", timeout_seconds = 300})
target_end()
