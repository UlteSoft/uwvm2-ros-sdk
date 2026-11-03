-- SPDX-License-Identifier: Apache-2.0
-- Frozen Wasm application and the shared public scenario API; Linux only.
set_project("kinova-canonical-stage-a")
set_version("0.1.0")
set_xmakever("2.9.8")
set_defaultplat("linux")
set_defaultarchs("x86_64")
set_allowedplats("linux")
set_allowedarchs("x86_64")
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local current = path.absolute(os.scriptdir())
    local visited = {}
    while current and not visited[current] do
        visited[current] = true
        if os.isfile(path.join(current,"share/platform/ros/portable/artifacts/joint-step-v0.1.0.json")) then
            sdk_root=current
            break
        end
        local parent=path.directory(current)
        if parent==current or parent=="." or parent=="" then break end
        current=path.absolute(parent)
    end
end
assert(sdk_root,"BLOCKED_COMPLETE_INSTALLED_SDK_REQUIRED")
includes(path.join(sdk_root,"tools/shared/xmake/simulation_example.lua"))
local here=os.scriptdir()
target("kinova-gen3-jazzy-canonical-stage-a")
    set_kind("binary")
    set_filename("joint-step.wasm")
    add_values("ros.sdk.triple", "wasm32-wasip1")
    on_load(function(target)
        local artifacts = import("artifact_contract", {rootdir=path.join(sdk_root,"tools/xmake"),anonymous=true})
        artifacts.configure(target)
    end)
    on_build(function(target)
        local arguments = {"-I","-B",path.join(here,"fixtures/consume_frozen.py"),
            "--sdk-root",sdk_root,"--output",path.absolute(target:targetfile())}
        os.vrunv("python3",arguments)
        target:data_set("ros.sdk.build_command", {program="python3",arguments=arguments,
            action="consume-complete-frozen-Wasm",Wasm_recompiled=false})
        local artifacts = import("artifact_contract", {rootdir=path.join(sdk_root,"tools/xmake"),anonymous=true})
        artifacts.record(target,sdk_root)
    end)
    uwvm_simulation_example({api_version=1,sdk_root=sdk_root,manifest="simulation.json",
        driver="fixtures/driver.py",timeout_seconds=600})
target_end()
