<?php
/** @file main.php
 * @brief Exercise the complete original ur_msgs/IOStates PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
// The declared public module graph initializes this exact record namespace.
$value = new \Uwvm\UniversalRobotsUniversalRobotsRos1Complete\Ros1Ur_msgsIOStates();
$bytes = $value->encode();
$decoded = \Uwvm\UniversalRobotsUniversalRobotsRos1Complete\Ros1Ur_msgsIOStates::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"ur_msgs/IOStates","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
