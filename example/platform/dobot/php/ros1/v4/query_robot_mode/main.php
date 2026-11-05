<?php
declare(strict_types=1);
// Public modules are loaded by the declared ordered SDK source graph.
/**
 * @file main.php
 * @brief Read every original dobot_v4_bringup/RobotMode field in the genuine shared PHP VM.
 * @details All public modules are packed into the application's single Wasm.
 */
use Uwvm\RosWasm\Capability;
use Uwvm\Dobot\ros1_v4\Ros1Dobot_v4_bringupRobotModeResponse;
use Uwvm\Dobot\ros1_v4\Ros1Dobot_v4_bringupRobotModeRequest;

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
            $request = new Ros1Dobot_v4_bringupRobotModeRequest();
            [$primary, $bytes] = $owner->invoke('service_call', $request->encode(), 8);
            if ($primary === 0)
            {
                $value = Ros1Dobot_v4_bringupRobotModeResponse::decode($bytes);
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
