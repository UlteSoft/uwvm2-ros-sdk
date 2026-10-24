--- @file observation.lua
--- @brief Observe complete source-pinned deep_robotics values.
--- @details One owner, exact complete decode and separate cleanup facts.
local common = require("uwvm/lua/observation")
local records = require("deep_robotics/lua/ros2/records")
local result = { output = common.output }

--- @brief Observe all fields of drdds/msg/ImuDataValue.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_imu(alias, attempts, pause)
    return common.receive(alias, records.Ros2DrddsMsgImuDataValue, attempts, pause)
end

--- @brief Observe all fields of drdds/msg/JointData.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_joint(alias, attempts, pause)
    return common.receive(alias, records.Ros2DrddsMsgJointData, attempts, pause)
end

--- @brief Observe all fields of drdds/msg/RobotStatus.
--- @param alias string Exact explicitly granted policy alias.
--- @param attempts integer Total poll bound 1..250.
--- @param pause function Caller-owned idle wait returning WASI errno.
--- @return table result Complete value and independent operation/close facts.
function result.wait_robot_status(alias, attempts, pause)
    return common.receive(alias, records.Ros2DrddsMsgRobotStatus, attempts, pause)
end

return result
