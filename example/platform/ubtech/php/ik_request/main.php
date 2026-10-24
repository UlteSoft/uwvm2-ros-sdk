<?php
declare(strict_types=1);
/** @file main.php
 * @brief Observe grab_demo_msgs/msg/IKRequest in the genuine PHP/Zend guest.
 * @details One explicit alias is required. Complete canonical bytes are emitted
 * after exactly one cleanup attempt; no controller command is synthesized.
 */
use \Uwvm\Ubtech\Ros2Main as Records;

$args = \Uwvm\Native\argv();
if (count($args) !== 2) { $uwvm_exit = 22; }
else
{
    $class = Records\Ros2Grab_demo_msgsMsgIKRequest::class;
    $request = '';
    $result = \Uwvm\Language\PhpObservation::receive($args[1], $class, $request, true);
    $uwvm_exit = \Uwvm\Language\PhpObservation::output($result);
}
