--- @brief Validate complete actual input through the shared Lua codec.
local records = require("flexiv.lua.ros2.flexiv_controller_core_humble_complete.records")
local bytes = io.stdin:read(9373) or ""
local value = records.Ros2Sensor_msgsMsgJointState.decode(bytes)
local encoded = records.Ros2Sensor_msgsMsgJointState.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
