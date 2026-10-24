<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs/AlterMotionStream PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "doosan/php/ros1/doosan-ros1-doosan-robotics-patch-1-complete/records.php";
$value = new \Uwvm\DoosanDoosanRos1DoosanRoboticsPatch1Complete\Ros1Dsr_msgsAlterMotionStream();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos1DoosanRoboticsPatch1Complete\Ros1Dsr_msgsAlterMotionStream::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs/AlterMotionStream","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
