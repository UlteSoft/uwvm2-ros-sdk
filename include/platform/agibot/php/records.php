<?php
// SPDX-License-Identifier: Apache-2.0

/** Transactional local decoding failure; no partial original value escapes. */
class AgibotDecodeError extends Exception
{
    /** @var int Exact local errno: 22 malformed data or 90 explicit guest bound. */
    public $errorCode;

    /** @param int $code Local errno. @param string $message Diagnostic context. */
    public function __construct($code, $message)
    {
        parent::__construct($message);
        $this->errorCode = $code;
    }
}

/**
 * Own the cursor of one finite canonical record inside the PH7 Wasm VM.
 * @details A mutable object gives recursive calls one explicit cursor. The
 * pinned VM does not implement closure capture by reference; the SDK requires
 * no such extension. Instances are synchronous and never shared across calls.
 */
class AgibotRecordReader
{
    private $data;
    private $offset;
    private $schema;

    /** @param string $data Borrowed immutable bytes retained for this decode. */
    public function __construct($data)
    {
        $this->data = $data;
        $this->offset = 0;
        $this->schema = agibot_schema();
    }

    /** @param int $size Required byte count. @return string Owned wire slice.
     * @throws AgibotDecodeError A truncated or negative extent.
     */
    private function take($size)
    {
        if($size < 0 || $size > strlen($this->data) - $this->offset)
        {
            throw new AgibotDecodeError(22, 'Truncated canonical record');
        }
        $start = $this->offset;
        $this->offset += $size;
        return $size == 0 ? '' : substr($this->data, $start, $size);
    }

    /** @return int Exact unsigned 32-bit canonical count in a PH7 int64. */
    private function count()
    {
        $value = uwvm_ros_scalar('uint32', $this->take(4));
        if($value === null) { throw new AgibotDecodeError(22, 'Invalid canonical count'); }
        return $value;
    }

    /** @param string $kind Original primitive or record identity.
     * @param int $bound Explicit guest string capacity, or zero for scalars.
     * @return mixed Owned original scalar or complete nested record.
     * @throws AgibotDecodeError Invalid UTF-8, bounds, boolean or IEEE value.
     */
    private function scalar($kind, $bound)
    {
        if($kind == 'string')
        {
            $size = $this->count();
            if($size > $bound) { throw new AgibotDecodeError(90, 'String exceeds guest bound'); }
            $text = $this->take($size);
            if(!uwvm_ros_utf8($text)) { throw new AgibotDecodeError(22, 'Invalid canonical UTF-8'); }
            return $text;
        }
        $sizes = array('bool' => 1, 'byte' => 1, 'char' => 1, 'int8' => 1, 'uint8' => 1,
            'int16' => 2, 'uint16' => 2, 'int32' => 4, 'uint32' => 4,
            'int64' => 8, 'uint64' => 8, 'float32' => 4, 'float64' => 8);
        if(!array_key_exists($kind, $sizes)) { return $this->record($kind); }
        $wireKind = $kind == 'bool' || $kind == 'byte' || $kind == 'char' ? 'uint8' : $kind;
        $value = uwvm_ros_scalar($wireKind, $this->take($sizes[$kind]));
        if($value === null) { throw new AgibotDecodeError(22, 'Invalid canonical scalar'); }
        if($kind == 'bool')
        {
            if($value > 1) { throw new AgibotDecodeError(22, 'Noncanonical boolean'); }
            return $value == 1;
        }
        return $value;
    }

    /** @param string $kind Complete original schema identity.
     * @return array Owned full record including empty original arrays.
     */
    private function record($kind)
    {
        if(!array_key_exists($kind, $this->schema)) { throw new AgibotDecodeError(22, 'Unknown original record'); }
        $value = array();
        foreach($this->schema[$kind]['fields'] as $field)
        {
            $bound = array_key_exists('string', $field) ? $field['string'] : 0;
            if(array_key_exists('array', $field) || array_key_exists('sequence', $field))
            {
                $count = array_key_exists('array', $field) ? $field['array'] : $this->count();
                if(array_key_exists('sequence', $field) && $count > $field['sequence'])
                {
                    throw new AgibotDecodeError(90, 'Sequence exceeds guest bound');
                }
                $items = array();
                for($index = 0; $index < $count; ++$index) { $items[] = $this->scalar($field['type'], $bound); }
                $value[$field['name']] = $items;
            }
            else { $value[$field['name']] = $this->scalar($field['type'], $bound); }
        }
        return $value;
    }

    /** @param string $typename Exact complete original record identity.
     * @return array Fully decoded, owned value.
     * @throws AgibotDecodeError Unknown type or trailing bytes.
     */
    public function decode($typename)
    {
        $value = $this->record($typename);
        if($this->offset != strlen($this->data)) { throw new AgibotDecodeError(22, 'Trailing canonical bytes'); }
        return $value;
    }
}

/**
 * Decode every original field of a complete bounded AimDK record inside Wasm.
 * @param string $typename Exact original fully qualified message/response name.
 * @param string $data Borrowed binary canonical bytes, at most 32768 bytes.
 * @return array Owned complete nested fields/lists. Signed int64 is a native
 * 64-bit PH7 integer; uint64 is exact decimal text. No rounding occurs.
 * @throws AgibotDecodeError Truncation, trailing data, bounds, invalid UTF-8,
 * noncanonical booleans or nonfinite IEEE values. This function performs no I/O.
 */
function agibot_decode($typename, $data)
{
    if(!is_string($data) || strlen($data) > 32768)
    {
        throw new AgibotDecodeError(22, 'Invalid canonical record');
    }
    $reader = new AgibotRecordReader($data);
    return $reader->decode($typename);
}

/** @param string $text Validated scalar UTF-8. @return string Exact JSON-escaped text. */
function agibot_quote($text)
{
    $result = '"';
    $hex = '0123456789abcdef';
    for($index = 0; $index < strlen($text); ++$index)
    {
        $byte = ord(substr($text, $index, 1)) & 255;
        if($byte < 32 || $byte == 34 || $byte == 92)
        {
            $result .= '\\u00' . $hex[$byte >> 4] . $hex[$byte & 15];
        }
        else { $result .= substr($text, $index, 1); }
    }
    return $result . '"';
}

/** Render complete original records without reference-capturing closures. */
class AgibotRecordWriter
{
    private $schema;

    /** @details Own one finite schema table; no ROS handles or global cursor. */
    public function __construct() { $this->schema = agibot_schema(); }

    /** @param string $kind Original scalar or record kind.
     * @param mixed $item Unmodified, successfully decoded scalar or record.
     * @return string Exact JSON representation, including signed zero.
     */
    private function scalar($kind, $item)
    {
        if($kind == 'string' || $kind == 'uint64') { return agibot_quote($item); }
        if($kind == 'int64') { return agibot_quote(uwvm_ros_int64_text($item)); }
        if($kind == 'bool') { return $item ? 'true' : 'false'; }
        if($kind == 'float32' || $kind == 'float64') { return uwvm_ros_float_text($item); }
        if($kind == 'byte' || $kind == 'char' || substr($kind, 0, 3) == 'int' || substr($kind, 0, 4) == 'uint')
        {
            return uwvm_ros_int64_text($item);
        }
        return $this->record($kind, $item);
    }

    /** @param string $kind Matching original decoded type.
     * @param array $object Complete, unmodified decoded value.
     * @return string Full JSON; every int64/uint64 is an exact decimal string.
     */
    public function record($kind, $object)
    {
        $fields = array();
        foreach($this->schema[$kind]['fields'] as $field)
        {
            $item = $object[$field['name']];
            if(array_key_exists('array', $field) || array_key_exists('sequence', $field))
            {
                $elements = array();
                foreach($item as $entry) { $elements[] = $this->scalar($field['type'], $entry); }
                $encoded = '[' . implode(',', $elements) . ']';
            }
            else { $encoded = $this->scalar($field['type'], $item); }
            $fields[] = agibot_quote($field['name']) . ':' . $encoded;
        }
        return '{' . implode(',', $fields) . '}';
    }
}

/**
 * Render a complete original record with explicit array/object shapes.
 * @param string $typename Matching original decoded type.
 * @param array $value Complete, unmodified successfully decoded record.
 * @return string Full JSON with exact int64/uint64 decimal strings and IEEE
 * values using seventeen significant digits, including the sign of zero.
 */
function agibot_json($typename, $value)
{
    $writer = new AgibotRecordWriter();
    return $writer->record($typename, $value);
}
