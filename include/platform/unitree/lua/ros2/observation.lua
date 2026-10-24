--- @file observation.lua
--- @brief Complete original Unitree ROS 2 observations.
--- @details Each facade selects the complete original ROS 2 schema and borrows
--- the exact alias only through a finite caller budget of 1..250 polls. The
--- caller owns the whole result with independent RPC, length and cleanup facts;
--- every ordinarily acquired owner receives exactly one explicit close attempt.
local observation = require("unitree/lua/observation")
local records = require("unitree/lua/ros2/records")
local M = { output = observation.output }
--- @brief Observe every original SportModeState field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_motion_state(alias, attempts, pause)
    return observation.receive(alias, records.Ros2Unitree_goMsgSportModeState, attempts, pause)
end
--- @brief Observe every original LowState field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_low_state(alias, attempts, pause)
    return observation.receive(alias, records.Ros2Unitree_goMsgLowState, attempts, pause)
end
--- @brief Observe every original WirelessController field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_wireless_controller(alias, attempts, pause)
    return observation.receive(alias, records.Ros2Unitree_goMsgWirelessController, attempts, pause)
end
return M
