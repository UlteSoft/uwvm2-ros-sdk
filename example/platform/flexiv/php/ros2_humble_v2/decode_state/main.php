<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Flexiv\Ros2HumbleV2\Ros2Flexiv_msgsMsgRobotStates', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 5161);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Flexiv\Ros2HumbleV2\Ros2Flexiv_msgsMsgRobotStates::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
