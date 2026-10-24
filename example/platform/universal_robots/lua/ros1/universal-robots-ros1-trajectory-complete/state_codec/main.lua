--- @file main.lua
--- @brief Exercise the complete original ur_msgs/IOStates Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("universal_robots/lua/ros1/universal-robots-ros1-trajectory-complete/records")
local codec = records.Ros1Ur_msgsIOStates
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"ur_msgs/IOStates","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
