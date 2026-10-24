<?php
/** @file main.php
 * @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "universal_robots/php/ros2/universal-robots-polyscopex-complete/records.php";
$value = new \Uwvm\UniversalRobotsUniversalRobotsPolyscopexComplete\Ros2UrinterfacesSrvSetAnalogOutput_Response();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsPolyscopexComplete\Ros2UrinterfacesSrvSetAnalogOutput_Response::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"urinterfaces/srv/SetAnalogOutput_Response","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
