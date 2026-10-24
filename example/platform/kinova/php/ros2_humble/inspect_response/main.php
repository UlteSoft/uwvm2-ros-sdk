<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Kinova\Ros2Humble\Ros2Control_msgsActionFollowJointTrajectory_Result', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 265);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Kinova\Ros2Humble\Ros2Control_msgsActionFollowJointTrajectory_Result::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
