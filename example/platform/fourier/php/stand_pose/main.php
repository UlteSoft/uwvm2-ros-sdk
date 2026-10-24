<?php
declare(strict_types=1);
/** @file main.php
 * @brief Observe uwvm_fourier_bridge/srv/GetStandPose_Response in the genuine PHP/Zend guest.
 * @details One explicit alias is required. Complete canonical bytes are emitted
 * after exactly one cleanup attempt; no controller command is synthesized.
 */
use \Uwvm\Fourier\Ros2AuroraBridgeV1 as Records;

$args = \Uwvm\Native\argv();
if (count($args) !== 3) { $uwvm_exit = 22; }
else
{
    $class = Records\Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response::class;
    if (!preg_match('/^[1-9][0-9]*$/D', $args[2])) { throw new \InvalidArgumentException("positive decimal sequence required"); }
    $request = (new Records\Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(['sequence' => \Uwvm\RosWasm\Word::fromDecimal($args[2], 8, false)]))->encode();
    $result = \Uwvm\Language\PhpObservation::receive($args[1], $class, $request, false);
    if ($result['response_present'])
    {
        $result['rpc_status_present'] = true;
        $result['rpc_status'] = $result['value']->status->decimal();
    }
    $uwvm_exit = \Uwvm\Language\PhpObservation::output($result);
}
