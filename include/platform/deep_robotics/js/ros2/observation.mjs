/**
 * @file observation.mjs
 * @brief Observe full source-pinned deep_robotics records.
 * @details One explicit subscription; bounded idle polls; independent cleanup errors.
 * No native identity, resource policy or hardware state is inferred.
 */
import {receive} from "uwvm/js/observation";
export {output} from "uwvm/js/observation";
import * as records from "deep_robotics/js/ros2/records";

/**
 * @brief Observe all fields of drdds/msg/ImuDataValue.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_imu(alias, attempts, pause)
{
    return receive(alias, records.Ros2DrddsMsgImuDataValue, attempts, pause);
}

/**
 * @brief Observe all fields of drdds/msg/JointData.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_joint(alias, attempts, pause)
{
    return receive(alias, records.Ros2DrddsMsgJointData, attempts, pause);
}

/**
 * @brief Observe all fields of drdds/msg/RobotStatus.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_robot_status(alias, attempts, pause)
{
    return receive(alias, records.Ros2DrddsMsgRobotStatus, attempts, pause);
}
