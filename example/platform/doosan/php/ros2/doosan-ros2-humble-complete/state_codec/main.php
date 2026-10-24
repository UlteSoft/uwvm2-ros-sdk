<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs2/msg/RobotState PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "doosan/php/ros2/doosan-ros2-humble-complete/records.php";
$value = new \Uwvm\DoosanDoosanRos2HumbleComplete\Ros2Dsr_msgs2MsgRobotState();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos2HumbleComplete\Ros2Dsr_msgs2MsgRobotState::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs2/msg/RobotState","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
