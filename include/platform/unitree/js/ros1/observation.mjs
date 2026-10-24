/**
 * @file observation.mjs
 * @brief Complete original Unitree ROS 1 observations.
 * @details All fields are retained; one owner closes on every normal acquired path.
 */
import {receive} from 'unitree/js/observation';
export {output} from 'unitree/js/observation';
import * as records from 'unitree/js/ros1/records';

/**
 * @brief Observe every original HighState field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_motion_state(alias, attempts, pause)
{
    return receive(alias, records.Ros1Unitree_legged_msgsHighState, attempts, pause);
}

/**
 * @brief Observe every original LowState field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_low_state(alias, attempts, pause)
{
    return receive(alias, records.Ros1Unitree_legged_msgsLowState, attempts, pause);
}

/**
 * @brief Observe every original MotorState field.
 * @param alias Exact native policy alias. @param attempts Total budget 1..250.
 * @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
 */
export function wait_motor_state(alias, attempts, pause)
{
    return receive(alias, records.Ros1Unitree_legged_msgsMotorState, attempts, pause);
}
