--- @file main.lua
--- @brief Exercise the complete original dsr_msgs/GetRobotStateResponse Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("doosan/lua/ros1/doosan-ros1-patch-1-complete/records")
local codec = records.Ros1Dsr_msgsGetRobotStateResponse
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"dsr_msgs/GetRobotStateResponse","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
