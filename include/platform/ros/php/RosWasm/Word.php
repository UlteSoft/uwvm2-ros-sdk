<?php
declare(strict_types=1);
namespace Uwvm\RosWasm;

/**
 * @file Word.php
 * @brief Preserve exact uint32/int64/uint64 values on PHP32 and PHP64.
 * @details Immutable typed little-endian bytes; a whole64-bit value never passes
 * through a PHP integer, double or native pointer. Factories validate exact
 * width/range and allocate a caller-owned value. All methods run synchronously
 * without I/O, ROS resources, permission changes, callbacks or cleanup duties.
 * Requires PHP8.1+ for readonly promoted properties; decimal parsing also needs
 * the actual PCRE extension. Caller code should use strict_types=1.
 * @see Word::fromDecimal()
 */
final class Word
{
    /**
     * @brief Retain an already validated immutable exact-width word.
     * @param string $bytes Complete little-endian word bytes.
     * @param int $width Validated extent of four or eight bytes.
     * @param bool $signed Select two's-complement signed interpretation.
     */
    private function __construct(
        /**
         * @brief Exact binary value in little-endian byte order.
         * @details Immutable PHP string of exactly width bytes; may contain NUL.
         * It is a value, not a native pointer or transferable authority.
         * @see Word::fromBytes()
         */
        public readonly string $bytes,
        /**
         * @brief Store the word's byte width: exactly4 or8.
         * @details Read-only validated extent; multiply by8 for the bit width.
         * The width does not depend on the host's PHP_INT_SIZE.
         * @see Word::fromBytes()
         */
        public readonly int $width,
        /**
         * @brief Select unsigned or two's-complement signed interpretation.
         * @details false means unsigned; true means signed. Interpretation does
         * not alter bytes and is preserved for the lifetime of this value.
         * @see Word::decimal()
         */
        public readonly bool $signed,
    )
    {
    }

    /**
     * @brief Construct a typed word from exactly4 or8 little-endian bytes.
     * @details Every bit pattern is admitted for the selected signedness. The
     * returned immutable value has PHP value semantics; no external storage is
     * borrowed. Performs no numeric conversion, I/O, resource grant or callback.
     * @param string $bytes [in] Exact immutable binary bytes, including NUL.
     * @param int $width [in] Byte width, exactly4 or8.
     * @param bool $signed [in] true for two's-complement signed interpretation.
     * @return self Caller-owned immutable word; no explicit retirement needed.
     * @throws \InvalidArgumentException Unsupported width or mismatched extent.
     * @see Word::fromDecimal()
     */
    public static function fromBytes(string $bytes, int $width, bool $signed): self
    {
        if (($width !== 4 && $width !== 8) || strlen($bytes) !== $width)
        {
            throw new \InvalidArgumentException('exact four/eight-byte LE word required');
        }
        return new self($bytes, $width, $signed);
    }

    /**
     * @brief Compute two's-complement negation with bounded byte arithmetic.
     * @param string $bytes Validated little-endian four/eight-byte magnitude.
     * @return string Exact same-width negated bytes.
     */
    private static function negate(string $bytes): string
    {
        $result = '';
        $carry = 1;
        for ($i = 0; $i < strlen($bytes); ++$i)
        {
            $part = 255 - ord($bytes[$i]) + $carry;
            $result .= chr($part % 256);
            $carry = intdiv($part, 256);
        }
        return $result;
    }

    /**
     * @brief Parse a canonical decimal integer into an exact typed LE word.
     * @details Accepts0 or nonzero digits without leading zeros, optionally
     * prefixed by '-' for signed words. Refuses '+', whitespace, exponents,
     * unsigned negatives and negative zero. Uses bounded byte arithmetic on
     * PHP32/PHP64; no whole value passes through int/float. Synchronous local
     * conversion only, with no permission, I/O or retained mutable input.
     * @param string $text [in] Canonical ASCII decimal, at most21 bytes.
     * @param int $width [in] Exactly4 or8 bytes; range follows width*8 bits.
     * @param bool $signed [in] Signed range [-2^(bits-1),2^(bits-1)-1] when true;
     * unsigned range [0,2^bits-1] otherwise.
     * @return self New immutable word preserving every admitted bit.
     * @throws \LogicException Actual PCRE support is missing.
     * @throws \InvalidArgumentException Invalid width, spelling or signedness.
     * @throws \OutOfRangeException Value exceeds the selected integer range.
     * @see Word::decimal()
     */
    public static function fromDecimal(string $text, int $width, bool $signed): self
    {
        if (!function_exists('preg_match'))
        {
            throw new \LogicException('actual PHP PCRE support required');
        }
        if (
            ($width !== 4 && $width !== 8) ||
            strlen($text) > 21 ||
            preg_match('/^-?(?:0|[1-9][0-9]*)$/D', $text) !== 1
        )
        {
            throw new \InvalidArgumentException('canonical exact integer decimal required');
        }
        $negative = $text[0] === '-';
        if ($negative && (!$signed || $text === '-0'))
        {
            throw new \InvalidArgumentException('unsigned/negative-zero decimal refused');
        }
        if ($negative)
        {
            $text = substr($text, 1);
        }
        $bytes = array_fill(0, $width, 0);
        for ($digit = 0; $digit < strlen($text); ++$digit)
        {
            $carry = ord($text[$digit]) - 48;
            for ($i = 0; $i < $width; ++$i)
            {
                $part = $bytes[$i] * 10 + $carry; // <=2559, exact on PHP32
                $bytes[$i] = $part % 256;
                $carry = intdiv($part, 256);
            }
            if ($carry !== 0)
            {
                throw new \OutOfRangeException('word exceeds unsigned width');
            }
        }
        if ($signed && $bytes[$width - 1] >= 128)
        {
            $minimum = $negative && $bytes[$width - 1] === 128;
            for ($i = 0; $i < $width - 1; ++$i)
            {
                $minimum = $minimum && $bytes[$i] === 0;
            }
            if (!$minimum)
            {
                throw new \OutOfRangeException('word exceeds signed width');
            }
        }
        $raw = implode('', array_map('chr', $bytes));
        return new self($negative ? self::negate($raw) : $raw, $width, $signed);
    }

    /**
     * @brief Format this exact word as a canonical signed/unsigned decimal.
     * @details Uses bounded base256/base10 arithmetic, including INT64_MIN and
     * UINT64_MAX on PHP32. Emits0 without a sign, no leading zeros, and '-' only
     * for a negative signed value. Leaves this immutable word unchanged and
     * performs no I/O, authority change or asynchronous work.
     * @return string New caller-owned ASCII decimal value, at most20 characters.
     * Ordinary allocation/runtime failures propagate; valid words need no cleanup.
     * @see Word::fromDecimal()
     */
    public function decimal(): string
    {
        $negative = $this->signed && ord($this->bytes[$this->width - 1]) >= 128;
        $bytes = $negative ? self::negate($this->bytes) : $this->bytes;
        $digits = [0];
        for ($i = $this->width - 1; $i >= 0; --$i)
        {
            $carry = ord($bytes[$i]);
            for ($j = 0; $j < count($digits); ++$j)
            {
                $part = $digits[$j] * 256 + $carry; // <=2559
                $digits[$j] = $part % 10;
                $carry = intdiv($part, 10);
            }
            while ($carry > 0)
            {
                $digits[] = $carry % 10;
                $carry = intdiv($carry, 10);
            }
        }
        return ($negative ? '-' : '') . implode('', array_reverse($digits));
    }

    /**
     * @brief Convert an unsigned word only when it fits a supplied PHP int bound.
     * @details Checks each multiply/add before performing it, preserving PHP32
     * overflow safety. The bound is inclusive and no greater than PHP_INT_MAX.
     * Signed words are refused even when positive. Performs local synchronous
     * arithmetic without mutating the word, I/O or permission effects.
     * @param int $maximum [in] Inclusive permitted result, 0..PHP_INT_MAX.
     * @return int Exact nonnegative caller-owned scalar, at most maximum.
     * @throws \InvalidArgumentException Negative bound or signed word.
     * @throws \OutOfRangeException Unsigned value exceeds maximum.
     * @see Word::decimal()
     */
    public function small(int $maximum): int
    {
        if ($maximum < 0 || $this->signed)
        {
            throw new \InvalidArgumentException('nonnegative unsigned small bound required');
        }
        $number = 0;
        for ($i = $this->width - 1; $i >= 0; --$i)
        {
            $byte = ord($this->bytes[$i]);
            if ($byte > $maximum || $number > intdiv($maximum - $byte, 256))
            {
                throw new \OutOfRangeException('word exceeds small bound');
            }
            $number = $number * 256 + $byte;
        }
        return $number;
    }
}
