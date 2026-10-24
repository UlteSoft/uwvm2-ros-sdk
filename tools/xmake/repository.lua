-- @file repository.lua
-- @brief Dispatch an installed SDK example discovered below an ancestor project.
-- @details Xmake normally selects the topmost ancestor xmake.lua. This entry
-- includes the exact application selected by the shell's working directory so
-- ordinary xmake builds that application without a recursive child process.

local sdk_root = path.directory(path.directory(path.absolute(os.scriptdir())))
local examples = path.normalize(path.join(sdk_root, "example/platform"))

-- @brief Load one existing platform application and keep its explicit run action.
-- @return True only when a complete example xmake.lua was included.
-- @details PWD must be the caller's actual absolute working directory. Build
-- selects no ROS deployment. Run never triggers an automatic compiler probe.
function uwvm_ros_repository_entry()
    local working = os.getenv("PWD")
    if not working or not path.is_absolute(working) then
        return false
    end
    working = path.normalize(working)
    if working:sub(1, #examples + 1) ~= examples .. "/" then
        return false
    end
    local description = path.join(working, "xmake.lua")
    if not os.isfile(description) then
        raise("Select an SDK example directory containing xmake.lua: " .. working)
    end
    set_project("uwvm-ros-sdk-command")
    set_policy("run.autobuild", false)
    includes(description)
    return true
end
