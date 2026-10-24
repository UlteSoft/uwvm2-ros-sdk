--- @file main.lua
--- @brief Read the complete value of one configured ABB IO signal.
--- @details The strict UTF-8 signal name is validated before opening. No IO write is performed.
--- xmake embeds this actual source and its complete SDK modules into one Lua
--- WebAssembly interpreter. xmake run starts uwvm2-ros and its native gateway.
--- No host Lua application, external source mount, or controller write is used.
local abb = require("abb/lua/observation")

--- @brief Validate WASI arguments before acquiring the configured ROS alias.
--- @return integer Complete observation status, clamped to the command range.
--- @details The runtime supplies executable name at arg[0]. All capability
--- retirement completes inside the SDK before the final result is printed.
local function main()
    if #arg ~= 2 then
        io.stderr:write("usage: application ALIAS SIGNAL\n")
        return 22
    end
    return abb.output(abb.read_io(arg[1], arg[2]))
end

return main()
