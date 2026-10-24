--- @brief Validate complete actual input through the shared Lua codec.
local records = require("franka.lua.ros1.franka_ros1_complete.records")
local bytes = io.stdin:read(262) or ""
local value = records.Ros1Franka_msgsSetCartesianImpedanceResponse.decode(bytes)
local encoded = records.Ros1Franka_msgsSetCartesianImpedanceResponse.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
