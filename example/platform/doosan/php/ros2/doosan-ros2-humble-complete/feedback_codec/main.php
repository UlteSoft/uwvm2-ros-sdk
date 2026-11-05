<?php
/** @file main.php
 * @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback PHP class.
 * @details Local fixture values only; genuine PHP and the shared codec are required.
 */
declare(strict_types=1);
// The declared public module graph initializes this exact record namespace.
$value = new \Uwvm\DoosanDoosanRos2HumbleComplete\Ros2Dsr_msgs2ActionJogH2r_Feedback();
$bytes = $value->encode();
$decoded = \Uwvm\DoosanDoosanRos2HumbleComplete\Ros2Dsr_msgs2ActionJogH2r_Feedback::decode($bytes);
if ($decoded->encode() !== $bytes) { throw new \RuntimeException('complete canonical record changed'); }
echo '{"type":"dsr_msgs2/action/JogH2r_Feedback","bytes":' . strlen($bytes) . ',"wire_hex":"' . bin2hex($bytes) . '"}' . "\n";
