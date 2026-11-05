-- Aggregate the original child commands without changing their execution directories.
local root=os.getenv("UWVM_ROS_SDK_ROOT")
if not root then
    root=path.absolute(os.scriptdir())
    while not os.isfile(path.join(root,"tools/xmake/ros.lua")) do
        local parent=path.directory(root)
        if parent==root then break end
        root=parent
    end
end
includes(path.join(root,"tools/xmake/ros.lua"))
includes(path.join(root,"tools/shared/xmake/guest_aggregate.lua"))
set_policy("run.autobuild",false)
uwvm_guest_aggregate({api_version=1,sdk_root=root,project_root=path.absolute(os.scriptdir()),children={"read_speed","read_io","system_state"}})
