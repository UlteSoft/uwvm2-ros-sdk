<?php
declare(strict_types=1);
// Public modules are loaded by the declared ordered SDK source graph.
/**
 * @file main.php
 * @brief Read every original rosdemo_v3/GetAngle field in the genuine shared PHP VM.
 * @details All public modules are packed into the application's single Wasm.
 */
use Uwvm\RosWasm\Capability;
use Uwvm\Dobot\ros1_demo_v3\Ros1Rosdemo_v3GetAngleResponse;
use Uwvm\Dobot\ros1_demo_v3\Ros1Rosdemo_v3GetAngleRequest;

/**
 * @brief Query/observe one whole typed value under an explicit command-line alias.
 * @param array $arguments Process-owned argv; exactly one existing alias follows the name.
 * @return int Primary refusal, independent cleanup, then output failure, capped at 125.
 * @details Only idle 11 permits another bounded poll. Every opened owner closes once.
 */
function main(array $arguments): int
{
    if (count($arguments) !== 2) return 22;
    [$owner, $primary] = Capability::open($arguments[1]);
    $cleanup = 0;
    $present = false;
    $bytes = '';
    if ($primary === 0)
    {
        try
        {
            $request = new Ros1Rosdemo_v3GetAngleRequest();
            [$primary, $bytes] = $owner->invoke('service_call', $request->encode(), 4);
            if ($primary === 0)
            {
                $value = Ros1Rosdemo_v3GetAngleResponse::decode($bytes);
                $bytes = $value->encode();
                $present = true;
            }
        }
        catch (\InvalidArgumentException | \UnexpectedValueException $invalid)
        {
            $primary = 22;
        }
        finally
        {
            $cleanup = $owner->close();
        }
    }
    $text = json_encode(['primary' => $primary, 'cleanup' => $cleanup,
        'cleanup_present' => $owner !== null, 'response_present' => $present,
        'wire_hex' => $present ? bin2hex($bytes) : ''], JSON_THROW_ON_ERROR);
    $output = \Uwvm\Native\output($text);
    return min(125, $primary ?: ($cleanup ?: $output));
}
$uwvm_exit = main(\Uwvm\Native\argv());
