--- @brief Validate complete actual input through the shared Lua codec.
local records = require("flexiv.lua.ros1.flexiv_ros1_noetic_complete.records")
local bytes = io.stdin:read(865) or ""
local value = records.Ros1Flexiv_msgsRobotStates.decode(bytes)
local encoded = records.Ros1Flexiv_msgsRobotStates.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
