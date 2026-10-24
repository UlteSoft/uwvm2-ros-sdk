/**
 * @file observation.mjs
 * @brief Observe full source-pinned limx records.
 * @details One explicit subscription; bounded idle polls; independent cleanup errors.
 * No native identity, resource policy or hardware state is inferred.
 */
import {receive} from "uwvm/js/observation";
export {output} from "uwvm/js/observation";
import * as records from "limx/js/ros2/records";

/**
 * @brief Observe all fields of uwvm_limx_bridge/msg/ImuData.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_imu(alias, attempts, pause)
{
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgImuData, attempts, pause);
}

/**
 * @brief Observe all fields of uwvm_limx_bridge/msg/JointState.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_joint_state(alias, attempts, pause)
{
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointState, attempts, pause);
}

/**
 * @brief Observe all fields of uwvm_limx_bridge/msg/JointCmdLimx.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_joint_command(alias, attempts, pause)
{
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointCmdLimx, attempts, pause);
}
