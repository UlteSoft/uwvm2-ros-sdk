--- @file main.lua
--- @brief Read the complete RAPID motion speed ratio once.
--- @details The empty request changes no speed override. Controller refusal retains the full reply.
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
    return abb.output(abb.read_speed(arg[1]))
end

return main()
