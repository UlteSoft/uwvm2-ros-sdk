<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Franka\Ros2\Ros2Franka_msgsSrvSetCartesianStiffness_Response', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 262);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Franka\Ros2\Ros2Franka_msgsSrvSetCartesianStiffness_Response::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
