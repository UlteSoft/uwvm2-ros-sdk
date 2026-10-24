<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Flexiv\ControllerCoreHumble\Ros2Trajectory_msgsMsgJointTrajectory', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 16981);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Flexiv\ControllerCoreHumble\Ros2Trajectory_msgsMsgJointTrajectory::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
