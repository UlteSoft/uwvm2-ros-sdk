<?php
/** @file main.php
 * @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "kuka/php/ros2/kuka-ros2-complete/records.php";
$value = new \Uwvm\KukaKukaRos2Complete\Ros2Control_msgsActionFollowJointTrajectory_Feedback();
$bytes = $value->encode();
$decoded = \Uwvm\KukaKukaRos2Complete\Ros2Control_msgsActionFollowJointTrajectory_Feedback::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"control_msgs/action/FollowJointTrajectory_Feedback","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
