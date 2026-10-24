--- @file main.lua
--- @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("doosan/lua/ros2/doosan-ros2-humble-complete/records")
local codec = records.Ros2Dsr_msgs2ActionJogH2r_Feedback
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"dsr_msgs2/action/JogH2r_Feedback","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
