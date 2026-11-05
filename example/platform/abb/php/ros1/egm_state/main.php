<?php
/**
 * @file main.php
 * @brief Run one explicit ABB ROS 1 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */

declare(strict_types=1);
/** @file main.php
 * @brief Read every original abb_egm_msgs/EGMState field using genuine PHP.
 * @details Shared transport/codecs execute in the VM packed inside this command. */
use Uwvm\Language\PhpObservation;
$arguments = \Uwvm\Native\argv();
use Uwvm\Abb\Ros1\Ros1Abb_egm_msgsEGMState;
if (count($arguments) !== 2) { exit(22); }
$report = PhpObservation::receive($arguments[1], Ros1Abb_egm_msgsEGMState::class, "", true);
exit(PhpObservation::output($report));
