<?php
/** @file main.php
 * @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "universal_robots/php/ros2/universal-robots-ros2-trajectory-complete/records.php";
$value = new \Uwvm\UniversalRobotsUniversalRobotsRos2TrajectoryComplete\Ros2Ur_dashboard_msgsSrvAddToLog_Response();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsRos2TrajectoryComplete\Ros2Ur_dashboard_msgsSrvAddToLog_Response::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"ur_dashboard_msgs/srv/AddToLog_Response","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
