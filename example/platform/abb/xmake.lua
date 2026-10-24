-- @file xmake.lua
-- @brief Build the independent ABB observation commands from the platform root.
-- @details Each child also builds directly from its own directory. The shared
-- helper uses real WASI compilers and never launches an application implicitly.
includes("c/read_speed/xmake.lua", "c/read_io/xmake.lua", "c/system_state/xmake.lua")
includes("cpp/read_speed/xmake.lua", "cpp/read_io/xmake.lua", "cpp/system_state/xmake.lua")
includes("go/read_speed/xmake.lua", "go/read_io/xmake.lua", "go/system_state/xmake.lua")
includes("tinygo/read_speed/xmake.lua", "tinygo/read_io/xmake.lua", "tinygo/system_state/xmake.lua")
includes("rs/read_speed/xmake.lua", "rs/read_io/xmake.lua", "rs/system_state/xmake.lua")
includes("as/read_speed/xmake.lua", "as/read_io/xmake.lua", "as/system_state/xmake.lua")
includes("objectc/read_speed/xmake.lua", "objectc/read_io/xmake.lua", "objectc/system_state/xmake.lua")
includes("c_ffi_bridge/read_speed/xmake.lua", "c_ffi_bridge/read_io/xmake.lua", "c_ffi_bridge/system_state/xmake.lua")
