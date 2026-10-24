<?php
/** @file main.php
 * @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "kuka/php/ros2/kuka-ros2-complete/records.php";
$value = new \Uwvm\KukaKukaRos2Complete\Ros2Kuka_driver_interfacesMsgKssStatus();
$bytes = $value->encode();
$decoded = \Uwvm\KukaKukaRos2Complete\Ros2Kuka_driver_interfacesMsgKssStatus::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"kuka_driver_interfaces/msg/KssStatus","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
