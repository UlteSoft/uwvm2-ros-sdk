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
uwvm_guest_aggregate({api_version=1,sdk_root=root,project_root=path.absolute(os.scriptdir()),children={"c/read_speed","c/read_io","c/system_state","cpp/read_speed","cpp/read_io","cpp/system_state","go/read_speed","go/read_io","go/system_state","tinygo/read_speed","tinygo/read_io","tinygo/system_state","rs/read_speed","rs/read_io","rs/system_state","as/read_speed","as/read_io","as/system_state","objectc/read_speed","objectc/read_io","objectc/system_state","c_ffi_bridge/read_speed","c_ffi_bridge/read_io","c_ffi_bridge/system_state"}})
