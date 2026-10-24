<?php
declare(strict_types=1);
namespace Uwvm\Unitree\Ros1;

/** @file Observation.php
 * @brief Complete original Unitree ROS 1 observations.
 * @details The selected schema retains every original field. The caller lends an
 * exact alias and finite poll budget; the result owns its complete decoded value.
 * Normal acquired paths close once and retain independent operation/cleanup statuses.
 */
final class Observation
{

    /** @brief Observe every original HighState field.
     * @param string $alias Exact alias. @param int $attempts Total budget 1..250.
     * @param callable $pause Caller idle wait. @return array Whole value and independent native facts. */
    public static function wait_motion_state(string $alias, int $attempts, callable $pause): array
    {
        return \Uwvm\Unitree\Observation::receive(
            $alias,
            Ros1Unitree_legged_msgsHighState::class,
            $attempts,
            $pause
        );
    }

    /** @brief Observe every original LowState field.
     * @param string $alias Exact alias. @param int $attempts Total budget 1..250.
     * @param callable $pause Caller idle wait. @return array Whole value and independent native facts. */
    public static function wait_low_state(string $alias, int $attempts, callable $pause): array
    {
        return \Uwvm\Unitree\Observation::receive(
            $alias,
            Ros1Unitree_legged_msgsLowState::class,
            $attempts,
            $pause
        );
    }

    /** @brief Observe every original MotorState field.
     * @param string $alias Exact alias. @param int $attempts Total budget 1..250.
     * @param callable $pause Caller idle wait. @return array Whole value and independent native facts. */
    public static function wait_motor_state(string $alias, int $attempts, callable $pause): array
    {
        return \Uwvm\Unitree\Observation::receive(
            $alias,
            Ros1Unitree_legged_msgsMotorState::class,
            $attempts,
            $pause
        );
    }
}
