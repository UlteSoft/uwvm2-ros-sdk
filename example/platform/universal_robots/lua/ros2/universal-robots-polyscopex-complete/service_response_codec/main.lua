--- @file main.lua
--- @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("universal_robots/lua/ros2/universal-robots-polyscopex-complete/records")
local codec = records.Ros2UrinterfacesSrvSetAnalogOutput_Response
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"urinterfaces/srv/SetAnalogOutput_Response","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
