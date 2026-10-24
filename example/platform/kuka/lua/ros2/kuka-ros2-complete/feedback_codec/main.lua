--- @file main.lua
--- @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("kuka/lua/ros2/kuka-ros2-complete/records")
local codec = records.Ros2Control_msgsActionFollowJointTrajectory_Feedback
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"control_msgs/action/FollowJointTrajectory_Feedback","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
