--- @file main.lua
--- @brief Exercise the complete original dsr_msgs2/msg/RobotState Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("doosan/lua/ros2/doosan-ros2-jazzy-complete/records")
local codec = records.Ros2Dsr_msgs2MsgRobotState
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"dsr_msgs2/msg/RobotState","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
