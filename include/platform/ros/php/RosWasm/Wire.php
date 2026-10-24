<?php
declare(strict_types=1);
namespace Uwvm\RosWasm;
// @brief Word is a bundled namespace module initialized by the genuine guest VM.

/**
 * @file Wire.php
 * @brief Encode/decode complete bounded canonical ROS values with PHP8.1+.
 * @details Local synchronous codecs with exact LE words on PHP32/PHP64. They
 * open no resource, invoke no native ROS/FFI/socket API and grant no authority.
 * Supply trusted generated schemas and already loaded generated classes; this
 * class is not an untrusted-schema/autoloader sandbox. Callers own returned
 * values and must avoid mutation during conversion. No finalizer or callback
 * is installed. Actual PCRE/core functions and native IEEE float packing are
 * required. Runtime presence alone does not qualify a PHP Wasm ROS bridge.
 * @see Word
 */
final class Wire
{
    private const SPECS = [
        'bool' => ['C', 1],
        'uint8' => ['C', 1],
        'int8' => ['c', 1],
        'uint16' => ['v', 2],
        'int16' => ['v', 2],
        'int32' => ['V', 4],
        'uint32' => [null, 4],
        'uint64' => [null, 8],
        'int64' => [null, 8],
        'float32' => ['g', 4],
        'float64' => ['e', 8],
    ];
    /**
     * @brief Bind a trusted complete schema map to this local codec instance.
     * @details PHP retains the schema array by value/copy-on-write. Generated
     * class names, complete fields, exact byte bounds0..32768 and supported
     * semantics must already be admitted by records.py. Construction does not
     * validate an arbitrary external IR or create a native registry/grant.
     * @param array $schemas [in] Symbol-keyed trusted generated descriptors,
     * with the exact already loaded PHP class and every native field in order.
     * @throws \LogicException PHP PCRE or array_is_list (PHP8.1+) is missing.
     * @see Wire::encode()
     */
    public function __construct(private readonly array $schemas)
    {
        if (!function_exists('preg_match') || !function_exists('array_is_list'))
        {
            throw new \LogicException('actual PHP8.1+ core/PCRE functions required');
        }
    }
    /**
     * @brief Require one local domain predicate before conversion continues.
     * @param bool $ok Exact validation result.
     * @param string $message Diagnostic preserved on failure.
     * @throws \InvalidArgumentException The predicate is false.
     */
    private static function need(bool $ok, string $message): void
    {
        if (!$ok)
        {
            throw new \InvalidArgumentException($message);
        }
    }
    /**
     * @brief Append owned bytes only when the complete output bound permits them.
     * @param string $wire Exclusive mutable output accumulator.
     * @param string $bytes Complete immutable bytes to append.
     * @param int $maximum Inclusive finite whole-record bound.
     */
    private static function append(string &$wire, string $bytes, int $maximum): void
    {
        self::need(strlen($bytes) <= $maximum - strlen($wire), 'canonical output byte bound');
        $wire .= $bytes;
    }
    /**
     * @brief Copy one checked slice and advance the exclusive local cursor.
     * @param string $wire Complete unchanged borrowed canonical input.
     * @param int $position Exclusive zero-based input cursor.
     * @param int $size Exact nonnegative byte count.
     * @return string Fresh exact input slice.
     */
    private static function take(string $wire, int &$position, int $size): string
    {
        self::need($size >= 0 && $size <= strlen($wire) - $position, 'truncated canonical input');
        $bytes = substr($wire, $position, $size);
        $position += $size;
        return $bytes;
    }
    /**
     * @brief Read an exact u32 count with schema and remaining-input bounds.
     * @param string $wire Complete unchanged borrowed canonical input.
     * @param int $position Exclusive advancing input cursor.
     * @param int $maximum Inclusive admitted count.
     * @param int $minimum Minimum bytes for each element; zero disables division.
     * @return int Exact count representable within the admitted PHP bound.
     */
    private static function count(string $wire, int &$position, int $maximum, int $minimum): int
    {
        $word = Word::fromBytes(self::take($wire, $position, 4), 4, false);
        $count = $word->small($maximum);
        self::need(
            $minimum === 0 || $count <= intdiv(strlen($wire) - $position, $minimum),
            'sequence count/remaining extent',
        );
        return $count;
    }
    /**
     * @brief Validate exact raw bytes or strict UTF-8 text without NUL.
     * @param mixed $value Borrowed original field value.
     * @param int $maximum Inclusive byte bound.
     * @param bool $raw Preserve every byte when true.
     * @return string Complete unchanged admitted string.
     */
    private static function text(mixed $value, int $maximum, bool $raw): string
    {
        self::need(is_string($value) && strlen($value) <= $maximum, 'bounded complete String required');
        self::need(
            $raw || (!str_contains($value, "\0") && preg_match('//u', $value) === 1),
            'strict UTF-8 without NUL required',
        );
        return $value;
    }
    /**
     * @brief Check an exact PHP integer without narrowing from floating point.
     * @param mixed $value Borrowed original scalar.
     * @param int $low Inclusive admitted lower bound.
     * @param int $high Inclusive admitted upper bound.
     * @return int Original exact integer.
     */
    private static function integer(mixed $value, int $low, int $high): int
    {
        self::need(is_int($value) && $value >= $low && $value <= $high, 'exact PHP integer width required');
        return $value;
    }
    /**
     * @brief Enforce full normalized-time and JointState record invariants.
     * @param array $schema Trusted complete original descriptor.
     * @param object $value Complete unchanged original record.
     */
    private static function semantics(array $schema, object $value): void
    {
        $rule = $schema['semantics'];
        if ($rule === 'normalized-time' || $rule === 'normalized-duration')
        {
            $name = $schema['ros_version'] === 2 ? 'nanosec' : 'nsec';
            $part = $value->{$name};
            if ($part instanceof Word)
            {
                $part->small(999999999);
            }
            else
            {
                self::integer($part, 0, 999999999);
            }
        }
        elseif ($rule === 'joint-state-optional-equal-length-arrays')
        {
            $count = 0;
            foreach (['name', 'position', 'velocity', 'effort'] as $name)
            {
                $length = count($value->{$name});
                if ($length !== 0)
                {
                    self::need($count === 0 || $count === $length, 'nonempty JointState arrays must match');
                    $count = $length;
                }
            }
        }
        else
        {
            self::need($rule === '', 'new complete semantics require implementation');
        }
    }
    /**
     * @brief Validate and append one complete original scalar or nested record.
     * @param string $wire Exclusive local output accumulator.
     * @param array $field Complete trusted original field descriptor.
     * @param mixed $value Borrowed field value.
     * @param int $maximum Inclusive whole-record byte bound.
     */
    private function writeOne(string &$wire, array $field, mixed $value, int $maximum): void
    {
        $type = $field['type'];
        if ($type === 'string')
        {
            $bytes = self::text($value, $field['string_bound'], $field['raw']);
            self::append($wire, pack('V', strlen($bytes)), $maximum);
            self::append($wire, $bytes, $maximum);
        }
        elseif ($type === 'bool')
        {
            self::need(is_bool($value), 'exact Bool required');
            self::append($wire, chr($value ? 1 : 0), $maximum);
        }
        elseif ($type === 'uint32' || $type === 'uint64' || $type === 'int64')
        {
            self::need(
                $value instanceof Word &&
                    $value->width === self::SPECS[$type][1] &&
                    $value->signed === ($type === 'int64'),
                'exact typed integer word required',
            );
            self::append($wire, $value->bytes, $maximum);
        }
        elseif ($type === 'float32' || $type === 'float64')
        {
            self::need((is_float($value) || is_int($value)) && is_finite((float) $value), 'finite scalar required');
            $format = self::SPECS[$type][0];
            $bytes = pack($format, (float) $value);
            self::need(is_finite(unpack($format, $bytes)[1]), 'finite target-width scalar required');
            self::append($wire, $bytes, $maximum);
        }
        elseif (isset(self::SPECS[$type]))
        {
            [$low, $high] = match ($type)
            {
                'uint8' => [0, 255],
                'int8' => [-128, 127],
                'uint16' => [0, 65535],
                'int16' => [-32768, 32767],
                'int32' => [-2147483647 - 1, 2147483647],
                default => throw new \LogicException('unimplemented integer width'),
            };
            self::integer($value, $low, $high);
            self::append($wire, pack(self::SPECS[$type][0], $value), $maximum);
        }
        else
        {
            self::append($wire, $this->encode($type, $value), $maximum);
        }
    }
    /**
     * @brief Encode one complete generated value into bounded canonical LE bytes.
     * @details Requires the exact generated class and every public native field
     * in its generated order. Recursively checks fixed/sequence shapes, scalar
     * widths, exact Word widths/signedness, UTF-8/NUL/raw-string domains, finite
     * floats/float32 overflow, complete extents and record semantic rules.
     * No field projection, resource effect, retry or input mutation is performed.
     * @param string $symbol [in] Exact key of a trusted generated record class.
     * @param object $value [in] Complete value borrowed for this synchronous call.
     * @return string New immutable binary encoding within the class byte bounds.
     * @throws \InvalidArgumentException Unknown record, wrong class/order,
     * malformed/extra/missing fields or invalid complete canonical domains.
     * @throws \OutOfRangeException A typed word exceeds a semantic/count bound.
     * @see Wire::decode()
     */
    public function encode(string $symbol, object $value): string
    {
        $schema = $this->schemas[$symbol] ?? throw new \InvalidArgumentException('unknown complete record');
        self::need(get_class($value) === $schema['class'], 'exact complete generated class required');
        $fields = $schema['fields'];
        self::need(
            array_keys(get_object_vars($value)) === array_column($fields, 'name'),
            'every native field in exact order required',
        );
        $wire = '';
        foreach ($fields as $field)
        {
            $part = $value->{$field['name']};
            if ($field['array'] !== '')
            {
                self::need(
                    is_array($part) &&
                        array_is_list($part) &&
                        ($field['array'] === 'array'
                            ? count($part) === $field['count']
                            : count($part) <= $field['count']),
                    'complete fixed/sequence shape required',
                );
                if ($field['array'] === 'sequence')
                {
                    self::append($wire, pack('V', count($part)), $schema['maximum']);
                }
                foreach ($part as $item)
                {
                    $this->writeOne($wire, $field, $item, $schema['maximum']);
                }
            }
            else
            {
                $this->writeOne($wire, $field, $part, $schema['maximum']);
            }
        }
        self::semantics($schema, $value);
        self::need(strlen($wire) >= $schema['minimum'], 'complete minimum extent');
        return $wire;
    }
    /**
     * @brief Read one whole original scalar or nested value with exact domains.
     * @param string $wire Complete unchanged canonical input.
     * @param int $position Exclusive advancing input cursor.
     * @param array $field Trusted complete original field descriptor.
     * @return mixed Fresh complete field value with full integer words.
     */
    private function readOne(string $wire, int &$position, array $field): mixed
    {
        $type = $field['type'];
        if ($type === 'string')
        {
            $size = self::count($wire, $position, $field['string_bound'], 1);
            return self::text(self::take($wire, $position, $size), $field['string_bound'], $field['raw']);
        }
        if ($type === 'uint32' || $type === 'uint64' || $type === 'int64')
        {
            return Word::fromBytes(
                self::take($wire, $position, self::SPECS[$type][1]),
                self::SPECS[$type][1],
                $type === 'int64',
            );
        }
        if (isset(self::SPECS[$type]))
        {
            $bytes = self::take($wire, $position, self::SPECS[$type][1]);
            if ($type === 'int32')
            {
                // Accumulate signed high byte first so PHP32 never overflows.
                $value = ord($bytes[3]);
                if ($value >= 128)
                {
                    $value -= 256;
                }
                for ($i = 2; $i >= 0; --$i)
                {
                    $value = $value * 256 + ord($bytes[$i]);
                }
                return $value;
            }
            $value = unpack(self::SPECS[$type][0], $bytes)[1];
            if ($type === 'bool')
            {
                self::need($value <= 1, 'canonical Bool0/1 required');
                return $value === 1;
            }
            if ($type === 'int16' && $value >= 32768)
            {
                $value -= 65536;
            }
            if ($type === 'float32' || $type === 'float64')
            {
                self::need(is_finite($value), 'nonfinite canonical scalar');
            }
            return $value;
        }
        return $this->read($type, $wire, $position);
    }
    /**
     * @brief Decode every field of one nested complete original record.
     * @param string $symbol Exact trusted generated record symbol.
     * @param string $wire Complete unchanged canonical input.
     * @param int $position Exclusive advancing input cursor.
     * @return object Fresh complete record after extent and semantic checks.
     */
    private function read(string $symbol, string $wire, int &$position): object
    {
        $schema = $this->schemas[$symbol] ?? throw new \InvalidArgumentException('unknown nested record');
        $class = $schema['class'];
        $value = new $class();
        $start = $position;
        foreach ($schema['fields'] as $field)
        {
            if ($field['array'] !== '')
            {
                $count =
                    $field['array'] === 'array'
                        ? $field['count']
                        : self::count($wire, $position, $field['count'], $field['element_minimum']);
                $part = [];
                for ($i = 0; $i < $count; ++$i)
                {
                    $part[] = $this->readOne($wire, $position, $field);
                }
            }
            else
            {
                $part = $this->readOne($wire, $position, $field);
            }
            $value->{$field['name']} = $part;
        }
        self::need(
            $position - $start >= $schema['minimum'] && $position - $start <= $schema['maximum'],
            'nested complete extent',
        );
        self::semantics($schema, $value);
        return $value;
    }
    /**
     * @brief Decode exactly one complete bounded canonical record.
     * @details Requires the exact inclusive complete extent; recursively rejects
     * truncated/trailing bytes, noncanonical booleans, malformed UTF-8/NUL,
     * nonfinite floats and invalid counts or record semantics. Builds fresh
     * complete nested objects/arrays; returned strings/Word objects have value
     * semantics. Performs no ROS/I/O/permission change or asynchronous work.
     * @param string $symbol [in] Exact trusted record symbol; generated class
     * must already be loaded, without relying on ambient autoload behavior.
     * @param string $bytes [in] Immutable canonical LE bytes, min..max inclusive.
     * @return object Caller-owned complete generated value; no explicit cleanup.
     * @throws \InvalidArgumentException Unknown record or malformed complete wire.
     * @throws \OutOfRangeException A wire count/word exceeds the admitted bound.
     * @see Wire::encode()
     */
    public function decode(string $symbol, string $bytes): object
    {
        $schema = $this->schemas[$symbol] ?? throw new \InvalidArgumentException('unknown complete record');
        self::need(
            strlen($bytes) >= $schema['minimum'] && strlen($bytes) <= $schema['maximum'],
            'complete bounded wire required',
        );
        $position = 0;
        $value = $this->read($symbol, $bytes, $position);
        self::need($position === strlen($bytes), 'trailing canonical bytes');
        return $value;
    }
}
