--- @brief Validate complete actual input through the shared Lua codec.
local records = require("flexiv.lua.ros2.flexiv_controller_core_humble_complete.records")
local bytes = io.stdin:read(16981) or ""
local value = records.Ros2Trajectory_msgsMsgJointTrajectory.decode(bytes)
local encoded = records.Ros2Trajectory_msgsMsgJointTrajectory.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
