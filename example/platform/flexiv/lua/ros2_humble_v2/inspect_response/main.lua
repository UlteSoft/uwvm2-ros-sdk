--- @brief Validate complete actual input through the shared Lua codec.
local records = require("flexiv.lua.ros2.flexiv_ros2_humble_v2_complete.records")
local bytes = io.stdin:read(262) or ""
local value = records.Ros2Flexiv_msgsActionGrasp_Result.decode(bytes)
local encoded = records.Ros2Flexiv_msgsActionGrasp_Result.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
