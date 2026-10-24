<?php
declare(strict_types=1);
namespace Uwvm\Unitree;

use Uwvm\RosWasm\Capability;

/** @file Observation.php
 * @brief Observe whole Unitree records in the genuine Zend guest VM.
 * @details Ordinary paths preserve independent errors and close one owner once. */
final class Observation
{

    /** @brief Create local empty facts without native effects. @return array Owned result. */
    public static function empty(): array
    {
        return [
            'primary' => 0,
            'cleanup' => 0,
            'cleanup_present' => 0,
            'rpc_status' => 0,
            'rpc_present' => 0,
            'response_present' => 0,
            'polls' => 0,
            'required_present' => 0,
            'required' => '0',
            'length' => '18446744073709551615',
            'wire_hex' => '',
            'value' => null,
        ];
    }

    /** @brief Receive one complete original native record using a finite caller budget.
     * @param string $alias Exact granted native-type alias; no fallback is attempted.
     * @param string $codec Complete selected generated class name.
     * @param int $attempts Poll budget 1..250 including the immediate poll.
     * @param callable $pause Caller-controlled synchronous wait after idle.
     * @return array Entire owned value and original RPC/length/cleanup facts.
     * @details Only idle 11 permits another poll. There is no capacity replay.
     * Fatal traps and unrecoverable allocations can prevent ordinary cleanup. */
    public static function receive(string $alias, string $codec, int $attempts, callable $pause): array
    {
        $result = self::empty();
        if ($attempts < 1 || $attempts > 250)
        {
            $result['primary'] = 22;
            return $result;
        }
        [$owner, $result['primary']] = Capability::open($alias);
        if ($owner === null)
        {
            return $result;
        }
        try
        {
            $result['primary'] = $owner->invoke('topic_subscribe')[0];
            if ($result['primary'] === 0)
            {
                $frame = null;
                for ($attempt = 0; $attempt < $attempts; ++$attempt)
                {
                    $frame = $owner->invoke('event_poll', '', $codec::SCHEMA['maximum']);
                    ++$result['polls'];
                    $result['rpc_present'] = 1;
                    $result['primary'] = $result['rpc_status'] = $frame[0];
                    if ($frame[2] !== null)
                    {
                        $result['required_present'] = 1;
                        $result['required'] = $result['length'] = $frame[2]->decimal();
                    }
                    if ($frame[0] !== 11 || $attempt + 1 === $attempts)
                    {
                        break;
                    }
                    $code = $pause();
                    $validCode = (is_int($code) || is_float($code))
                    && is_finite((float)$code)
                    && floor((float)$code) == $code
                    && $code >= 0
                    && $code <= 4294967295;
                    if ($validCode)
                    {
                        $result['primary'] = $code;
                    }
                    else
                    {
                        $result['primary'] = 22;
                    }
                    if ($result['primary'] !== 0)
                    {
                        break;
                    }
                }
                if ($result['primary'] === 0 && $frame !== null)
                {
                    $value = $codec::decode($frame[1]);
                    $encoded = $value->encode();
                    if ($encoded !== $frame[1])
                    {
                        throw new \InvalidArgumentException('noncanonical whole record');
                    }
                    $result['value'] = $value;
                    $result['response_present'] = 1;
                    $result['wire_hex'] = bin2hex($encoded);
                }
            }
        }
        catch (\InvalidArgumentException | \OutOfRangeException | \RangeException $error)
        {
            $result['primary'] = $result['primary'] ?: 22;
        }
        catch (\Throwable $error)
        {
            $result['primary'] = $result['primary'] ?: 5;
        }
        finally
        {
            $result['cleanup_present'] = 1;
            try
            {
                $result['cleanup'] = $owner->close();
            }
            catch (\Throwable $error)
            {
                $result['cleanup'] = 5;
            }
        }
        return $result;
    }

    /** @brief Emit complete canonical hex after close. @param array $result Whole outcome.
     * @return int Primary, cleanup or output failure clamped for process exit. */
    public static function output(array $result): int
    {
        $status = $result['primary'] ?: $result['cleanup'];
        unset($result['value']);
        $output = \Uwvm\Native\output(json_encode($result, JSON_THROW_ON_ERROR));
        $status = $status ?: $output;
        return min($status, 125);
    }
}
