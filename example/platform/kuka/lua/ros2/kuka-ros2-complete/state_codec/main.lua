--- @file main.lua
--- @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus Lua class.
--- @details Local fixtures only; no ROS resource or permission is acquired.
local records = require("kuka/lua/ros2/kuka-ros2-complete/records")
local codec = records.Ros2Kuka_driver_interfacesMsgKssStatus
local bytes = codec.encode(codec.new())
assert(codec.encode(codec.decode(bytes)) == bytes, "complete canonical record changed")
local hex = bytes:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
print('{"type":"kuka_driver_interfaces/msg/KssStatus","bytes":' .. #bytes .. ',"wire_hex":"' .. hex .. '"}')
