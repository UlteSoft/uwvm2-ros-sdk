--- @file main.lua
--- @brief Exercise the complete original dsr_msgs/AlterMotionStream Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("doosan/lua/ros1/doosan-ros1-noetic-devel-complete/records")
local codec = records.Ros1Dsr_msgsAlterMotionStream
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"dsr_msgs/AlterMotionStream","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
