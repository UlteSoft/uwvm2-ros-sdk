/**
 * @file observation.mjs
 * @brief Complete original Unitree ROS 2 observations.
 * @details All fields are retained; one owner closes on every normal acquired path.
 */
import {receive} from 'unitree/js/observation';
export {output} from 'unitree/js/observation';
import * as records from 'unitree/js/ros2/records';

/**
 * @brief Observe every original SportModeState field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_motion_state(alias, attempts, pause)
{
    return receive(alias, records.Ros2Unitree_goMsgSportModeState, attempts, pause);
}

/**
 * @brief Observe every original LowState field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_low_state(alias, attempts, pause)
{
    return receive(alias, records.Ros2Unitree_goMsgLowState, attempts, pause);
}

/**
 * @brief Observe every original WirelessController field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_wireless_controller(alias, attempts, pause)
{
    return receive(alias, records.Ros2Unitree_goMsgWirelessController, attempts, pause);
}
