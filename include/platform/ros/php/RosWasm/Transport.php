<?php
declare(strict_types=1);
namespace Uwvm\RosWasm;

/**
 * @file Transport.php
 * @brief Own full-width instance-local capabilities in genuine PHP.
 * @details No operation is replayed and no finalizer hides a cleanup attempt.
 */
final class Capability
{
    /**
     * @brief Retain one successful exact eight-byte owner until retirement.
     */
    private function __construct(private ?Word $owner)
    {
    }

    /**
     * @brief Open one validated alias using the original raw import family.
     * @param string $alias Nonempty strict UTF-8 without NUL, at most 255 bytes.
     * @return array Owner-or-null and original acquisition errno.
     */
    public static function open(string $alias): array
    {
        if ($alias === '' || strlen($alias) > 255 || str_contains($alias, "\0") || preg_match('//u', $alias) !== 1)
        {
            return [null, 22];
        }
        $zero = str_repeat("\0", 8);
        $version = \Uwvm\Native\invoke('abi_version', $zero, '', 0);
        if ($version[0] !== 0 || $version[3] !== "\1" . str_repeat("\0", 7))
        {
            return [null, $version[0] ?: 38];
        }
        $frame = \Uwvm\Native\invoke('capability_open', $zero, $alias, 0);
        if ($frame[0] !== 0)
        {
            return [null, $frame[0]];
        }
        if (!is_string($frame[3]) || strlen($frame[3]) !== 8 || $frame[3] === $zero)
        {
            throw new \UnexpectedValueException('successful raw acquisition omitted its owner');
        }
        return [new self(Word::fromBytes($frame[3], 8, false)), 0];
    }

    /**
     * @brief Issue exactly one original raw operation while this owner is live.
     * @param string $operation Original raw import name.
     * @param string $request Whole bytes.
     * @param int $capacity Finite original response bound.
     * @return array Original errno, owned bytes, required Word-or-null and value Word-or-null.
     */
    public function invoke(string $operation, string $request = '', int $capacity = 0): array
    {
        if ($this->owner === null)
        {
            return [9, '', null, null];
        }
        $frame = \Uwvm\Native\invoke($operation, $this->owner->bytes, $request, $capacity);
        if ($frame[2] !== null)
        {
            $frame[2] = Word::fromBytes($frame[2], 8, false);
        }
        if ($frame[3] !== null)
        {
            $frame[3] = Word::fromBytes($frame[3], 8, false);
        }
        return $frame;
    }

    /**
     * @brief Retire the owner before one explicit cleanup attempt.
     * @return int Original cleanup errno, or 9 when already retired.
     */
    public function close(): int
    {
        if ($this->owner === null)
        {
            return 9;
        }
        $handle = $this->owner;
        $this->owner = null;
        return \Uwvm\Native\invoke('capability_close', $handle->bytes, '', 0)[0];
    }
}
