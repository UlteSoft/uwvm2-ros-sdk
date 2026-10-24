<?php
/**
 * @file main.php
 * @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */

declare(strict_types=1);
/** @file main.php
 * @brief Read every original motoros2_interfaces/msg/AlarmInfo field using genuine PHP.
 * @details Shared transport/codecs execute in the VM packed inside this command. */
use Uwvm\RosWasm\Observation;
use Uwvm\Yaskawa\Ros2\Ros2Motoros2_interfacesMsgAlarmInfo;
if (count($argv) !== 2) { exit(22); }
$report = Observation::receive($argv[1], Ros2Motoros2_interfacesMsgAlarmInfo::class, 250, static fn(): int => \Uwvm\Native\pause_ms(20));
exit(Observation::output($report));
