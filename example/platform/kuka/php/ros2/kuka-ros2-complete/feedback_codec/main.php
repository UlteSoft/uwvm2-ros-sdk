<?php
/** @file main.php
 * @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
// The declared public module graph initializes this exact record namespace.
$value = new \Uwvm\KukaKukaRos2Complete\Ros2Control_msgsActionFollowJointTrajectory_Feedback();
$bytes = $value->encode();
$decoded = \Uwvm\KukaKukaRos2Complete\Ros2Control_msgsActionFollowJointTrajectory_Feedback::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"control_msgs/action/FollowJointTrajectory_Feedback","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
