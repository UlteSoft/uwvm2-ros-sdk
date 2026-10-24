--- @brief Validate complete actual input through the shared Lua codec.
local records = require("flexiv.lua.ros2.flexiv_ros2_foxy_complete.records")
local bytes = io.stdin:read(2) or ""
local value = records.Ros2Flexiv_msgsMsgMode.decode(bytes)
local encoded = records.Ros2Flexiv_msgsMsgMode.encode(value)
io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
