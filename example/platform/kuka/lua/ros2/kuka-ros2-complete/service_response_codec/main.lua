--- @file main.lua
--- @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("kuka/lua/ros2/kuka-ros2-complete/records")
local codec = records.Ros2Lifecycle_msgsSrvChangeState_Response
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"lifecycle_msgs/srv/ChangeState_Response","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
