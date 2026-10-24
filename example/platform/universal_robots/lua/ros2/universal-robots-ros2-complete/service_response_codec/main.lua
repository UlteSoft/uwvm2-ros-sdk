--- @file main.lua
--- @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("universal_robots/lua/ros2/universal-robots-ros2-complete/records")
local codec = records.Ros2Ur_dashboard_msgsSrvAddToLog_Response
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"ur_dashboard_msgs/srv/AddToLog_Response","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
