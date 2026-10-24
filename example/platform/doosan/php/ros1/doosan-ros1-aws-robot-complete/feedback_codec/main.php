<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs/LogAlarm PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "doosan/php/ros1/doosan-ros1-aws-robot-complete/records.php";
$value = new \Uwvm\DoosanDoosanRos1AwsRobotComplete\Ros1Dsr_msgsLogAlarm();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos1AwsRobotComplete\Ros1Dsr_msgsLogAlarm::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs/LogAlarm","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
