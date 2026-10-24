/**
 * @file CatalogWire.cs
 * @brief Apply registered record bounds through the maintained public RosWasm codec.
 * @details This layer supplies field-width and per-field bounds needed by
 * generated vendor records. All primitive I/O delegates to Uwvm.RosWasm.Codecs.
 * It defines no native binding, capability owner, interpreter or ROS operation.
 */
using System;
using Uwvm.RosWasm;

namespace Uwvm.RosWasm.Catalog
{
    /** @brief Adapt complete generated record encoders to the public typed Node API. */
    public sealed class RecordCodec<T> : ICodec<T>
    {
        private readonly Func<T, byte[]> encode;
        private readonly Func<byte[], T> decode;

        /** @param encoder Complete owned-wire encoder. @param decoder Transactional full-record decoder. */
        public RecordCodec(Func<T, byte[]> encoder, Func<byte[], T> decoder)
        {
            encode = encoder ?? throw new ArgumentNullException(nameof(encoder));
            decode = decoder ?? throw new ArgumentNullException(nameof(decoder));
        }

        /** @return Newly owned complete bounded wire bytes. */
        public byte[] Encode(T value) => encode(value);

        /** @return Newly owned complete decoded value; malformed input throws. */
        public T Decode(byte[] value) => decode(value);
    }

    /** @brief Preserve the original registered primitive widths without a second wire implementation. */
    public static class CatalogWire
    {
        /** @brief Borrow one immutable whole record and own its public-codec cursor. */
        public sealed class Reader
        {
            private readonly Codecs.Reader reader;
            private readonly int length;

            /** @param bytes Complete canonical bytes, without unused capacity. */
            public Reader(byte[] bytes)
            {
                reader = new Codecs.Reader(bytes);
                length = bytes.Length;
            }

            /** @return Current byte offset, including nested records. */
            public int Position => length - reader.Remaining;

            private ulong Integer(int width)
            {
                try
                {
                    return reader.Unsigned(width);
                }
                catch (FormatException error)
                {
                    throw new ArgumentException("Truncated record integer", error);
                }
            }

            /** @return Exact one-byte unsigned scalar. */
            public byte U8() => (byte)Integer(1);
            /** @return Exact two-byte unsigned scalar. */
            public ushort U16() => (ushort)Integer(2);
            /** @return Exact four-byte unsigned scalar. */
            public uint U32() => (uint)Integer(4);
            /** @return Exact eight-byte unsigned scalar. */
            public ulong U64() => Integer(8);
            /** @return Original signed one-byte bit pattern. */
            public sbyte I8() => unchecked((sbyte)U8());
            /** @return Original signed two-byte bit pattern. */
            public short I16() => unchecked((short)U16());
            /** @return Original signed four-byte bit pattern. */
            public int I32() => unchecked((int)U32());
            /** @return Original signed eight-byte bit pattern. */
            public long I64() => unchecked((long)U64());
            /** @return Original binary32 bits; the generated field enforces its semantic policy. */
            public float F32() => BitConverter.Int32BitsToSingle(I32());
            /** @return Original binary64 bits; the generated field enforces its semantic policy. */
            public double F64() => BitConverter.Int64BitsToDouble(I64());

            /** @return Canonical boolean; any byte other than zero or one throws. */
            public bool Bool()
            {
                byte value = U8();
                if (value > 1)
                {
                    throw new ArgumentException("Noncanonical record boolean");
                }
                return value != 0;
            }

            /** @param maximum Registered element or UTF-8 byte bound. @return Admitted count before allocation. */
            public int Count(int maximum)
            {
                uint value = U32();
                if (maximum < 0 || value > (uint)maximum)
                {
                    throw new ArgumentException("Record count exceeds its bound");
                }
                return (int)value;
            }

            /** @param maximum Registered UTF-8 byte bound. @return Complete strict Unicode text. */
            public string String(int maximum)
            {
                int count = Count(maximum);
                try
                {
                    return Codecs.Text(reader.Take(count));
                }
                catch (FormatException error)
                {
                    throw new ArgumentException("Truncated record text", error);
                }
            }

            /** @brief Require the exact top-level extent before publishing a value. */
            public void Finish()
            {
                try
                {
                    reader.End();
                }
                catch (FormatException error)
                {
                    throw new ArgumentException("Trailing record bytes", error);
                }
            }
        }

        /** @brief Own a finite record writer backed by the public canonical writer. */
        public sealed class Writer
        {
            private readonly Codecs.Writer writer;
            private int position;

            /** @param maximum Registered aggregate wire-byte capacity. */
            public Writer(int maximum)
            {
                writer = new Codecs.Writer(maximum);
            }

            /** @return Active byte count, excluding unused capacity. */
            public int Position => position;

            private void Integer(ulong value, int width)
            {
                writer.Unsigned(value, width);
                position += width;
            }

            /** @param value Exact one-byte unsigned scalar. */
            public void U8(byte value) => Integer(value, 1);
            /** @param value Exact two-byte unsigned scalar. */
            public void U16(ushort value) => Integer(value, 2);
            /** @param value Exact four-byte unsigned scalar. */
            public void U32(uint value) => Integer(value, 4);
            /** @param value Exact eight-byte unsigned scalar. */
            public void U64(ulong value) => Integer(value, 8);
            /** @param value Original signed one-byte bit pattern. */
            public void I8(sbyte value) => U8(unchecked((byte)value));
            /** @param value Original signed two-byte bit pattern. */
            public void I16(short value) => U16(unchecked((ushort)value));
            /** @param value Original signed four-byte bit pattern. */
            public void I32(int value) => U32(unchecked((uint)value));
            /** @param value Original signed eight-byte bit pattern. */
            public void I64(long value) => U64(unchecked((ulong)value));
            /** @param value Original binary32 bits after generated field validation. */
            public void F32(float value) => I32(BitConverter.SingleToInt32Bits(value));
            /** @param value Original binary64 bits after generated field validation. */
            public void F64(double value) => I64(BitConverter.DoubleToInt64Bits(value));
            /** @param value Canonical boolean. */
            public void Bool(bool value) => U8(value ? (byte)1 : (byte)0);

            /** @param value Borrowed Unicode scalar text. @param maximum Registered UTF-8 byte bound. */
            public void String(string value, int maximum)
            {
                byte[] bytes = Codecs.Utf8(value);
                if (maximum < 0 || bytes.Length > maximum)
                {
                    throw new ArgumentException("Record text exceeds its bound");
                }
                writer.Unsigned((ulong)bytes.Length, 4).Raw(bytes);
                position += 4 + bytes.Length;
            }

            /** @return Newly owned complete active bytes. */
            public byte[] Finish() => writer.Finish();
        }
    }
}
