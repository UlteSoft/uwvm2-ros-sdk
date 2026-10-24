<?php
declare(strict_types=1);
/** @file main.php
 * @brief Observe aimdk_msgs/srv/GetMcAction_Response in the genuine PHP/Zend guest.
 * @details One explicit alias is required. Complete canonical bytes are emitted
 * after exactly one cleanup attempt; no controller command is synthesized.
 */
use \Uwvm\Agibot\Ros2SdkV110Main as Records;

$args = \Uwvm\Native\argv();
if (count($args) !== 2) { $uwvm_exit = 22; }
else
{
    $class = Records\Ros2Aimdk_msgsSrvGetMcAction_Response::class;
    $request = (new Records\Ros2Aimdk_msgsSrvGetMcAction_Request())->encode();
    $result = \Uwvm\Language\PhpObservation::receive($args[1], $class, $request, false);
    if ($result['response_present'])
    {
        $result['rpc_status_present'] = true;
        $result['rpc_status'] = $result['value']->header->code->decimal();
    }
    $uwvm_exit = \Uwvm\Language\PhpObservation::output($result);
}
