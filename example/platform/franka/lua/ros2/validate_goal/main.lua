--- @brief Validate complete actual input through the shared Lua codec.
local records = require("franka.lua.ros2.franka_ros2_complete.records")
local bytes = io.stdin:read(41) or ""
local value = records.Ros2Franka_msgsActionGrasp_Goal.decode(bytes)
local encoded = records.Ros2Franka_msgsActionGrasp_Goal.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
