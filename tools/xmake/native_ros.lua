-- SPDX-License-Identifier: Apache-2.0
-- Prepare native official infrastructure through the one shared Python selector.
-- Invoke this entry only inside the admitted bounded build/test environment.
function main(sdk, cache, output, mode, scope)
    assert(sdk and cache and output, "Usage: xmake lua native_ros.lua SDK CACHE OUTPUT [online|offline] [base|ur]")
    assert(path.is_absolute(sdk) and path.is_absolute(cache) and path.is_absolute(output), "Use explicit absolute SDK, cache and output paths")
    assert(not mode or mode == "online" or mode == "offline", "Select online or offline archive acquisition")
    assert(not scope or scope == "base" or scope == "ur", "Select base or ur native infrastructure scope")
    local root = path.normalize(sdk)
    local python = import("python_runtime", {rootdir=path.join(root, "tools/xmake"), anonymous=true}).resolve()
    local argv = {"-B", path.join(root,"tools/xmake/native_ros.py"), "--sdk",root,"--cache",cache,"--output",output}
    if mode == "offline" then argv[#argv+1] = "--offline" end
    if scope then argv[#argv+1] = "--scope"; argv[#argv+1] = scope end
    os.vrunv(python, argv)
    print("Native ROS infrastructure prepared: " .. output)
end
