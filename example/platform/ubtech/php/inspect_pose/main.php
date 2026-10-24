<?php
declare(strict_types=1);
/** @file main.php
 * @brief Observe grab_demo_msgs/msg/GraspCandidate in the genuine PHP/Zend guest.
 * @details One explicit alias is required. Complete canonical bytes are emitted
 * after exactly one cleanup attempt; no controller command is synthesized.
 */
use \Uwvm\Ubtech\Ros2Main as Records;

$args = \Uwvm\Native\argv();
if (count($args) !== 2) { $uwvm_exit = 22; }
else
{
    $class = Records\Ros2Grab_demo_msgsMsgGraspCandidate::class;
    $request = '';
    $result = \Uwvm\Language\PhpObservation::receive($args[1], $class, $request, true);
    if ($result['response_present'])
    {
        $q = $result['value']->pose->pose->orientation;
        $norm2 = $q->x * $q->x + $q->y * $q->y + $q->z * $q->z + $q->w * $q->w;
        if (!is_finite($norm2) || $norm2 <= 0.0) { $result['primary'] = 22; }
    }
    $uwvm_exit = \Uwvm\Language\PhpObservation::output($result);
}
