<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs/RobotState PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "doosan/php/ros1/doosan-ros1-aws-simulation-complete/records.php";
$value = new \Uwvm\DoosanDoosanRos1AwsSimulationComplete\Ros1Dsr_msgsRobotState();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos1AwsSimulationComplete\Ros1Dsr_msgsRobotState::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs/RobotState","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
