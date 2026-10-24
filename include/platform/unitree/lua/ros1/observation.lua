--- @file observation.lua
--- @brief Complete original Unitree ROS 1 observations.
--- @details Each facade selects the complete original ROS 1 schema and borrows
--- the exact alias only through a finite caller budget of 1..250 polls. The
--- caller owns the whole result with independent RPC, length and cleanup facts;
--- every ordinarily acquired owner receives exactly one explicit close attempt.
local observation = require("unitree/lua/observation")
local records = require("unitree/lua/ros1/records")
local M = { output = observation.output }
--- @brief Observe every original HighState field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_motion_state(alias, attempts, pause)
    return observation.receive(alias, records.Ros1Unitree_legged_msgsHighState, attempts, pause)
end
--- @brief Observe every original LowState field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_low_state(alias, attempts, pause)
    return observation.receive(alias, records.Ros1Unitree_legged_msgsLowState, attempts, pause)
end
--- @brief Observe every original MotorState field.
--- @param alias string Exact alias. @param attempts integer Total budget 1..250.
--- @param pause function Caller idle wait. @return table Whole value and independent native facts.
function M.wait_motor_state(alias, attempts, pause)
    return observation.receive(alias, records.Ros1Unitree_legged_msgsMotorState, attempts, pause)
end
return M
