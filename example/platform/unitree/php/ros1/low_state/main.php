<?php
declare(strict_types=1);

/**
 * @file main.php
 * @brief Observe the entire original ROS 1 LowState through the genuine php guest.
 * @details Preserve every canonical byte and independent operation/cleanup facts.
 * The process status selects primary, cleanup or output failure, capped at 125.
 */
use Uwvm\Unitree\Ros1\Observation;

// Validate exactly one alias before acquiring any native resource.
$args = Uwvm\Native\argv();
if (count($args) !== 2)
{
    $uwvm_exit = 22;
}
else
{
    // Only an idle result permits this pause within the finite 250-poll budget.
    $pause = static fn() => Uwvm\Native\pause_ms(20);
    $result = Observation::wait_low_state($args[1], 250, $pause);

    // Emit all facts after explicit close; the Zend embedding reads this slot.
    $uwvm_exit = Uwvm\Unitree\Observation::output($result);
}
