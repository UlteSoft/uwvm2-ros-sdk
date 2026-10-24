<?php
declare(strict_types=1);
namespace Uwvm\RosWasm;

/**
 * @file NativeCommand.php
 * @brief Perform complete finite native ROS observations in the genuine PHP guest.
 * @details PHP owns every canonical value, transport status and cleanup fact.
 * The common engine bundles this ordinary module and the exact native bridge.
 */
final class NativeCommand
{
    /**
     * @brief Decode the whole counted scalar UTF-8 field within its byte quota.
     * @param string $wire Complete owning original canonical record.
     * @param int $offset Original field-length byte offset.
     * @param int $maximum Admitted UTF-8 byte count, excluding the u32 prefix.
     * @return string Whole original text, including empty data and literal BOM.
     * @throws \UnexpectedValueException If framing, quota or UTF-8 is invalid.
     */
    private static function text(string $wire, int $offset, int $maximum): string
    {
        if (strlen($wire) < $offset + 4) {
            throw new \UnexpectedValueException('truncated original length');
        }
        $length = unpack('Vlength', substr($wire, $offset, 4))['length'];
        if ($length > $maximum || strlen($wire) !== $offset + 4 + $length) {
            throw new \UnexpectedValueException('complete original record and byte quota required');
        }
        $text = substr($wire, $offset + 4);
        if (str_contains($text, "\0") || preg_match('//u', $text) !== 1) {
            throw new \UnexpectedValueException('strict scalar UTF-8 without NUL required');
        }
        return $text;
    }

    /**
     * @brief Perform one finite operation and preserve its once-only owner close.
     * @param int $operation One=publish, two=subscribe, three=Trigger.
     * @return int Original primary error before independent cleanup status.
     * @details Only idle 11 permits another bounded subscription poll. A service
     * call is never replayed. Two publication samples are explicit inputs.
     */
    public static function run(int $operation): int
    {
        if ($operation < 1 || $operation > 3) {
            return 22;
        }
        [$owner, $primary] = Capability::open('sample');
        if ($primary !== 0) {
            return $primary;
        }
        $rpc = null;
        $required = null;
        $wire = '';
        $value = '';
        $response = false;
        $success = false;
        $cleanup = 0;
        try {
            if ($operation === 1) {
                $value = 'hello native ROS';
                $request = pack('V', strlen($value)) . $value;
                for ($sample = 0; $sample < 2; ++$sample) {
                    $rpc = $owner->invoke('topic_publish', $request)[0];
                    $primary = $rpc;
                    if ($primary !== 0) {
                        break;
                    }
                    usleep($sample === 0 ? 1000000 : 200000);
                }
            } elseif ($operation === 2) {
                $primary = $owner->invoke('topic_subscribe')[0];
                if ($primary === 0) {
                    for ($attempt = 0; $attempt < 250; ++$attempt) {
                        [$rpc, $wire, $required] = $owner->invoke('event_poll', '', 256);
                        $primary = $rpc;
                        if ($primary !== 11 || $attempt === 249) {
                            break;
                        }
                        usleep(20000);
                    }
                }
            } else {
                [$rpc, $wire, $required] = $owner->invoke('service_call', '', 256);
                $primary = $rpc;
            }
            if ($primary === 0 && $operation !== 1) {
                if ($operation === 2) {
                    $value = self::text($wire, 0, 252);
                } else {
                    if ($wire === '' || ord($wire[0]) > 1) {
                        throw new \UnexpectedValueException('canonical original Bool required');
                    }
                    $success = ord($wire[0]) === 1;
                    $value = self::text($wire, 1, 251);
                }
                $response = true;
                if ($operation === 3 && !$success) {
                    $primary = 5;
                }
            }
        } catch (\UnexpectedValueException $invalid) {
            $primary = 22;
        } finally {
            $cleanup = $owner->close();
        }
        $result = ['primary' => $primary, 'rpc_status' => $rpc,
            'required_bits' => $required === null ? null : bin2hex($required->bytes),
            'cleanup' => $cleanup, 'cleanup_present' => true,
            'response_present' => $response, 'success' => $success,
            'wire' => bin2hex($wire), 'text' => $value];
        echo json_encode($result, JSON_UNESCAPED_UNICODE | JSON_THROW_ON_ERROR), "\n";
        return $primary !== 0 ? $primary : $cleanup;
    }
}
