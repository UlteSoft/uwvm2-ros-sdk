--- @brief Observe complete drdds/msg/JointData from a granted fixture alias.
local observation = require("deep_robotics/lua/ros2/observation")
if #arg ~= 1 then return 22 end
local result = observation.wait_joint(arg[1], 250, function()
    return uwvm.pause_ms(20)
end)
return observation.output(result)
