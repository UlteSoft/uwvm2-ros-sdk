<?php
/** @file main.php
 * @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
require "kuka/php/ros2/kuka-ros2-complete/records.php";
$value = new \Uwvm\KukaKukaRos2Complete\Ros2Lifecycle_msgsSrvChangeState_Response();
$bytes = $value->encode();
$decoded = \Uwvm\KukaKukaRos2Complete\Ros2Lifecycle_msgsSrvChangeState_Response::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"lifecycle_msgs/srv/ChangeState_Response","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
