--- @brief Validate original canonical records and preserve stream errors.
local records = require("franka.lua.ros2.franka_ros2_complete.records")
local bytes, read_error = io.stdin:read(10170)
if read_error then io.stderr:write(read_error, "\n"); os.exit(5) end
local ok, encoded = pcall(function()
    local value = records.Ros2Franka_msgsMsgFrankaRobotState.decode(bytes or "")
    return records.Ros2Franka_msgsMsgFrankaRobotState.encode(value)
end)
if not ok then io.stderr:write("invalid canonical record: ", tostring(encoded), "\n"); os.exit(22) end
local written = io.stdout:write((encoded:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)), "\n")
if not written or not io.stdout:flush() then os.exit(5) end
