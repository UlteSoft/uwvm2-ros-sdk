/**
 * @file observation.mjs
 * @brief Observe full source-pinned booster records.
 * @details One explicit subscription; bounded idle polls; independent cleanup errors.
 * No native identity, resource policy or hardware state is inferred.
 */
import {receive} from "uwvm/js/observation";
export {output} from "uwvm/js/observation";
import * as records from "booster/js/ros2/records";

/**
 * @brief Observe all fields of booster_interface/msg/LowState.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_low_state(alias, attempts, pause)
{
    return receive(alias, records.Ros2Booster_interfaceMsgLowState, attempts, pause);
}

/**
 * @brief Observe all fields of booster_interface/msg/RemoteControllerState.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_remote_controller(alias, attempts, pause)
{
    return receive(alias, records.Ros2Booster_interfaceMsgRemoteControllerState, attempts, pause);
}

/**
 * @brief Observe all fields of booster_interface/msg/FallDownState.
 * @param alias Existing exact native policy alias.
 * @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
 * @return Complete owned value and independent operation/close results.
 */
export function wait_fall_state(alias, attempts, pause)
{
    return receive(alias, records.Ros2Booster_interfaceMsgFallDownState, attempts, pause);
}
