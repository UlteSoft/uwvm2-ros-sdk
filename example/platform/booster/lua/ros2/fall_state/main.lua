--- @brief Observe complete booster_interface/msg/FallDownState from a granted fixture alias.
local observation = require("booster/lua/ros2/observation")
if #arg ~= 1 then return 22 end
local result = observation.wait_fall_state(arg[1], 250, function()
    return uwvm.pause_ms(20)
end)
return observation.output(result)
