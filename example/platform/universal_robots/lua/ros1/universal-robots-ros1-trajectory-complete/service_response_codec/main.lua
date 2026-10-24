--- @file main.lua
--- @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("universal_robots/lua/ros1/universal-robots-ros1-trajectory-complete/records")
local codec = records.Ros1Ur_dashboard_msgsAddToLogResponse
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"ur_dashboard_msgs/AddToLogResponse","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
