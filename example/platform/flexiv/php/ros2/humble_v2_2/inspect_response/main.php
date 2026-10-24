<?php
declare(strict_types=1);
/** @brief Validate every original field using the genuine PHP record codec. */
if (!class_exists('\Uwvm\Flexiv\Ros2HumbleV22\Ros2Flexiv_msgsSrvGetOperationalStatus_Response', false)) throw new
        LogicException('The ordered public record module must already be loaded');
$bytes = stream_get_contents(STDIN, 17651);
if ($bytes === false) throw new RuntimeException('stdin failed');
$value = \Uwvm\Flexiv\Ros2HumbleV22\Ros2Flexiv_msgsSrvGetOperationalStatus_Response::decode($bytes);
fwrite(STDOUT, bin2hex($value->encode()) . "\n");
