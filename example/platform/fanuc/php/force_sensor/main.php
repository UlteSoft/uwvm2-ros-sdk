<?php
/**
 * @file main.php
 * @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */

declare(strict_types=1);
/** @file main.php
 * @brief Read every original fanuc_msgs/msg/ForceSensor field using genuine PHP.
 * @details Shared transport/codecs execute in the VM packed inside this command. */
use Uwvm\Language\PhpObservation;
$arguments = \Uwvm\Native\argv();
use Uwvm\Fanuc\Ros2\Ros2Fanuc_msgsMsgForceSensor;
if (count($arguments) !== 2) { exit(22); }
$report = PhpObservation::receive($arguments[1], Ros2Fanuc_msgsMsgForceSensor::class, "", true);
exit(PhpObservation::output($report));
