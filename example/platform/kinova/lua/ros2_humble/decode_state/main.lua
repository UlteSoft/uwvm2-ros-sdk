--- @brief Validate complete actual input through the shared Lua codec.
local records = require("kinova.lua.ros2.mobile_fjt_humble_complete.records")
local bytes = io.stdin:read(1405) or ""
local value = records.Ros2Sensor_msgsMsgJointState.decode(bytes)
local encoded = records.Ros2Sensor_msgsMsgJointState.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
