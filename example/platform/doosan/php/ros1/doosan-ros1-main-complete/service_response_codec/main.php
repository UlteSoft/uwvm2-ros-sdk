<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs/GetRobotStateResponse PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "doosan/php/ros1/doosan-ros1-main-complete/records.php";
$value = new \Uwvm\DoosanDoosanRos1MainComplete\Ros1Dsr_msgsGetRobotStateResponse();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos1MainComplete\Ros1Dsr_msgsGetRobotStateResponse::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs/GetRobotStateResponse","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
