<?php
declare(strict_types=1);
namespace Uwvm\Unitree\Ros2;

/** @file Observation.php
 * @brief Complete original Unitree ROS 2 observations.
 * @details The selected schema retains every original field. The caller lends an
 * exact alias and finite poll budget; the result owns its complete decoded value.
 * Normal acquired paths close once and retain independent operation/cleanup statuses.
 */
final class Observation
{

    /** @brief Observe every original SportModeState field.
     * @param string $alias Exact alias. @param int $attempts Total budget 1..250.
     * @param callable $pause Caller idle wait. @return array Whole value and independent native facts. */
    public static function wait_motion_state(string $alias, int $attempts, callable $pause): array
    {
        return \Uwvm\Unitree\Observation::receive(
            $alias,
            Ros2Unitree_goMsgSportModeState::class,
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
            Ros2Unitree_goMsgLowState::class,
            $attempts,
            $pause
        );
    }

    /** @brief Observe every original WirelessController field.
     * @param string $alias Exact alias. @param int $attempts Total budget 1..250.
     * @param callable $pause Caller idle wait. @return array Whole value and independent native facts. */
    public static function wait_wireless_controller(string $alias, int $attempts, callable $pause): array
    {
        return \Uwvm\Unitree\Observation::receive(
            $alias,
            Ros2Unitree_goMsgWirelessController::class,
            $attempts,
            $pause
        );
    }
}
