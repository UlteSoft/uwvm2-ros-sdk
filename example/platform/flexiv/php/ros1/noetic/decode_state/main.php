<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Flexiv\Ros1Noetic\Ros1Flexiv_msgsRobotStates', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 865);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Flexiv\Ros1Noetic\Ros1Flexiv_msgsRobotStates::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
