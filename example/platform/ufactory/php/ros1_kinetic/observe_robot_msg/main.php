<?php
declare(strict_types=1);
/**
 * @file main.php
 * @brief Read every original xarm_msgs/RobotMsg field in the genuine shared PHP VM.
 * @details All public modules are packed into the application's single Wasm.
 */
require_once 'ros/php/RosWasm/Word.php';
require_once 'ros/php/RosWasm/Wire.php';
require_once 'ros/php/RosWasm/Transport.php';
require_once 'ufactory/php/ros1_kinetic/records.php';
use Uwvm\RosWasm\Capability;
use Uwvm\Ufactory\ros1_kinetic\Ros1Xarm_msgsRobotMsg;


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
            $primary = $owner->invoke('topic_subscribe')[0];
            for ($attempt = 0; $primary === 0 && $attempt < 250; ++$attempt)
            {
                [$primary, $bytes] = $owner->invoke('event_poll', '', 366);
                if ($primary !== 11 || $attempt === 249) break;
                usleep(20000);
                $primary = 0;
            }
            if ($primary === 0)
            {
                $value = Ros1Xarm_msgsRobotMsg::decode($bytes);
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
        'wire_hex' => $present ? bin2hex($bytes) : ''], JSON_THROW_ON_ERROR) . "\n";
    $output = fwrite(STDOUT, $text) === strlen($text) ? 0 : 5;
    return min(125, $primary ?: ($cleanup ?: $output));
}
exit(main($argv));
