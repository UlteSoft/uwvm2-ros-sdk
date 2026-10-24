--- @file main.lua
--- @brief Retain one subscription while awaiting a complete ABB SystemState sample.
--- @details At most 250 polls share one owner, with 20 ms monotonic waits after idle. All original state fields
--survive.
--- xmake embeds this actual source and its complete SDK modules into one Lua
--- WebAssembly interpreter. xmake run starts uwvm2-ros and its native gateway.
--- No host Lua application, external source mount, or controller write is used.
local abb = require("abb/lua/observation")

--- @brief Validate WASI arguments before acquiring the configured ROS alias.
--- @return integer Complete observation status, clamped to the command range.
--- @details The runtime supplies executable name at arg[0]. All capability
--- retirement completes inside the SDK before the final result is printed.
local function main()
    if #arg ~= 1 then
        io.stderr:write("usage: application ALIAS\n")
        return 22
    end
    return abb.output(abb.system_state(arg[1]))
end

return main()
