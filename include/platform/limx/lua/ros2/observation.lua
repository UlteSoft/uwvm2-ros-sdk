--- @file observation.lua
--- @brief Observe complete source-pinned limx values.
--- @details One owner, exact complete decode and separate cleanup facts.
local common = require("uwvm/lua/observation")
local records = require("limx/lua/ros2/records")
local result = { output = common.output }

--- @brief Observe all fields of uwvm_limx_bridge/msg/ImuData.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_imu(alias, attempts, pause)
    return common.receive(alias, records.Ros2Uwvm_limx_bridgeMsgImuData, attempts, pause)
end

--- @brief Observe all fields of uwvm_limx_bridge/msg/JointState.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_joint_state(alias, attempts, pause)
    return common.receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointState, attempts, pause)
end

--- @brief Observe all fields of uwvm_limx_bridge/msg/JointCmdLimx.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_joint_command(alias, attempts, pause)
    return common.receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointCmdLimx, attempts, pause)
end

return result
