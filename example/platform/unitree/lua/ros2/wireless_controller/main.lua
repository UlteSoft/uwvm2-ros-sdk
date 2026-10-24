--- @file main.lua
--- @brief Observe the entire original ROS 2 WirelessController through the genuine lua guest.
--- @details Preserve every canonical byte and independent operation/close facts.
--- The returned process status selects primary, cleanup or output failure, capped at 125.
local observation = require("unitree/lua/ros2/observation")

-- Lua arg excludes the executable; validate one alias before acquiring an owner.
if #arg ~= 1 then
    return 22
end

-- Only idle permits this 20 ms pause within the finite 250-poll budget.
local function pause()
    return uwvm.pause_ms(20)
end
local result = observation.wait_wireless_controller(arg[1], 250, pause)

-- Output after explicit close; the genuine Lua embedding uses this return code.
local status = observation.output(result)
return status
