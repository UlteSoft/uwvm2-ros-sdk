<?php
declare(strict_types=1);
namespace Uwvm\Language;
use Uwvm\RosWasm\Capability;

/**
 * @file Observation.php
 * @brief Own one complete canonical observation inside the genuine Zend VM.
 * @details Source platforms supply exact record classes and request bytes.
 * Services are never retried. Idle topic polling has an explicit finite budget.
 */
final class PhpObservation
{
    /** @brief Create independent operation/cleanup/value facts.
     * @return array Owning observation; missing cleanup differs from success.
     */
    public static function outcome(): array
    {
        return ['primary' => 0, 'cleanup' => 0, 'cleanup_present' => false,
            'response_present' => false, 'required' => null, 'rpc_status_present' => false,
            'rpc_status' => null, 'wire_hex' => '', 'value' => null];
    }

    /**
     * @brief Encode one complete generated value and publish it once in Zend Wasm.
     * @param string $alias Explicitly granted publisher alias for this native type.
     * @param object $message Trusted generated record with SCHEMA and encode().
     * @return array Separate publish/cleanup facts; response_present stays false.
     * @details Encoding and complete bounds are checked before acquisition.
     * publish_invoked means one raw call was attempted; publish_accepted means
     * that call returned zero, not that a subscriber acknowledged delivery.
     * QoS/type registration remain explicit host policy. No owner or pointer
     * escapes, and cleanup failure never replays or reverses a publication.
     * This is typed-copy migration, not rcl_publish's pointer/allocation ABI.
     * @throws \Throwable Unexpected encoding/native exceptions after one cleanup.
     */
    public static function publish(string $alias, object $message): array
    {
        $result = self::outcome();
        $result['publish_invoked'] = false;
        $result['publish_accepted'] = false;
        $class = get_class($message);
        if (!defined($class . '::SCHEMA') || !method_exists($message, 'encode'))
        {
            $result['primary'] = 22;
            return $result;
        }
        $schema = $class::SCHEMA;
        if (!is_array($schema) || !isset($schema['minimum'], $schema['maximum'])
            || !is_int($schema['minimum']) || !is_int($schema['maximum'])
            || $schema['minimum'] < 0 || $schema['maximum'] < $schema['minimum']
            || $schema['maximum'] > 32768)
        {
            $result['primary'] = 22;
            return $result;
        }
        try
        {
            $bytes = $message->encode();
            if (!is_string($bytes) || strlen($bytes) < $schema['minimum']
                || strlen($bytes) > $schema['maximum'])
            {
                $result['primary'] = 22;
                return $result;
            }
        }
        catch (\InvalidArgumentException|\RangeException $invalid)
        {
            $result['primary'] = 22;
            return $result;
        }
        $result['wire_hex'] = bin2hex($bytes);
        [$owner, $result['primary']] = Capability::open($alias);
        if ($owner === null) { return $result; }
        try
        {
            $result['publish_invoked'] = true;
            $result['primary'] = $owner->invoke('topic_publish', $bytes)[0];
            $result['publish_accepted'] = $result['primary'] === 0;
        }
        finally
        {
            $result['cleanup_present'] = true;
            $result['cleanup'] = $owner->close();
        }
        return $result;
    }

    /** @brief Receive one complete original typed message or service response.
     * @param string $alias Exact explicitly granted UTF-8 capability alias.
     * @param string $class Complete original generated record class.
     * @param string $request Complete canonical request, validated by its caller.
     * @param bool $topic True for subscription; false for single-attempt service.
     * @param int $polls Maximum idle polls, 1..250, separated by real 20 ms pauses.
     * @return array Owning full wire/value after exactly one close attempt.
     * @throws \Throwable Original unexpected exception, after explicit cleanup.
     */
    public static function receive(string $alias, string $class, string $request = '', bool $topic = true, int $polls = 250): array
    {
        $result = self::outcome();
        $capacity = $class::SCHEMA['maximum'];
        if (strlen($request) > 32768 || $capacity > 32768 || $polls < 1 || $polls > 250)
        {
            $result['primary'] = 22;
            return $result;
        }
        [$owner, $result['primary']] = Capability::open($alias);
        if ($owner === null) { return $result; }
        try
        {
            if ($topic) { $result['primary'] = $owner->invoke('topic_subscribe')[0]; }
            if ($result['primary'] === 0)
            {
                for ($index = 0; $index < ($topic ? $polls : 1); ++$index)
                {
                    $frame = $owner->invoke($topic ? 'event_poll' : 'service_call', $request, $capacity);
                    if (!$topic || $frame[0] !== 11 || $index + 1 === $polls) { break; }
                    $result['primary'] = \Uwvm\Native\pause_ms(20);
                    if ($result['primary'] !== 0) { break; }
                }
                if ($result['primary'] === 0) { $result['primary'] = $frame[0]; }
                $result['required'] = $frame[2] === null ? null : $frame[2]->decimal();
                if ($result['primary'] === 0)
                {
                    try
                    {
                        if ($frame[2] === null || $frame[2]->decimal() !== (string) strlen($frame[1]))
                        { throw new \InvalidArgumentException('complete returned extent required'); }
                        $result['value'] = $class::decode($frame[1]);
                        $result['wire_hex'] = bin2hex($frame[1]);
                        $result['response_present'] = true;
                    }
                    catch (\InvalidArgumentException|\RangeException $invalid) { $result['primary'] = 22; }
                }
            }
        }
        finally
        {
            $result['cleanup_present'] = true;
            $result['cleanup'] = $owner->close();
        }
        return $result;
    }

    /** @brief Output exact retained canonical bytes after explicit resource cleanup.
     * @param array $result Independent complete observation facts.
     * @return int Primary errno, cleanup errno or output error, capped at 125.
     */
    public static function output(array $result): int
    {
        unset($result['value']);
        $line = json_encode($result, JSON_THROW_ON_ERROR);
        $error = \Uwvm\Native\output($line);
        $status = $result['primary'] !== 0 ? $result['primary'] : $result['cleanup'];
        if ($status === 0 && $result['rpc_status_present'] && $result['rpc_status'] !== '0') { $status = 5; }
        return $error !== 0 ? $error : min(125, $status);
    }
}
