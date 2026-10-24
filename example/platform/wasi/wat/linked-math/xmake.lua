-- @details The selected architecture chooses the matching authored WAT text.
-- Ordinary Xmake target kinds and dependencies drive the shared assembler
-- and linker. Runtime authority remains an explicit deployment choice.
-- @file xmake.lua
-- @brief Build complete real WAT using the public installed SDK declarations.
local sdk = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk then raise("Set UWVM_ROS_SDK_ROOT to the installed SDK") end
includes(path.join(sdk, "tools/xmake/ros.lua"))
target("wat_math")
    set_kind("static")
    set_language("wat")
    set_ros_platform("wasi")
    if is_arch("wasm64") then add_files("math64.wat") else add_files("math32.wat") end
target_end()
target("linked_math")
    set_kind("binary")
    set_language("wat")
    set_ros_platform("wasi")
    add_deps("wat_math")
    if is_arch("wasm64") then add_files("main64.wat") else add_files("main32.wat") end
target_end()
