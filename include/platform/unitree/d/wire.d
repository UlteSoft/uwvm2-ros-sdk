/**
 * @file wire.d
 * @brief Pure finite owned canonical records for genuine betterC D bindings.
 * @details Compile-time tuple traversal visits every declared native field.
 * Concrete text/sequence types retain their own finite backing arrays. This
 * module allocates nothing, imports no ROS function and obtains no authority.
 */
module unitree.d.wire;

/// @brief Own finite text storage without any borrowed pointer.
/// @param capacity Inclusive original schema byte bound.
/// @param raw True only for the catalogued raw-byte string domain.
struct Text(uint capacity, bool raw = false)
{
    /// @brief Select canonical string handling during tuple traversal.
    enum wireText = true;
    /// @brief Preserve the selected string domain without text coercion.
    enum wireRaw = raw;
    /// @brief Own all possible active bytes; unused suffixes have no wire bytes.
    ubyte[capacity] data;
    /// @brief Active byte extent, checked against the concrete capacity.
    uint size;

}

/// @brief Own a finite counted sequence without a D runtime allocation.
/// @param Element Complete original native-language element type.
/// @param capacity Inclusive original schema element bound.
struct Sequence(Element, uint capacity)

{
    /// @brief Select counted sequence handling during tuple traversal.
    enum wireSequence = true;
    /// @brief Own every possible active element independently of input bytes.
    Element[capacity] items;
    /// @brief Active element count, checked against the concrete capacity.
    uint size;

}

/// @brief Validate canonical Unicode scalar UTF-8 without NUL.
/// @param bytes Immutable bytes, borrowed until the pure check returns.
/// @return True only for strict UTF-8 scalar sequences, including empty text.
bool utf8(const(ubyte)[] bytes) @nogc nothrow
{
    uint remaining;
    uint scalar;
    uint minimum;
    foreach (value; bytes)
    {
        if (!remaining)
        {
            if (!value)
                return false;
            if (value < 128)
                continue;
            if (value >= 194 && value <= 223)
            {
                remaining = 1;
                scalar = value & 31;
                minimum = 128;
            }
            else if (value >= 224 && value <= 239)
            {
                remaining = 2;
                scalar = value & 15;
                minimum = 2048;
            }
            else if (value >= 240 && value <= 244)
            {
                remaining = 3;
                scalar = value & 7;
                minimum = 65536;
            }
            else
                return false;
        }
        else
        {
            if ((value & 192) != 128)
                return false;
            scalar = (scalar << 6) | (value & 63);
            --remaining;
            if (!remaining && (scalar < minimum || scalar > 0x10ffff || (scalar >= 0xd800 && scalar <= 0xdfff)))
                return false;
        }
    }
    return remaining == 0;
}

/// @brief Borrow one exclusive bounded canonical span without owning resources.
/// @details A failing composite may consume a prefix. Only a complete successful
/// decoder publishes a usable record; no partial field becomes an observation.
struct Cursor
{
    /// @brief Borrowed storage, kept live and exclusive until traversal returns.
    ubyte[] bytes;
    /// @brief Initialized or consumed prefix extent.
    size_t at;
    /// @brief Original local canonical status; zero means no refusal yet.
    uint code;
    /// @brief True writes canonical bytes; false decodes into owned fields.
    bool writing;

    /// @brief Traverse one complete value recursively in native field order.
    /// @param value Exclusive complete value with finite container counts.
    /// @return Void; inspect code before reading any decoded value or prefix.
    void field(T)(ref T value) @nogc nothrow
    {
        if (code)
            return;
        static if (is(T == bool))
        {
            ubyte raw = value ? 1 : 0;
            field(raw);
            if (raw > 1)
                code = 22;
            value = raw != 0;
        }
        else static if (is(T == float) || is(T == double))
        {
            static if (T.sizeof == 4)
            {
                uint bits = *cast(uint*) & value;
                field(bits);
                value = *cast(float*) & bits;
                if ((bits & 0x7f800000U) == 0x7f800000U)
                    code = 22;
            }
            else
            {
                ulong bits = *cast(ulong*) & value;
                field(bits);
                value = *cast(double*) & bits;
                if ((bits & 0x7ff0000000000000UL) == 0x7ff0000000000000UL)
                    code = 22;
            }
        }
        else static if (is(T == byte) || is(T == ubyte) || is(T == short) || is(T == ushort) || is(T == int) ||
                        is(T == uint) || is(T == long) || is(T == ulong))
        {
            if (at > bytes.length || T.sizeof > bytes.length - at)
            {
                code = 22;
                return;
            }
            ulong bits = writing ? cast(ulong) value : 0;
            foreach (index; 0 ..T.sizeof)
            {
                if (writing)
                    bytes[at] = cast(ubyte)(bits >> (index * 8));
                else
                    bits |= cast(ulong) bytes[at] << (index * 8);
                ++at;
            }
            if (!writing)
                value = cast(T) bits;
        }
        else static if (is(T == Element[count], Element, size_t count))
        {
            foreach (ref element; value)
                field(element);
        }
        else static if (__traits(hasMember, T, "wireText"))
        {
            field(value.size);
            if (code || value.size > value.data.length || value.size > bytes.length - at)
            {
                code = 22;
                return;
            }
            auto input = writing ? value.data[0 ..value.size] : bytes[at..at + value.size];
            if (!T.wireRaw && !utf8(input))
            {
                code = 22;
                return;
            }
            if (writing)
                bytes[at..at + value.size] = input;
            else
                value.data[0 ..value.size] = input;
            at += value.size;
        }
        else static if (__traits(hasMember, T, "wireSequence"))
        {
            field(value.size);
            if (code || value.size > value.items.length)
            {
                code = 22;
                return;
            }
            foreach (ref element; value.items[0 ..value.size])
                field(element);
        }
        else static if (is(T == struct))
        {
            foreach (ref member; value.tupleof)
                field(member);
            static if (__traits(hasMember, T, "validate"))
            {
                if (!code)
                    code = value.validate();
            }
        }
        else static assert(false, "Canonical fields require finite complete values");
    }

}

/// @brief Encode every native field into caller-owned disjoint canonical bytes.
/// @param value Exclusive complete value; successful encoding preserves fields.
/// @param output Borrowed exclusive writable bytes.
/// @param written Complete initialized extent, valid only on success.
/// @return Zero on success or canonical error 22; ignore partial output on error.
uint encode(T)(ref T value, ubyte[] output, out size_t written) @nogc nothrow
{
    written = 0;
    Cursor cursor;
    cursor.bytes = output[0 ..(output.length < T.maximumWireBytes ? output.length : T.maximumWireBytes)];
    cursor.writing = true;
    cursor.field(value);
    if (cursor.code)
        return cursor.code;
    written = cursor.at;
    return 0;
}

/// @brief Decode all fields before publishing an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes return.
/// @param value Whole independently owned output, usable only on success.
/// @return Zero or canonical error 22, including truncation and trailing bytes.
uint decode(T)(const(ubyte)[] bytes, out T value) @nogc nothrow
{
    value = T.init;
    if (bytes.length < T.minimumWireBytes || bytes.length > T.maximumWireBytes)
        return 22;
    ubyte[T.maximumWireBytes] storage;
    storage[0 ..bytes.length] = bytes;
    Cursor cursor;
    cursor.bytes = storage[0 ..bytes.length];
    T candidate;
    cursor.field(candidate);
    if (cursor.code)
        return cursor.code;
    if (cursor.at != bytes.length)
        return 22;
    value = candidate;
    return 0;
}
