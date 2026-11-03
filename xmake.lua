-- @file xmake.lua
-- @brief Load installed platform entries from a deliberately minimal SDK.
-- @details Each platform owns its application build and run rules. A platform
-- may be absent while the user audits the restored dependency set. Installing
-- headers does not compile an example or claim a ROS execution result.
set_xmakever("2.9.8")


-- Shared Wasm language libraries retain their own source and build projects.
local language_entry = path.join(os.scriptdir(), "tools/shared/xmake/language_entry.lua")
if os.isfile(language_entry) then
    includes(language_entry)
    if uwvm_language_repository_entry() then
        return
    end
end

local sdk_root = os.scriptdir()
-- @brief Select any installed platform's independent source application.
-- @details This entry preserves ordinary xmake invocation below the SDK root;
-- compiler restoration belongs to build, while native deployment belongs to run.
local repository = path.join(sdk_root, "tools/xmake/repository.lua")
if os.isfile(repository) then
    includes(repository)
    if uwvm_ros_repository_entry() then
        return
    end
end

-- The header-only SDK root has no selected official scenario. Reuse the
-- shared test action so xmake test cannot report an empty selection as success.
local simulation_entry = path.join(sdk_root, "tools/shared/xmake/simulation_example.lua")
if os.isfile(simulation_entry) then
    includes(simulation_entry)
end

-- One main-Xmake scheduler owns public child build/test pairs.
local examples_entry = path.join(sdk_root, "tools/shared/xmake/examples_task.lua")
if os.isfile(examples_entry) then
    includes(examples_entry)
end

set_project("uwvm-platform-sdk")
target("ros-sdk-headers")
set_kind("headeronly")
set_default(true)
add_headerfiles(path.join(sdk_root, "include/platform/**"), {
    rootdir = path.join(sdk_root, "include"),
})
add_includedirs(path.join(sdk_root, "include"), { public = true })
target_end()
