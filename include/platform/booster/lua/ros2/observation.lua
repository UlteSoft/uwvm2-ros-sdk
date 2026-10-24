--- @file observation.lua
--- @brief Observe complete source-pinned booster values.
--- @details One owner, exact complete decode and separate cleanup facts.
local common = require("uwvm/lua/observation")
local records = require("booster/lua/ros2/records")
local result = { output = common.output }

--- @brief Observe all fields of booster_interface/msg/LowState.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_low_state(alias, attempts, pause)
    return common.receive(alias, records.Ros2Booster_interfaceMsgLowState, attempts, pause)
end

--- @brief Observe all fields of booster_interface/msg/RemoteControllerState.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_remote_controller(alias, attempts, pause)
    return common.receive(alias, records.Ros2Booster_interfaceMsgRemoteControllerState, attempts, pause)
end

--- @brief Observe all fields of booster_interface/msg/FallDownState.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_fall_state(alias, attempts, pause)
    return common.receive(alias, records.Ros2Booster_interfaceMsgFallDownState, attempts, pause)
end

return result
