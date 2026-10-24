--- @file main.lua
--- @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("doosan/lua/ros2/doosan-ros2-humble-complete/records")
local codec = records.Ros2Dsr_msgs2SrvGetRobotState_Response
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"dsr_msgs2/srv/GetRobotState_Response","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
