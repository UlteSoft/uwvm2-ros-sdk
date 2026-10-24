package uwvm.ros;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/**
 * @brief Encode and transactionally validate the SDK's canonical little-endian wire.
 * @details This format is the registered ROS gateway format, not DDS CDR.
 * Reader instances borrow immutable input bytes and own only their cursor.
 */
public final class Wire
{
    /** @brief Prevent creation of this collection of wire primitives. */
    private Wire()
    {
    }

    /**
     * @brief Decode one little-endian 32-bit word from validated storage.
     * @param bytes Borrowed array containing at least four bytes at offset.
     * @param offset First byte of the word.
     * @return Exact unsigned word bits in a signed Java int.
     * @details Invalid array extents raise the ordinary Java bounds exception.
     */
    public static int get32(byte[] bytes, int offset)
    {
        return (bytes[offset] & 255) | ((bytes[offset + 1] & 255) << 8) | ((bytes[offset + 2] & 255) << 16) | ((bytes[offset + 3] & 255) << 24);
    }

    /**
     * @brief Decode one complete 64-bit handle or length slot.
     * @param bytes Borrowed array containing at least eight bytes at offset.
     * @param offset First byte of the slot.
     * @return Exact bits; callers independently validate length domains.
     * @details This operation performs no host call and transfers no ownership.
     */
    public static long get64(byte[] bytes, int offset)
    {
        return (get32(bytes, offset) & 0xffffffffL) | ((long)get32(bytes, offset + 4) << 32);
    }

    /**
     * @brief Store one 32-bit word in caller-owned little-endian storage.
     * @param bytes Writable array containing four bytes at offset.
     * @param offset First destination byte.
     * @param value Exact bits to store.
     * @return No value; invalid extents raise a Java bounds exception.
     * @details No allocation, import, or resource ownership transfer occurs.
     */
    public static void put32(byte[] bytes, int offset, int value)
    {
        for(int index = 0; index < 4; index++)
        {
            bytes[offset + index] = (byte)(value >>> (8 * index));
        }
    }

    /**
     * @brief Store one 64-bit word in caller-owned little-endian storage.
     * @param bytes Writable array containing eight bytes at offset.
     * @param offset First destination byte.
     * @param value Exact bits to store.
     * @return No value; invalid extents raise a Java bounds exception.
     * @details No pointer, handle, or import is created.
     */
    public static void put64(byte[] bytes, int offset, long value)
    {
        put32(bytes, offset, (int)value);
        put32(bytes, offset + 4, (int)(value >>> 32));
    }

    /**
     * @brief Validate UTF-8 without accepting replacement characters for malformed bytes.
     * @param bytes Borrowed byte storage.
     * @param offset First encoded byte.
     * @param count Exact byte count within the array.
     * @return True for complete shortest-form Unicode scalar encodings.
     * @details Surrogates, truncated sequences, overlong encodings and values
     * above U+10FFFF fail before any string is committed.
     */
    public static boolean utf8(byte[] bytes, int offset, int count)
    {
        int end = offset + count;
        if(offset < 0 || count < 0 || end < offset || end > bytes.length)
        {
            return false;
        }
        while(offset < end)
        {
            int lead = bytes[offset++] & 255;
            if(lead < 128)
            {
                continue;
            }
            int continuation;
            int minimum;
            int code;
            if(lead >= 0xc2 && lead <= 0xdf)
            {
                continuation = 1;
                minimum = 0x80;
                code = lead & 31;
            }
            else if(lead >= 0xe0 && lead <= 0xef)
            {
                continuation = 2;
                minimum = 0x800;
                code = lead & 15;
            }
            else if(lead >= 0xf0 && lead <= 0xf4)
            {
                continuation = 3;
                minimum = 0x10000;
                code = lead & 7;
            }
            else
            {
                return false;
            }
            if(continuation > end - offset)
            {
                return false;
            }
            for(int index = 0; index < continuation; index++)
            {
                int next = bytes[offset++] & 255;
                if((next & 0xc0) != 0x80)
                {
                    return false;
                }
                code = (code << 6) | (next & 63);
            }
            if(code < minimum || code > 0x10ffff || (code >= 0xd800 && code <= 0xdfff))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * @brief Encode one bounded canonical string with a u32 byte-count prefix.
     * @param text Borrowed valid Unicode text.
     * @param maximum Maximum UTF-8 bytes admitted by the selected schema.
     * @return Newly owned complete canonical string bytes.
     * @details Null, empty, malformed Unicode, or oversized values raise
     * IllegalArgumentException before any ROS operation is entered.
     */
    public static byte[] string(String text, int maximum)
    {
        if(text == null || text.isEmpty())
        {
            throw new IllegalArgumentException("A nonempty string is required");
        }
        byte[] body = encodeText(text);
        if(body.length > maximum)
        {
            throw new IllegalArgumentException("String exceeds the registered bound");
        }
        byte[] result = new byte[body.length + 4];
        put32(result, 0, body.length);
        System.arraycopy(body, 0, result, 4, body.length);
        return result;
    }

    /**
     * @brief Encode a complete Unicode scalar string without replacement fallback.
     * @param text Borrowed nonnull text, which may be empty.
     * @return Newly owned strict UTF-8 bytes.
     * @details Unpaired surrogates raise IllegalArgumentException before encoding.
     */
    public static byte[] encodeText(String text)
    {
        if(text == null)
        {
            throw new IllegalArgumentException("Null canonical text");
        }
        for(int index = 0; index < text.length(); index++)
        {
            char item = text.charAt(index);
            if(Character.isHighSurrogate(item))
            {
                if(++index == text.length() || !Character.isLowSurrogate(text.charAt(index)))
                {
                    throw new IllegalArgumentException("Unpaired Unicode surrogate");
                }
            }
            else if(Character.isLowSurrogate(item))
            {
                throw new IllegalArgumentException("Unpaired Unicode surrogate");
            }
        }
        return text.getBytes(StandardCharsets.UTF_8);
    }

    /** @brief Own a bounded cursor while borrowing a complete immutable message. */
    public static final class Reader
    {
        private final byte[] bytes;
        private final int end;
        private int cursor;

        /**
         * @brief Start a transactional reader over exactly the returned payload.
         * @param bytes Borrowed immutable capacity buffer.
         * @param length Validated active payload length.
         * @details Invalid lengths fail immediately; storage remains caller-owned.
         */
        public Reader(byte[] bytes, int length)
        {
            if(length < 0 || length > bytes.length)
            {
                throw new IllegalArgumentException("Invalid canonical payload extent");
            }
            this.bytes = bytes;
            this.end = length;
        }

        /**
         * @brief Reserve a complete scalar or aggregate extent before reading.
         * @param size Exact nonnegative required byte count.
         * @return First byte offset of the admitted extent.
         * @details Truncation raises IllegalArgumentException without an overread.
         */
        private int take(int size)
        {
            if(size < 0 || size > end - cursor)
            {
                throw new IllegalArgumentException("Truncated canonical payload");
            }
            int offset = cursor;
            cursor += size;
            return offset;
        }

        /** @brief Read an unsigned byte. @return Value in 0..255; truncation throws. */
        public int u8()
        {
            return bytes[take(1)] & 255;
        }

        /** @brief Read a canonical boolean. @return Boolean; non-0/1 or truncation throws. */
        public boolean bool()
        {
            int value = u8();
            if(value > 1)
            {
                throw new IllegalArgumentException("Noncanonical boolean");
            }
            return value != 0;
        }

        /** @brief Read an unsigned 16-bit scalar. @return Value in 0..65535. */
        public int u16()
        {
            int offset = take(2);
            return (bytes[offset] & 255) | ((bytes[offset + 1] & 255) << 8);
        }

        /** @brief Read one 32-bit scalar. @return Exact bits; truncation throws. */
        public int i32()
        {
            return get32(bytes, take(4));
        }

        /** @brief Read a signed byte. @return Exact signed bits; truncation throws. */
        public byte i8()
        {
            return (byte)u8();
        }

        /** @brief Read a signed 16-bit scalar. @return Exact signed bits; truncation throws. */
        public short i16()
        {
            return (short)u16();
        }

        /** @brief Read an unsigned 32-bit scalar. @return Value in 0..4294967295. */
        public long u32()
        {
            return i32() & 0xffffffffL;
        }

        /** @brief Read a full 64-bit scalar. @return Exact bits, including unsigned bit 63. */
        public long i64()
        {
            return get64(bytes, take(8));
        }

        /** @brief Read IEEE binary32 bits. @return Exact float; field policy is checked by its codec. */
        public float f32()
        {
            return Float.intBitsToFloat(i32());
        }

        /** @brief Read IEEE binary64 bits. @return Exact double; field policy is checked by its codec. */
        public double f64()
        {
            return Double.longBitsToDouble(i64());
        }

        /** @brief Observe the active cursor. @return Byte offset, with no ownership transfer. */
        public int position()
        {
            return cursor;
        }

        /**
         * @brief Copy one bounded canonical raw-byte string without UTF-8 interpretation.
         * @param maximum Exact independently registered byte bound.
         * @return Newly owned byte string; invalid count or truncation throws.
         */
        public byte[] raw(int maximum)
        {
            int length = count(maximum);
            int start = take(length);
            return Arrays.copyOfRange(bytes, start, start + length);
        }

        /**
         * @brief Read one bounded count and reject unsigned overflow.
         * @param maximum Exact admitted schema bound.
         * @return Count in 0..maximum; invalid values raise IllegalArgumentException.
         * @details The caller owns any subsequent aggregate allocation.
         */
        public int count(int maximum)
        {
            int value = i32();
            if(value < 0 || value > maximum)
            {
                throw new IllegalArgumentException("Canonical count exceeds schema bound");
            }
            return value;
        }

        /**
         * @brief Read one complete bounded string with strict UTF-8 validation.
         * @param maximum Exact registered UTF-8 byte bound.
         * @return Newly owned decoded text; malformed input raises IllegalArgumentException.
         * @details Empty strings are permitted in responses; no NUL terminator is consumed.
         */
        public String string(int maximum)
        {
            int count = count(maximum);
            int offset = take(count);
            if(!utf8(bytes, offset, count))
            {
                throw new IllegalArgumentException("Malformed UTF-8 in canonical payload");
            }
            return new String(bytes, offset, count, StandardCharsets.UTF_8);
        }

        /**
         * @brief Require complete consumption before committing a typed response.
         * @return No value; trailing bytes raise IllegalArgumentException.
         * @details This check performs no import and does not release input storage.
         */
        public void finish()
        {
            if(cursor != end)
            {
                throw new IllegalArgumentException("Trailing canonical payload bytes");
            }
        }
    }

    /**
     * @brief Own a finite canonical output buffer while writing complete records.
     * @details All writes reject overflow before touching an invalid extent.
     * finish returns a newly owned active prefix; unused capacity is never sent.
     */
    public static final class Writer
    {
        private final byte[] bytes;
        private int cursor;

        /**
         * @brief Allocate the exact registered maximum output capacity.
         * @param maximum Nonnegative finite canonical byte capacity.
         * @details This instance owns its storage; negative capacity is invalid.
         */
        public Writer(int maximum)
        {
            if(maximum < 0)
            {
                throw new IllegalArgumentException("Negative canonical capacity");
            }
            bytes = new byte[maximum];
        }

        /** @brief Observe active output size. @return Current byte count without ownership transfer. */
        public int position()
        {
            return cursor;
        }

        /**
         * @brief Reserve an output extent before writing any of its bytes.
         * @param length Exact required count.
         * @return First byte offset; overflow throws IllegalArgumentException.
         */
        private int take(int length)
        {
            if(length < 0 || length > bytes.length - cursor)
            {
                throw new IllegalArgumentException("Canonical output exceeds aggregate bound");
            }
            int start = cursor;
            cursor += length;
            return start;
        }

        /** @brief Write a canonical boolean. @param value Borrowed scalar. @return No value. */
        public void bool(boolean value)
        {
            u8(value ? 1 : 0);
        }

        /** @brief Write a u8. @param value Scalar in 0..255. @return No value; range errors throw. */
        public void u8(int value)
        {
            if(value < 0 || value > 255)
            {
                throw new IllegalArgumentException("Invalid uint8");
            }
            bytes[take(1)] = (byte)value;
        }

        /** @brief Write an i8. @param value Exact signed byte. @return No value. */
        public void i8(byte value)
        {
            u8(value & 255);
        }

        /** @brief Write a u16. @param value Scalar in 0..65535. @return No value; range errors throw. */
        public void u16(int value)
        {
            if(value < 0 || value > 65535)
            {
                throw new IllegalArgumentException("Invalid uint16");
            }
            int start = take(2);
            bytes[start] = (byte)value;
            bytes[start + 1] = (byte)(value >>> 8);
        }

        /** @brief Write an i16. @param value Exact signed scalar. @return No value. */
        public void i16(short value)
        {
            u16(value & 65535);
        }

        /** @brief Write an i32. @param value Exact scalar bits. @return No value. */
        public void i32(int value)
        {
            put32(bytes, take(4), value);
        }

        /** @brief Write a u32. @param value Scalar in 0..4294967295. @return No value; range errors throw. */
        public void u32(long value)
        {
            if(value < 0 || value > 0xffffffffL)
            {
                throw new IllegalArgumentException("Invalid uint32");
            }
            i32((int)value);
        }

        /** @brief Write full 64-bit scalar bits. @param value Exact i64/u64 bits. @return No value. */
        public void i64(long value)
        {
            put64(bytes, take(8), value);
        }

        /** @brief Write binary32 bits. @param value Field-policy-validated scalar. @return No value. */
        public void f32(float value)
        {
            i32(Float.floatToRawIntBits(value));
        }

        /** @brief Write binary64 bits. @param value Field-policy-validated scalar. @return No value. */
        public void f64(double value)
        {
            i64(Double.doubleToRawLongBits(value));
        }

        /**
         * @brief Write strict bounded Unicode text, including an empty value.
         * @param value Borrowed Unicode scalar text.
         * @param maximum Exact schema UTF-8 byte bound.
         * @return No value; malformed text or excessive length throws.
         */
        public void string(String value, int maximum)
        {
            raw(encodeText(value), maximum);
        }

        /**
         * @brief Write a bounded raw-byte string without Unicode reinterpretation.
         * @param value Borrowed complete raw bytes.
         * @param maximum Exact byte bound.
         * @return No value; null or excessive input throws before body copying.
         */
        public void raw(byte[] value, int maximum)
        {
            if(value == null || value.length > maximum)
            {
                throw new IllegalArgumentException("Invalid bounded bytes");
            }
            u32(value.length);
            System.arraycopy(value, 0, bytes, take(value.length), value.length);
        }

        /** @brief Commit complete output. @return Newly owned active canonical byte prefix. */
        public byte[] finish()
        {
            return Arrays.copyOf(bytes, cursor);
        }
    }
}
