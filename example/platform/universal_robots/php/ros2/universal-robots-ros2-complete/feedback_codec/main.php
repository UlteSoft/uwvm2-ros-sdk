<?php
/** @file main.php
 * @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "universal_robots/php/ros2/universal-robots-ros2-complete/records.php";
$value = new \Uwvm\UniversalRobotsUniversalRobotsRos2Complete\Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsRos2Complete\Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"ur_msgs/action/FollowJointTrajectoryUntil_Feedback","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
