<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Franka\Ros2\Ros2Franka_msgsActionGrasp_Goal', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 41);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Franka\Ros2\Ros2Franka_msgsActionGrasp_Goal::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
