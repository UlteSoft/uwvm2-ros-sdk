--- @file main.lua
--- @brief Exercise the complete original urinterfaces/action/SetMode_Feedback Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("universal_robots/lua/ros2/universal-robots-polyscopex-complete/records")
local codec = records.Ros2UrinterfacesActionSetMode_Feedback
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"urinterfaces/action/SetMode_Feedback","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
