<?php
/** @file main.php
 * @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "universal_robots/php/ros1/universal-robots-ros1-complete/records.php";
$value = new \Uwvm\UniversalRobotsUniversalRobotsRos1Complete\Ros1Ur_dashboard_msgsSetModeFeedback();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsRos1Complete\Ros1Ur_dashboard_msgsSetModeFeedback::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"ur_dashboard_msgs/SetModeFeedback","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
