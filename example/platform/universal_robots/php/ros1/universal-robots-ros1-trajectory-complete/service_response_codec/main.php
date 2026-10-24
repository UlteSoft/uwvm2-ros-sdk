<?php
/** @file main.php
 * @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "universal_robots/php/ros1/universal-robots-ros1-trajectory-complete/records.php";
$value = new \Uwvm\UniversalRobotsUniversalRobotsRos1TrajectoryComplete\Ros1Ur_dashboard_msgsAddToLogResponse();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsRos1TrajectoryComplete\Ros1Ur_dashboard_msgsAddToLogResponse::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"ur_dashboard_msgs/AddToLogResponse","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
